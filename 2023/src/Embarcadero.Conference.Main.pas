unit Embarcadero.Conference.Main;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Data.DB, Datasnap.Provider, Datasnap.DBClient,
  Data.SqlExpr, Data.Win.ADODB, Embarcadero.Conference.Connection, Embarcadero.Conference.Query, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ADOQuery1: TADOQuery;
    ADOTable1: TADOTable;
    ADODataSet1: TADODataSet;
    ADOConnection1: TADOConnection;
    SQLConnection1: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    SQLQuery1: TSQLQuery;
    SQLTable1: TSQLTable;
    ClientDataSet1: TClientDataSet;
    DataSetProvider1: TDataSetProvider;
    DataSource1: TDataSource;
    FDConnection1: TFDConnection;
    FDMemTable1: TFDMemTable;
    FDQuery1: TFDQuery;
    FDTable1: TFDTable;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
  private
    function GetConnection: IConnection;
    function GetQuery: IQuery;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.GetConnection: IConnection;
begin
  Result := TConnection.New;
end;

function TForm1.GetQuery: IQuery;
begin
  Result := TQuery.New;
end;

end.
