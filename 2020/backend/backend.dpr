program backend;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  Horse,
  Horse.Logger,
  Horse.Jhonson,
  Horse.HandleException,
  Horse.CORS,
  System.SysUtils,
  Controllers.Product in 'src\controllers\Controllers.Product.pas',
  Providers.Connection in 'src\providers\Providers.Connection.pas' {ProviderConnection: TDataModule},
  Services.Product in 'src\services\Services.Product.pas' {ServiceProduct: TDataModule};

begin
  THorse
    .Use(Jhonson)
    .Use(HandleException)
    .Use(THorseLogger.New())
    .Use(CORS);

  Controllers.Product.Registry;

  THorse.Listen(9000);
end.
