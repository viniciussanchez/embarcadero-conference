program Samples;

{$APPTYPE CONSOLE}
{$R *.res}

uses Horse, System.SysUtils;

begin
  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send(Format('Pong: %s', [GetEnvironmentVariable('PONG')]));
    end);

  THorse.Listen(9000);
end.
