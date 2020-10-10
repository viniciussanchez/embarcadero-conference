program samples;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.Jhonson,
  Horse.Compression,
  System.JSON;

{$R *.res}

var
  App: THorse;

begin
  App := THorse.Create(9000);

  //App.Use(Compression(1024)); // Must come before Jhonson middleware
  App.Use(Jhonson);

  App.Get('ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      LPong: TJSONArray;
    begin
      LPong := TJSONArray.Create;
      for var I := 0 to 1000 do
        LPong.Add(TJSONObject.Create(TJSONPair.Create('ping', 'pong')));
      Res.Send(LPong);
    end);

  App.Start;
end.
