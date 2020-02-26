unit unt_municipio;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  DB,
  Grids,
  ExtCtrls,
  ComCtrls,
  ToolWin,
  StdCtrls,
  Mask,
  wwdbigrd,
  wwdbgrid,
  wwdotdot,
  wwdbcomb,
  wwdbedit,
  wwdblook,
  unt_cad_abstrato_mestre_detalhe, MemDS, DBAccess, Uni;

type
  Tfrm_municipio = class(Tfrm_cad_abstrato_mestre_detalhe)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_id: TwwDBEdit;
    edt_ibge: TwwDBEdit;
    edt_municipio: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    qry_uf: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure dse_detalheNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_municipio: Tfrm_municipio;

implementation

{$R *.dfm}

procedure Tfrm_municipio.dse_detalheNewRecord(DataSet: TDataSet);
begin
  dse_detalhe.FieldByName('id_municipio').AsInteger := dse.FieldByName(key_field).AsInteger;
end;

procedure Tfrm_municipio.FormCreate(Sender: TObject);
begin
  table_name := 'municipio';
  key_field := 'id';
  inherited;
  qry_uf.Open;
end;

end.
