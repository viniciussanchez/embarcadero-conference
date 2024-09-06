program JsonAttributes;

uses
  Vcl.Forms,
  Views.JsonAttributes in 'src\Views.JsonAttributes.pas' {FrmMain},
  Models.Pessoa in 'src\Models.Pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
