program samples;

{$APPTYPE CONSOLE}

uses
  Horse;

{$R *.res}

var
  App: THorse;

begin
  App := THorse.Create(9000);

  App.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  App.Start;
end.
