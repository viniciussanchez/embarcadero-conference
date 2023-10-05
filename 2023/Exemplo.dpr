program Exemplo;

uses
  Vcl.Forms,
  Embarcadero.Conference.Main in 'src\Embarcadero.Conference.Main.pas' {Form1},
  Embarcadero.Conference.Connection.DBExpress in 'src\connection\Embarcadero.Conference.Connection.DBExpress.pas',
  Embarcadero.Conference.Connection.FireDAC in 'src\connection\Embarcadero.Conference.Connection.FireDAC.pas',
  Embarcadero.Conference.Connection.Intf in 'src\connection\Embarcadero.Conference.Connection.Intf.pas',
  Embarcadero.Conference.Connection in 'src\connection\Embarcadero.Conference.Connection.pas',
  Embarcadero.Conference.Query in 'src\query\Embarcadero.Conference.Query.pas',
  Embarcadero.Conference.Query.Intf in 'src\query\Embarcadero.Conference.Query.Intf.pas',
  Embarcadero.Conference.Query.FireDAC in 'src\query\Embarcadero.Conference.Query.FireDAC.pas',
  Embarcadero.Conference.Query.DBExpress in 'src\query\Embarcadero.Conference.Query.DBExpress.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
