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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtm_dados: Tdtm_dados;

implementation

{$R *.dfm}

end.
