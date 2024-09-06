program ClassOperators;

uses
  Vcl.Forms,
  Views.ClassOperators in 'src\Views.ClassOperators.pas' {FrmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
