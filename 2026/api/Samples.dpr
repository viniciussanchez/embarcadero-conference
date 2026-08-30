program Samples;

{$APPTYPE CONSOLE}
{$R *.res}

uses Horse, System.SysUtils;

begin
  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send(Format('Pong! Quem respondeu foi: %s', [GetEnvironmentVariable('HOSTNAME')]));
    end);

  THorse.Listen(9000,
    procedure
    begin
      Writeln(Format('Servidor rodando na porta %d... (host: %s)',
        [THorse.Port, GetEnvironmentVariable('HOSTNAME')]));
    end);
end.
