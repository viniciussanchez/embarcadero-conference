unit Embarcadero.Conference.Connection.FireDAC;

interface

uses Embarcadero.Conference.Connection.Intf, FireDAC.Comp.Client, Data.DB;

type
  TConnectionFireDAC = class(TInterfacedObject, IConnection)
  private
    FConnection: TFDConnection;
    function StartTransaction: IConnection;
    function Commit: IConnection;
    function Rollback: IConnection;
    function InTransaction: Boolean;
    function GetConnection: TCustomConnection;
    constructor Create;
  public
    class function New: IConnection;
    destructor Destroy; override;
  end;

implementation

function TConnectionFireDAC.Commit: IConnection;
begin
  FConnection.Commit;
  Result := Self;
end;

constructor TConnectionFireDAC.Create;
begin
  FConnection := TFDConnection.Create(nil);
  FConnection.LoginPrompt := False;
end;

destructor TConnectionFireDAC.Destroy;
begin
  FConnection.Free;
  inherited;
end;

function TConnectionFireDAC.GetConnection: TCustomConnection;
begin
  Result := FConnection;
end;

function TConnectionFireDAC.InTransaction: Boolean;
begin
  Result := FConnection.InTransaction;
end;

class function TConnectionFireDAC.New: IConnection;
begin
  Result := TConnectionFireDAC.Create;
end;

function TConnectionFireDAC.Rollback: IConnection;
begin
  FConnection.Rollback;
  Result := Self;
end;

function TConnectionFireDAC.StartTransaction: IConnection;
begin
  FConnection.StartTransaction;
  Result := Self;
end;

end.
