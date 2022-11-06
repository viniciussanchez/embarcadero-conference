program GrafanaLoki;

uses
  Vcl.Forms,
  Grafana.Loki.Request in 'src\Grafana.Loki.Request.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
