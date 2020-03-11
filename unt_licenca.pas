unit unt_licenca;

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
  wwdblook,
  StdCtrls,
  DBCtrls,
  Grids,
  Wwdbigrd,
  Wwdbgrid,
  Mask,
  wwdbedit,
  ExtCtrls,
  Wwdotdot,
  Wwdbcomb,
  MemDS,
  DBAccess,
  Uni,
  ADODB;

type
  Tfrm_licenca = class(TForm)
    pnlTotal: TPanel;
    pnl_tit_geral: TPanel;
    pnl_geral: TPanel;
    Label1: TLabel;
    lbl_cnpj_cpf: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    edt_id: TwwDBEdit;
    edt_cnpj_cpf: TwwDBEdit;
    edt_nome: TwwDBEdit;
    edt_fantasia: TwwDBEdit;
    edt_atividade: TwwDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    grd: TwwDBGrid;
    pnl_desc_licenca: TPanel;
    pnl_tit_desc_licenca: TPanel;
    mmo_desc_licenca: TDBMemo;
    cmb_tipo: TwwDBLookupCombo;
    cmb_orgao: TwwDBLookupCombo;
    cmb_municipio: TwwDBLookupCombo;
    edt_assinou: TwwDBEdit;
    Panel1: TPanel;
    pnl_tit_detalhe: TPanel;
    grd_detalhe: TwwDBGrid;
    dts_licenca: TDataSource;
    dts_cliente: TDataSource;
    dts_condicionante: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    mmo_desc_condicionante: TDBMemo;
    cmb_responsavel: TwwDBComboBox;
    cmb_executor: TwwDBComboBox;
    qry_cliente: TUniQuery;
    dse_licenca: TUniQuery;
    dse_condicionante: TUniQuery;
    qry_tipo: TUniQuery;
    qry_orgao: TUniQuery;
    qry_municipio: TUniQuery;
    dse_licencaid: TIntegerField;
    dse_licencaid_tipo_licenca: TIntegerField;
    dse_licencaid_atividade: TIntegerField;
    dse_licencaid_orgao: TIntegerField;
    dse_licencanumero: TStringField;
    dse_licencadt_ini: TDateField;
    dse_licencadt_venc: TDateField;
    dse_licencaassinatura: TStringField;
    dse_licencaid_cliente: TIntegerField;
    dse_licencaid_municipio: TIntegerField;
    dse_licencadescricao: TMemoField;
    dse_condicionanteid: TIntegerField;
    dse_condicionanteid_licenca: TIntegerField;
    dse_condicionanteid_pessoa_executor: TIntegerField;
    dse_condicionanteid_pressoa_responsavel: TIntegerField;
    dse_condicionantedescricao: TMemoField;
    dse_condicionantecumprida: TStringField;
    dse_condicionantedt_venc: TDateField;
    dse_condicionantedt_cumprimento: TDateField;
    dse_condicionantedt_aviso: TDateField;
    procedure dse_licencaNewRecord(DataSet: TDataSet);
    procedure dse_condicionanteNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    procedure open_aux_queries;
    { Private declarations }
  public
    procedure open_dataset(id_cliente: integer; id_atividade: integer);
  end;

var
  frm_licenca: Tfrm_licenca;

implementation

uses unt_procedures, unt_dtm_dados;

{$R *.dfm}

procedure Tfrm_licenca.dse_licencaNewRecord(DataSet: TDataSet);
begin
  dse_licenca.FieldByName('id_cliente').Value := qry_cliente.FieldByName('id').Value;
  dse_licenca.FieldByName('id_atividade').Value := qry_cliente.FieldByName('id_atividade').Value
end;

procedure Tfrm_licenca.dse_condicionanteNewRecord(DataSet: TDataSet);
begin
  dse_condicionanteid_licenca.AsInteger := dse_licencaid.AsInteger;
  dse_condicionantecumprida.Text := 'N';
end;

procedure Tfrm_licenca.FormCreate(Sender: TObject);
begin
  centralizar_tela(self);
  open_aux_queries;
  carrega_combo_usuarios(cmb_responsavel);
  carrega_combo_usuarios(cmb_executor);
end;

procedure Tfrm_licenca.open_aux_queries;
begin
  qry_orgao.Open;
  qry_tipo.Open;
  qry_municipio.Open;
end;

procedure Tfrm_licenca.open_dataset(id_cliente: integer; id_atividade: integer);
begin
  qry_cliente.Close;
  qry_cliente.SQL.Text :=
    'select                                       '#13+
    '    p.id,                                    '#13+
    '    p.cnpj,                                  '#13+
    '    p.cpf,                                   '#13+
    '    p.nome,                                  '#13+
    '    p.fantasia,                              '#13+
    '    a.nome as atividade,                     '#13+
    '    a.id as id_atividade                     '#13+
    'from pessoa p                                '#13+
    '    left join cliente_atividade ca           '#13+
    '        on ca.id_cliente = p.id              '#13+
    '    left join atividade a                    '#13+
    '        on a.id = ca.id_atividade            '#13+
    'where p.id = ' + intToStr(id_cliente)        +#13+
    '    and a.id = ' + intToStr(id_atividade);

  qry_cliente.Open;

  dse_licenca.Close;
  dse_licenca.SQL.Text :=
    'select *                                           '#13+
    'from licenca                                       '#13+
    'where id_cliente = ' + intToStr(id_cliente)        +#13+
    '    and id_atividade = ' + intToStr(id_atividade);
  dse_licenca.Open;


  dse_condicionante.Open;
end;

end.
