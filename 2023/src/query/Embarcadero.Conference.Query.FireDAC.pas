unit Embarcadero.Conference.Query.FireDAC;

interface

uses Embarcadero.Conference.Query.Intf, FireDAC.Stan.Param, FireDAC.Comp.Client, Data.DB;

type
  TQueryFireDAC = class(TInterfacedObject, IQuery)
  private
    FQuery: TFDQuery;
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

function TQueryFireDAC.AddParamByName(const AParamName, AParamValue: string): IQuery;
begin
  FQuery.ParamByName(AParamName).AsString := AParamValue;
  Result := Self;
end;

function TQueryFireDAC.AddParamByName(const AParamName: string; const AParamValue: Integer): IQuery;
begin
  FQuery.ParamByName(AParamName).AsInteger := AParamValue;
  Result := Self;
end;

function TQueryFireDAC.AddParamByName(const AParamName: string; const AParamValue: Boolean): IQuery;
begin
  FQuery.ParamByName(AParamName).AsBoolean := AParamValue;
  Result := Self;
end;

function TQueryFireDAC.AddSQL(const ACommand: string): IQuery;
begin
  FQuery.SQL.Add(ACommand);
  Result := Self;
end;

function TQueryFireDAC.Bof: Boolean;
begin
  Result := FQuery.Bof;
end;

function TQueryFireDAC.Close: IQuery;
begin
  FQuery.Close;
  Result := Self;
end;

constructor TQueryFireDAC.Create;
begin
  FQuery := TFDQuery.Create(nil);
end;

destructor TQueryFireDAC.Destroy;
begin
  FQuery.Free;
  inherited;
end;

function TQueryFireDAC.Eof: Boolean;
begin
  Result := FQuery.Eof;
end;

function TQueryFireDAC.FieldAsBoolean(const AFieldName: string): Boolean;
begin
  Result := FQuery.FieldByName(AFieldName).AsBoolean;
end;

function TQueryFireDAC.FieldAsInteger(const AFieldName: string): Integer;
begin
  Result := FQuery.FieldByName(AFieldName).AsInteger;
end;

function TQueryFireDAC.FieldAsString(const AFieldName: string): string;
begin
  Result := FQuery.FieldByName(AFieldName).AsString;
end;

function TQueryFireDAC.First: IQuery;
begin
  FQuery.First;
  Result := Self;
end;

function TQueryFireDAC.IsEmpty: Boolean;
begin
  Result := FQuery.IsEmpty;
end;

function TQueryFireDAC.Last: IQuery;
begin
  FQuery.Last;
  Result := Self;
end;

class function TQueryFireDAC.New: IQuery;
begin
  Result := TQueryFireDAC.Create;
end;

function TQueryFireDAC.Next: IQuery;
begin
  FQuery.Next;
  Result := Self;
end;

function TQueryFireDAC.Open: IQuery;
begin
  FQuery.Open();
  Result := Self;
end;

function TQueryFireDAC.Prior: IQuery;
begin
  FQuery.Prior;
  Result := Self;
end;

function TQueryFireDAC.RecNo: Integer;
begin
  Result := FQuery.RecNo;
end;

function TQueryFireDAC.RecordCount: Integer;
begin
  Result := FQuery.RecordCount;
end;

end.
