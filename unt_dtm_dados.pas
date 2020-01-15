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
  Provider;

type
  Tdtm_dados = class(TDataModule)
    con_mysql: TADOConnection;
    qry_usuario: TADOQuery;
    dsp_usuario: TDataSetProvider;
    cds_usuario: TClientDataSet;
    procedure con_mysqlBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtm_dados: Tdtm_dados;

implementation

{$R *.dfm}

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
