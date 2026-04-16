@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_JEWEL
  provider contract transactional_query
  as projection on ZI_Jewel
{
    key ItemUuid,
    ItemId,
    Description,
    Category,
    MetalType,
    Purity,
    
    @Semantics.quantity.unitOfMeasure: 'WeightUnit'
    Weight,
    WeightUnit,
    
    @Semantics.amount.currencyCode: 'CurrencyCode'
    AcquisitionPrice,
    CurrencyCode,
    
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt
}
