unit Views.BreakPoint;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  LSoma: Integer;
begin
  LSoma := 0;

  for var I := 1 to 10 do
  begin
    LSoma := LSoma + I;
  end;

  ShowMessage('A soma dos números de 1 a 10 é: ' + LSoma.ToString);
end;

end.
