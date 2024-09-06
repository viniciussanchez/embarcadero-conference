program HistoryManager;

uses
  Vcl.Forms,
  Views.HistoryManager in 'Views.HistoryManager.pas' {FrmHistoryManager};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmHistoryManager, FrmHistoryManager);
  Application.Run;
end.
