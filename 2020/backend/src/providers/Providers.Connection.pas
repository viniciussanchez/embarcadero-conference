unit Providers.Connection;

interface

uses System.SysUtils, System.Classes;

type
  TProviderConnection = class(TDataModule)
  end;

var
  ProviderConnection: TProviderConnection;

implementation

{$R *.dfm}

end.
