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
    qry_bairro: TUniQuery;
    dts_uf: TDataSource;
    qry_uf: TUniQuery;
    dts_municipio: TDataSource;
    dts_bairro: TDataSource;
    qry_municipio: TUniQuery;
    procedure con_mysqlBeforeConnect(Sender: TObject);
    procedure con_mysqlAfterConnect(Sender: TObject);
    procedure mysql_connBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    id_usuario_logado: integer;
    nome_usuario_logado: string;
    email_usuario_logado: string;

    procedure open_query_usuario(login, senha: string);
  end;

var
  dtm_dados: Tdtm_dados;

implementation

uses unt_principal;

{$R *.dfm}

procedure Tdtm_dados.open_query_usuario(
  login: string;
  senha: string);
begin
  qry_usuario.Close;
  qry_usuario.SQL.Text :=
    'select *                             '#13+
    'from usuario                         '#13+
    'where login = ' + quotedStr(login)   +#13+
    '    and senha = ' + quotedStr(senha);
  qry_usuario.Open;
end;

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

procedure Tdtm_dados.mysql_connBeforeConnect(Sender: TObject);
var
  conn: TStringList;
begin
  conn := TStringList.Create;
  conn.LoadFromFile('config.dat');
  mysql_conn.ConnectString := conn.Text;
  conn.Free;
end;

end.
