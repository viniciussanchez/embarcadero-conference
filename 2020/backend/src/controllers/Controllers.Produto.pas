unit Controllers.Produto;

interface

uses Horse, Services.Produto;

procedure Registry;

implementation

procedure DoListProducts(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceProduto;
begin
  LService := TServiceProduto.Create;
  try

  finally
    LService.Free;
  end;
end;

procedure DoGetProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceProduto;
begin
  LService := TServiceProduto.Create;
  try

  finally
    LService.Free;
  end;
end;

procedure DoPostProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceProduto;
begin
  LService := TServiceProduto.Create;
  try

  finally
    LService.Free;
  end;
end;

procedure DoPutProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceProduto;
begin
  LService := TServiceProduto.Create;
  try

  finally
    LService.Free;
  end;
end;

procedure DoDeleteProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LService: TServiceProduto;
begin
  LService := TServiceProduto.Create;
  try

  finally
    LService.Free;
  end;
end;

procedure Registry;
begin
  THorse.Get('/produtos', DoListProducts);
  THorse.Get('/produtos/:id', DoGetProduct);
  THorse.Post('/produtos', DoPostProduct);
  THorse.Put('/produtos/:id', DoPutProduct);
  THorse.Delete('/produtos/:id', DoDeleteProduct);
end;

end.
