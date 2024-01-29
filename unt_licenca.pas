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
  ADODB, Buttons, ComCtrls, ToolWin;

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
    Panel1: TPanel;
    pnl_tit_detalhe: TPanel;
    dts_licenca: TDataSource;
    dts_cliente: TDataSource;
    dts_condicionante: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    mmo_desc_condicionante: TDBMemo;
    qry_cliente: TUniQuery;
    dse_licenca: TUniQuery;
    qry_tipo: TUniQuery;
    qry_orgao: TUniQuery;
    qry_municipio: TUniQuery;
    Panel6: TPanel;
    btn_ok: TSpeedButton;
    grd_condicionante: TwwDBGrid;
    cmb_responsavel: TwwDBComboBox;
    dse_condicionante: TUniQuery;
    btn_recarregar: TSpeedButton;
    ToolBar2: TToolBar;
    btnProcurarMTR: TToolButton;
    btnEditarMTR: TToolButton;
    procedure dse_licencaNewRecord(DataSet: TDataSet);
    procedure dse_condicionanteNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure pnl_tit_geralMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_okClick(Sender: TObject);
    procedure dse_condicionanteBeforeOpen(DataSet: TDataSet);
    procedure btn_recarregarClick(Sender: TObject);
    procedure dse_licencaAfterScroll(DataSet: TDataSet);
    procedure grd_condicionanteEnter(Sender: TObject);
    procedure dse_condicionanteBeforePost(DataSet: TDataSet);
    procedure dse_condicionanteAfterPost(DataSet: TDataSet);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    procedure open_aux_queries;
    { Private declarations }
  public
    procedure open_dataset(id_cliente: integer; id_atividade: integer);
  end;

var
  frm_licenca: Tfrm_licenca;

implementation

uses unt_procedures, unt_dtm_dados, unt_dtm_images;

{$R *.dfm}

procedure Tfrm_licenca.btn_okClick(Sender: TObject);
begin
  if dse_licenca.State in [dsEdit, dsInsert] then
    dse_licenca.Post;
  if dse_condicionante.State in [dsEdit, dsInsert] then
    dse_condicionante.Post;
  close;
end;

procedure Tfrm_licenca.btn_recarregarClick(Sender: TObject);
var
  id_pessoa: integer;
  id_atividade: integer;
begin
  id_pessoa := qry_cliente.FieldByName('id').AsInteger;
  id_atividade := qry_cliente.FieldByName('id_atividade').AsInteger;

  dse_condicionante.Close;
  dse_licenca.Close;
  qry_cliente.Close;

  open_dataset(id_pessoa, id_atividade);
end;

procedure Tfrm_licenca.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := WS_BORDER;
  BorderStyle := bsNone;
  BorderWidth := 0;
end;

procedure Tfrm_licenca.dse_licencaAfterScroll(DataSet: TDataSet);
begin
  dse_condicionante.Close;
  dse_condicionante.Open;
end;

procedure Tfrm_licenca.dse_licencaNewRecord(DataSet: TDataSet);
begin
  dse_licenca.FieldByName('id_cliente').Value := qry_cliente.FieldByName('id').Value;
  dse_licenca.FieldByName('id_atividade').Value := qry_cliente.FieldByName('id_atividade').Value
end;

procedure Tfrm_licenca.dse_condicionanteAfterPost(DataSet: TDataSet);
begin
  dse_condicionante.CommitUpdates;
end;

procedure Tfrm_licenca.dse_condicionanteBeforeOpen(DataSet: TDataSet);
begin

  if dse_licenca.active then
  begin

    if dse_licenca.FieldByName('id').Text = '' then
      dse_condicionante.SQL.Text :=
        'select *                                                   '#13+
        'from condicionante                                         '#13+
        'where id_licenca is null'
    else
      dse_condicionante.SQL.Text :=
        'select *                                                   '#13+
        'from condicionante                                         '#13+
        'where id_licenca = ' + dse_licenca.FieldByName('id').Text;
  end;
end;

procedure Tfrm_licenca.dse_condicionanteBeforePost(DataSet: TDataSet);
begin
  dse_condicionante.FieldByName('id_licenca').AsInteger := dse_licenca.FieldByName('id').AsInteger;
end;

procedure Tfrm_licenca.dse_condicionanteNewRecord(DataSet: TDataSet);
begin
  dse_condicionante.FieldByName('id_licenca').AsInteger := dse_licenca.FieldByName('id').AsInteger;
  dse_condicionante.FieldByName('cumprida').Text := 'N';
  dse_condicionante.FieldByName('id_executor').AsInteger := dtm_dados.id_usuario_logado;
  dse_condicionante.FieldByName('id_responsavel').AsInteger := 1;
end;

procedure Tfrm_licenca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_licenca.FormCreate(Sender: TObject);
begin
  centralizar_tela(self);
  open_aux_queries;
end;

procedure Tfrm_licenca.grd_condicionanteEnter(Sender: TObject);
begin
  if dse_licenca.State in [dsEdit, dsInsert] then
    dse_licenca.Post;
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

procedure Tfrm_licenca.pnl_tit_geralMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

end.
