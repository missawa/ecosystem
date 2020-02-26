unit unt_dtm_dados;

interface

uses
  SysUtils,
  Classes,
  DB,
  DBAccess,
  Controls,
  Provider,
  UniProvider,
  MySQLUniProvider,
  Uni,
  MemDS, ODBCUniProvider;

type
  Tdtm_dados = class(TDataModule)
    mysql_provider: TMySQLUniProvider;
    qry_usuario: TUniQuery;
    mysql_conn: TUniConnection;
    ODBCUniProvider1: TODBCUniProvider;
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
  frm_principal.Caption := mysql_conn.ConnectString;
end;

procedure Tdtm_dados.con_mysqlBeforeConnect(Sender: TObject);
var
  con: TStringList;
begin
  con := TStringList.Create;
  con.LoadFromFile('config.dat');
  mysql_conn.ConnectString := con.Text;
  con.Free;
end;

end.
