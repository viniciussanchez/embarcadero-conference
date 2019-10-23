program samples;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.BasicAuthentication,
  System.SysUtils;

{$R *.res}

var
  App: THorse;

begin
  App := THorse.Create(9000);

  App.Use(HorseBasicAuthentication(
    function(const AUsername, APassword: string): Boolean
    begin
      Result := AUsername.Equals('vinicius') and APassword.Equals('123');
    end));

  App.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  App.Start;
end.
