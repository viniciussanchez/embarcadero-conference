unit Embarcadero.Conference.Query.DBExpress;

interface

uses Embarcadero.Conference.Query.Intf, Data.SqlExpr, Data.DB;

type
  TQueryDBExpress = class(TInterfacedObject, IQuery)
  private
    FQuery: TSQLQuery;
    function Open: IQuery;
    function Close: IQuery;
    function Next: IQuery;
    function Prior: IQuery;
    function First: IQuery;
    function Last: IQuery;
    function Eof: Boolean;
    function Bof: Boolean;
    function RecordCount: Integer;
    function RecNo: Integer;
    function IsEmpty: Boolean;
    function AddSQL(const ACommand: string): IQuery;
    function AddParamByName(const AParamName, AParamValue: string): IQuery; overload;
    function AddParamByName(const AParamName: string; const AParamValue: Integer): IQuery; overload;
    function AddParamByName(const AParamName: string; const AParamValue: Boolean): IQuery; overload;
    function FieldAsString(const AFieldName: string): string;
    function FieldAsInteger(const AFieldName: string): Integer;
    function FieldAsBoolean(const AFieldName: string): Boolean;
    constructor Create;
  public
    class function New: IQuery;
    destructor Destroy; override;
  end;

implementation

function TQueryDBExpress.AddParamByName(const AParamName, AParamValue: string): IQuery;
begin
  FQuery.ParamByName(AParamName).AsString := AParamValue;
  Result := Self;
end;

function TQueryDBExpress.AddParamByName(const AParamName: string; const AParamValue: Integer): IQuery;
begin
  FQuery.ParamByName(AParamName).AsInteger := AParamValue;
  Result := Self;
end;

function TQueryDBExpress.AddParamByName(const AParamName: string; const AParamValue: Boolean): IQuery;
begin
  FQuery.ParamByName(AParamName).AsBoolean := AParamValue;
  Result := Self;
end;

function TQueryDBExpress.AddSQL(const ACommand: string): IQuery;
begin
  FQuery.SQL.Add(ACommand);
  Result := Self;
end;

function TQueryDBExpress.Bof: Boolean;
begin
  Result := FQuery.Bof;
end;

function TQueryDBExpress.Close: IQuery;
begin
  FQuery.Close;
  Result := Self;
end;

constructor TQueryDBExpress.Create;
begin
  FQuery := TSQLQuery.Create(nil);
end;

destructor TQueryDBExpress.Destroy;
begin
  FQuery.Free;
  inherited;
end;

function TQueryDBExpress.Eof: Boolean;
begin
  Result := FQuery.Eof;
end;

function TQueryDBExpress.FieldAsBoolean(const AFieldName: string): Boolean;
begin
  Result := FQuery.FieldByName(AFieldName).AsBoolean;
end;

function TQueryDBExpress.FieldAsInteger(const AFieldName: string): Integer;
begin
  Result := FQuery.FieldByName(AFieldName).AsInteger;
end;

function TQueryDBExpress.FieldAsString(const AFieldName: string): string;
begin
  Result := FQuery.FieldByName(AFieldName).AsString;
end;

function TQueryDBExpress.First: IQuery;
begin
  FQuery.First;
  Result := Self;
end;

function TQueryDBExpress.IsEmpty: Boolean;
begin
  Result := FQuery.IsEmpty;
end;

function TQueryDBExpress.Last: IQuery;
begin
  FQuery.Last;
  Result := Self;
end;

class function TQueryDBExpress.New: IQuery;
begin
  Result := TQueryDBExpress.Create;
end;

function TQueryDBExpress.Next: IQuery;
begin
  FQuery.Next;
  Result := Self;
end;

function TQueryDBExpress.Open: IQuery;
begin
  FQuery.Open;
  Result := Self;
end;

function TQueryDBExpress.Prior: IQuery;
begin
  FQuery.Prior;
  Result := Self;
end;

function TQueryDBExpress.RecNo: Integer;
begin
  Result := FQuery.RecNo;
end;

function TQueryDBExpress.RecordCount: Integer;
begin
  Result := FQuery.RecordCount;
end;

end.
