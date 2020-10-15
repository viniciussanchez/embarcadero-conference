unit Providers.Connection;

interface

uses System.SysUtils, System.Classes;

type
  TProviderConnection = class(TDataModule)
  public
    constructor Create; reintroduce;
  end;

var
  ProviderConnection: TProviderConnection;

implementation

{$R *.dfm}

constructor TProviderConnection.Create;
begin
  inherited Create(nil);
end;

end.
