unit Services.Product;

interface

uses System.SysUtils, System.Classes, Providers.Connection, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.PG, System.JSON;
type
  TServiceProduct = class(TProviderConnection)
    qryProducts: TFDQuery;
    qryProductsid: TLargeintField;
    qryProductsname: TWideStringField;
    qryProductsprice: TBCDField;
  public
    function ListAll: TFDQuery;
    function GetById(const AId: Int64): TFDQuery;
    function Insert(const AProduct: TJSONObject): TFDQuery;
    function Update(const AProduct: TJSONObject): TFDQuery;
    function Delete(const AId: Int64): Boolean;
  end;

implementation

{$R *.dfm}

uses DataSet.Serialize;

function TServiceProduct.Delete(const AId: Int64): Boolean;
begin
  qryProducts.Delete;
  Result := qryProducts.IsEmpty;
end;

function TServiceProduct.GetById(const AId: Int64): TFDQuery;
begin
  Result := qryProducts;
  qryProducts.SQL.Add('where id = :id');
  qryProducts.ParamByName('id').AsLargeInt := AId;
  qryProducts.Open();
end;

function TServiceProduct.Insert(const AProduct: TJSONObject): TFDQuery;
begin
  Result := qryProducts;
  qryProducts.SQL.Add('where 1 <> 1');
  qryProducts.Open();
  qryProducts.LoadFromJSON(AProduct, False);
end;

function TServiceProduct.ListAll: TFDQuery;
begin
  Result := qryProducts;
  qryProducts.Open();
end;

function TServiceProduct.Update(const AProduct: TJSONObject): TFDQuery;
begin
  Result := qryProducts;
  qryProducts.MergeFromJSONObject(AProduct, False);
end;

end.
