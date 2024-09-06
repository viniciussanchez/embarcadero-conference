program XmlDocumentation;

uses
  Vcl.Forms,
  Views.XmlDocumentation in 'src\Views.XmlDocumentation.pas' {FrmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
