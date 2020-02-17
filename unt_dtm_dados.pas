unit unt_dtm_dados;

interface

uses
  SysUtils,
  Classes,
  DB,
  DBAccess,
  Controls,
  ADODB,
  DBClient,
  Provider, UniProvider, MySQLUniProvider;

type
  Tdtm_dados = class(TDataModule)
    con_mysql: TADOConnection;
    qry_usuario: TADOQuery;
    dsp_usuario: TDataSetProvider;
    cds_usuario: TClientDataSet;
    MySQLUniProvider1: TMySQLUniProvider;
    procedure con_mysqlBeforeConnect(Sender: TObject);
    procedure con_mysqlAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtm_dados: Tdtm_dados;

implementation

uses unt_principal;

{$R *.dfm}

procedure Tdtm_dados.con_mysqlAfterConnect(Sender: TObject);
begin
  frm_principal.Caption := con_mysql.ConnectionString;
end;

procedure Tdtm_dados.con_mysqlBeforeConnect(Sender: TObject);
var
  con: TStringList;
begin
  con := TStringList.Create;
  con.LoadFromFile('config.dat');
  con_mysql.ConnectionString := con.Text;
  con.Free;
end;

end.
