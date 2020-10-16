unit Controllers.Product;

interface

uses Horse, Services.Product, DataSet.Serialize, System.JSON, System.SysUtils, Data.DB;

procedure Registry;

implementation

procedure DoListProducts(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceProduct;
begin
  LService := TServiceProduct.Create;
  try
    Res.Send<TJSONArray>(LService.ListAll.ToJSONArray());
  finally
    LService.Free;
  end;
end;

procedure DoGetProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LId: Int64;
  LService: TServiceProduct;
begin
  LService := TServiceProduct.Create;
  try
    LId := Req.Params['id'].ToInt64;
    if LService.GetById(LId).IsEmpty then
      raise EHorseException.Create(THTTPStatus.NotFound, 'Not found');
    Res.Send<TJSONObject>(LService.qryProducts.ToJSONObject());
  finally
    LService.Free;
  end;
end;

procedure DoPostProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceProduct;
begin
  LService := TServiceProduct.Create;
  try
    Res.Send<TJSONObject>(LService.Insert(Req.Body<TJSONObject>).ToJSONObject()).Status(THTTPStatus.Created);
  finally
    LService.Free;
  end;
end;

procedure DoPutProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LId: Int64;
  LService: TServiceProduct;
begin
  LService := TServiceProduct.Create;
  try
    LId := Req.Params['id'].ToInt64;
    if LService.GetById(LId).IsEmpty then
      raise EHorseException.Create(THTTPStatus.NotFound, 'Not found');
    Res.Send<TJSONObject>(LService.Update(Req.Body<TJSONObject>).ToJSONObject());
  finally
    LService.Free;
  end;
end;

procedure DoDeleteProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LId: Int64;
  LService: TServiceProduct;
begin
  LService := TServiceProduct.Create;
  try
    LId := Req.Params['id'].ToInt64;
    if LService.GetById(LId).IsEmpty then
      raise EHorseException.Create(THTTPStatus.NotFound, 'Not found');
    if LService.Delete(LId) then
      Res.Status(THTTPStatus.NoContent);
  finally
    LService.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/products', DoListProducts);
  THorse.Get('/products/:id', DoGetProduct);
  THorse.Post('/products', DoPostProduct);
  THorse.Put('/products/:id', DoPutProduct);
  THorse.Delete('/products/:id', DoDeleteProduct);
end;

end.
