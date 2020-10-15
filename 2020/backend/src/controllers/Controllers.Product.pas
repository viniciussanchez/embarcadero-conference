unit Controllers.Product;

interface

uses Horse, Services.Product, DataSet.Serialize;

procedure Registry;

implementation

procedure DoListProducts(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceProduct;
begin
  LService := TServiceProduct.Create;
  try

  finally
    LService.Free;
  end;
end;

procedure DoGetProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceProduct;
begin
  LService := TServiceProduct.Create;
  try

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

  finally
    LService.Free;
  end;
end;

procedure DoPutProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceProduct;
begin
  LService := TServiceProduct.Create;
  try

  finally
    LService.Free;
  end;
end;

procedure DoDeleteProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceProduct;
begin
  LService := TServiceProduct.Create;
  try

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
