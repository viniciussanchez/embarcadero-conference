unit Embarcadero.Conference.Connection.DBExpress;

interface

uses Embarcadero.Conference.Connection.Intf, Data.SqlExpr, Data.DB, Data.DBXCommon;

type
  TConnectionDBExpress = class(TInterfacedObject, IConnection)
  private
    FConnection: TSQLConnection;
    FTransaction: TDBXTransaction;
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

function TConnectionDBExpress.Commit: IConnection;
begin
  FConnection.CommitFreeAndNil(FTransaction);
  Result := Self;
end;

constructor TConnectionDBExpress.Create;
begin
  FConnection := TSQLConnection.Create(nil);
  FConnection.LoginPrompt := False;
end;

destructor TConnectionDBExpress.Destroy;
begin
  FConnection.Free;
  inherited;
end;

function TConnectionDBExpress.GetConnection: TCustomConnection;
begin
  Result := FConnection;
end;

function TConnectionDBExpress.InTransaction: Boolean;
begin
  Result := FConnection.InTransaction;
end;

class function TConnectionDBExpress.New: IConnection;
begin
  Result := TConnectionDBExpress.Create;
end;

function TConnectionDBExpress.Rollback: IConnection;
begin
  FConnection.RollbackFreeAndNil(FTransaction);
  Result := Self;
end;

function TConnectionDBExpress.StartTransaction: IConnection;
begin
  FTransaction := FConnection.BeginTransaction;
  Result := Self;
end;

end.
