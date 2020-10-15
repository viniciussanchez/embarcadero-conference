inherited ServiceProduct: TServiceProduct
  OldCreateOrder = True
  Height = 274
  Width = 209
  inherited FDConnection: TFDConnection
    Connected = True
  end
  object qryProducts: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select id, name, price from product')
    Left = 88
    Top = 184
    object qryProductsid: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryProductsname: TWideStringField
      FieldName = 'name'
      Origin = 'name'
      Size = 60
    end
    object qryProductsprice: TBCDField
      FieldName = 'price'
      Origin = 'price'
      Precision = 16
    end
  end
end
