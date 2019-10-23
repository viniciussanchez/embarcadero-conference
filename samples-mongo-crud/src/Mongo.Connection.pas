unit Mongo.Connection;

interface

uses
  Ugar;

var
  DB: TUgarDatabase;

implementation

initialization
  DB := TUgar.Init('mongo', 27017, 'EC2019');

end.
