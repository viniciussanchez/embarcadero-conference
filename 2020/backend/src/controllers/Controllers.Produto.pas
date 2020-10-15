unit Controllers.Produto;

interface

uses Horse;

procedure Registry;

implementation

procedure DoListProducts(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure DoGetProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure DoPostProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure DoPutProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

procedure DoDeleteProduct(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

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
