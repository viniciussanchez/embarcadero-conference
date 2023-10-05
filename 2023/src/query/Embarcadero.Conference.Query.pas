unit Embarcadero.Conference.Query;

interface

uses
{$IF DEFINED(EC_FIREDAC)}
  Embarcadero.Conference.Query.FireDAC,
{$ELSEIF DEFINED(EC_DBEXPRESS)}
  Embarcadero.Conference.Query.DBExpress,
{$ENDIF}
  Embarcadero.Conference.Query.Intf;

type
  IQuery = Embarcadero.Conference.Query.Intf.IQuery;

  TQuery = class
  public
    class function New: IQuery;
  end;

implementation

class function TQuery.New: IQuery;
begin
{$IF DEFINED(EC_FIREDAC)}
  Result := TQueryFireDAC.New;
{$ELSEIF DEFINED(EC_DBEXPRESS)}
  Result := TQueryDBExpress.New;
{$ENDIF}
end;

end.
