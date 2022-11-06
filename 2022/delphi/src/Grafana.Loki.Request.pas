unit Grafana.Loki.Request;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Data.Bind.Components, Data.Bind.ObjectScope, System.DateUtils, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lbEnderecoLoki: TLabel;
    lbNomeAplicacao: TLabel;
    lbTexto: TLabel;
    lbUsuario: TLabel;
    lbSenha: TLabel;
    detEnderecoLoki: TEdit;
    detNomeAplicacao: TEdit;
    mLog: TMemo;
    btnEnviar: TButton;
    detUsuario: TEdit;
    detSenha: TEdit;
    Image1: TImage;
    edtUnixEpochInNanoseconds: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure btnEnviarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    function GetUnixEpoch: string;
    function GetJsonLog: string;
    procedure SendLogToGrafanaLoki;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses RESTRequest4D;

procedure TfrmPrincipal.SendLogToGrafanaLoki;
begin
  TRequest.New
    .BaseURL(Trim(detEnderecoLoki.Text))
    .Resource('loki/api/v1/push')
    .BasicAuthentication(Trim(detUsuario.Text), Trim(detSenha.Text))
    .AcceptCharset('utf-8, *;q=0.8')
    .Accept('application/json, text/plain; q=0.9, text/html;q=0.8,')
    .AddBody(GetJsonLog)
    .ContentType('application/json')
    .Post;
end;

procedure TfrmPrincipal.btnEnviarClick(Sender: TObject);
begin
  SendLogToGrafanaLoki;
end;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  edtUnixEpochInNanoseconds.Text := GetUnixEpoch;
end;

function TfrmPrincipal.GetJsonLog: string;
begin
  Result :=
    '{' +
    '    "streams": [' +
    '        {' +
    '            "stream": {' +
    '                "client": "' + Trim(detNomeAplicacao.Text) + '"' +
    '            },' +
    '            "values": [' +
    '                [' +
    '                    "' + GetUnixEpoch + '",' +
    '                    "erro=\"' + Trim(mLog.Lines.Text) + '\""' +
    '                ]' +
    '            ]' +
    '        }' +
    '    ]' +
    '}';
end;

function TfrmPrincipal.GetUnixEpoch: string;
begin
  Result := IntToStr(DateTimeToUnix(Now, False)).PadRight(19, '0');
end;

end.
