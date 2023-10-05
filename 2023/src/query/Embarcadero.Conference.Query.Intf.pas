unit Embarcadero.Conference.Query.Intf;

interface

type
  IQuery = interface
    ['{44C5862E-CE96-4A58-88C1-F6092655B281}']
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
  end;

implementation

end.
