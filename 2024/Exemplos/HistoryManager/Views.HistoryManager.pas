unit Views.HistoryManager;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmHistoryManager = class(TForm)
    pnlContent: TPanel;
    Label1: TLabel;
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    procedure Somar;
    procedure Dividir;
    procedure Subtrair;
    procedure Multiplicar;
  public
    { Public declarations }
  end;

var
  FrmHistoryManager: TFrmHistoryManager;

implementation

{$R *.dfm}

{ TFrmHistoryManager }

procedure TFrmHistoryManager.Button1Click(Sender: TObject);
begin
  Self.Somar;
end;

procedure TFrmHistoryManager.Button2Click(Sender: TObject);
begin
  Self.Subtrair;
end;

procedure TFrmHistoryManager.Button3Click(Sender: TObject);
begin
  Self.Multiplicar;
end;

procedure TFrmHistoryManager.Button4Click(Sender: TObject);
begin
  Self.Dividir;
end;

procedure TFrmHistoryManager.Dividir;
begin
  var LValor := StrToInt(edtNumero1.Text) / StrToInt(edtNumero2.Text);
  ShowMessage(LValor.ToString);
end;

procedure TFrmHistoryManager.Multiplicar;
begin
  var LValor := StrToInt(edtNumero1.Text) * StrToInt(edtNumero2.Text);
  ShowMessage(LValor.ToString);
end;

procedure TFrmHistoryManager.Somar;
begin
  var LValor := StrToInt(edtNumero1.Text) + StrToInt(edtNumero2.Text);
  ShowMessage(LValor.ToString);
end;

procedure TFrmHistoryManager.Subtrair;
begin
  var LValor := StrToInt(edtNumero1.Text) - StrToInt(edtNumero2.Text);
  ShowMessage(LValor.ToString);
end;

end.
