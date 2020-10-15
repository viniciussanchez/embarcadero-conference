program crud;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.Logger,
  Horse.Jhonson,
  Horse.HandleException,
  Horse.CORS,
  System.SysUtils,
  Controllers.Produto in 'src\controllers\Controllers.Produto.pas',
  Providers.Connection in 'src\providers\Providers.Connection.pas' {ProviderConnection: TDataModule};

begin
  THorse
    .Use(Jhonson)
    .Use(HandleException)
    .Use(THorseLogger.New())
    .Use(CORS);

  Controllers.Produto.Registry;

  THorse.Listen(9000);
end.
