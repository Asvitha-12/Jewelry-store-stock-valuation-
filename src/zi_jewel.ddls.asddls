@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Jewel Store - Interface View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_Jewel
  as select from zjewel_st
{
  key item_uuid             as ItemUuid,
      item_id               as ItemId,
      description           as Description,
      category              as Category,
      metal_type            as MetalType,
      purity                as Purity,
      
      @Semantics.quantity.unitOfMeasure: 'WeightUnit'
      weight                as Weight,
      weight_unit           as WeightUnit,
      
      @Semantics.amount.currencyCode: 'CurrencyCode'
      acquisition_price     as AcquisitionPrice,
      currency_code         as CurrencyCode,
      
      /* Administrative Fields */
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt
}
