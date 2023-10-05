unit Embarcadero.Conference.Connection.Intf;

interface

uses Data.DB;

type
  IConnection = interface
    ['{A70A07F1-0AF3-46D7-BB19-94645EC35AF9}']
    function StartTransaction: IConnection;
    function Commit: IConnection;
    function Rollback: IConnection;
    function InTransaction: Boolean;
    function GetConnection: TCustomConnection;
  end;

implementation

end.
