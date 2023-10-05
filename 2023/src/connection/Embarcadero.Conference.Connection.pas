unit Embarcadero.Conference.Connection;

interface

uses
{$IF DEFINED(EC_FIREDAC)}
  Embarcadero.Conference.Connection.FireDAC,
{$ELSEIF DEFINED(EC_DBEXPRESS)}
  Embarcadero.Conference.Connection.DBExpress,
{$ENDIF}
  Embarcadero.Conference.Connection.Intf;

type
  IConnection = Embarcadero.Conference.Connection.Intf.IConnection;

  TConnection = class
  public
    class function New: IConnection;
  end;

implementation

class function TConnection.New: IConnection;
begin
{$IF DEFINED(EC_FIREDAC)}
  Result := TConnectionFireDAC.New;
{$ELSEIF DEFINED(EC_DBEXPRESS)}
  Result := TConnectionDBExpress.New;
{$ENDIF}
end;

end.
