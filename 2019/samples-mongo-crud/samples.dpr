program samples;

{$APPTYPE CONSOLE}

uses
  Horse,
  System.JSON,
  Horse.Jhonson,
  Mongo.Connection in 'src\Mongo.Connection.pas';

{$R *.res}

var
  App: THorse;

begin
  App := THorse.Create(9000);

  App.Use(Jhonson);

  App.Get('/users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send(DB('users').Find);
    end);

  App.Post('/users',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send(DB('users').InsertOne(Req.Body<TJSONObject>));
    end);

  App.Start;
end.
