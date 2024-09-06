program StrictPrivate;

uses
  Vcl.Forms,
  Views.StrictPrivate in 'Views.StrictPrivate.pas' {Form1},
  Model.StrictPrivate in 'Model.StrictPrivate.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
