program webhook;

{$APPTYPE CONSOLE}
{$R *.res}

uses Horse;

begin
  THorse.Post('/webhook/pix/banco-brasil',
    procedure(Req: THorseRequest; Res: THorseResponse)
    begin
      Writeln(Req.Body);
      Res.Status(THTTPStatus.NoContent);
    end);

  THorse.Listen(9000,
    procedure
    begin
      Writeln('Server is running on port 9000');
    end);
end.
