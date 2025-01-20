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
  ShellApi,
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
  ADODB,
  Buttons,
  ComCtrls,
  ToolWin,
  Menus;

type
  Tfrm_licenca = class(TForm)
    pnlTotal: TPanel;
    pnl_tit_geral: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    grd: TwwDBGrid;
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
    grd_condicionante: TwwDBGrid;
    cmb_responsavel: TwwDBComboBox;
    dse_condicionante: TUniQuery;
    ToolBar2: TToolBar;
    btn_confirmar: TToolButton;
    btn_editar: TToolButton;
    btn_salvar: TToolButton;
    tra: TUniTransaction;
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
    Panel6: TPanel;
    btn_ok: TSpeedButton;
    Panel7: TPanel;
    btnCancelar: TSpeedButton;
    btn_nova: TToolButton;
    ToolButton2: TToolButton;
    dse_condicionanteid: TIntegerField;
    dse_condicionanteid_licenca: TIntegerField;
    dse_condicionantenumero: TStringField;
    dse_condicionantedescricao: TMemoField;
    dse_condicionantecumprida: TStringField;
    dse_condicionantedt_venc: TDateField;
    dse_condicionantedt_cumprimento: TDateField;
    dse_condicionantedt_aviso: TDateField;
    dse_condicionanteid_responsavel: TIntegerField;
    dse_condicionanteid_executor: TIntegerField;
    dse_condicionanteprotocolo: TStringField;
    dse_condicionanteid_categoria: TIntegerField;
    dse_condicionantecategoria: TStringField;
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
    dse_licencaprocesso: TStringField;
    btn_excluir: TToolButton;
    dse_condicionanteprazo: TIntegerField;
    btn_prot_cond: TToolButton;
    dse_condicionanteImg_protocolo: TBooleanField;
    dse_condicionantesolic_prazo: TDateField;
    btn_prazo: TToolButton;
    dse_licencarenovada: TStringField;
    dse_condicionantesolic_desconsid: TDateField;
    btn_solic_descosid: TToolButton;
    dse_licencaprazo: TIntegerField;
    dse_licencadt_solic: TDateField;
    pop_abrir: TPopupMenu;
    pop_carregar: TPopupMenu;
    mnu_load_licenca: TMenuItem;
    mnu_open_licen: TMenuItem;
    mnu_open_solic: TMenuItem;
    toolbar: TToolBar;
    btn_recarregar: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    mnu_load_solic: TMenuItem;
    btn_subst: TToolButton;
    dse_condicionantesolic_subst: TDateField;
    pop_solic_prazo: TPopupMenu;
    mnu_sol_prazo_informar: TMenuItem;
    VerPDF1: TMenuItem;
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
    procedure btnCancelarClick(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure dse_condicionanteCalcFields(DataSet: TDataSet);
    procedure btn_novaClick(Sender: TObject);
    procedure grd_condicionanteDblClick(Sender: TObject);
    procedure dse_condicionanteAfterScroll(DataSet: TDataSet);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_prot_condClick(Sender: TObject);
    procedure mnu_load_licencaClick(Sender: TObject);
    procedure mnu_open_licenClick(Sender: TObject);
    procedure btn_solic_descosidClick(Sender: TObject);
    procedure mnu_load_solicClick(Sender: TObject);
    procedure mnu_open_solicClick(Sender: TObject);
    procedure btn_substClick(Sender: TObject);
    procedure mnu_sol_prazo_informarClick(Sender: TObject);
    procedure VerPDF1Click(Sender: TObject);
    procedure pop_solic_prazoPopup(Sender: TObject);
    procedure qry_clienteAfterScroll(DataSet: TDataSet);
  protected
  private
    FPasta: string;
    pst_cliente: string;
    procedure open_aux_queries;
    procedure inf_sol_prazo;
    procedure cumprir_condicionante;
    procedure cancelar_cumprimento;
    procedure inf_sol_desconsid;
    procedure inf_subst;
    procedure MenuItemClick(Sender: TObject);
    { Private declarations }
  public
    procedure open_dataset(id_cliente: integer; id_atividade: integer);
  end;

var
  frm_licenca: Tfrm_licenca;

implementation

uses unt_procedures, unt_dtm_dados, unt_dtm_images, unt_cumprir_cond,
  unt_condicionante, unt_functions, unt_mensagem, unt_func_messages,
  unt_dtm_geral, unt_solicitar_prazo, unt_solicitar_desconsideracao,
  unt_solicitar_subst;

{$R *.dfm}

procedure Tfrm_licenca.btnCancelarClick(Sender: TObject);
begin
  try

  finally
    if tra.Active then
      tra.Rollback;
    close;
  end;
end;

procedure Tfrm_licenca.btn_editarClick(Sender: TObject);
var
  id: integer;
begin
  id := dse_condicionante.RecNo;
  frm_condicionante.id_condicionante := dse_condicionanteId.AsInteger;
  frm_condicionante.id_licenca := dse_condicionanteId_licenca.AsInteger;
  frm_condicionante.id_categoria := dse_condicionanteId_categoria.AsInteger;
  frm_condicionante.cumprida := dse_condicionanteCumprida.AsString;
  frm_condicionante.dt_cump := dse_condicionanteDt_cumprimento.AsDateTime;
  frm_condicionante.spn_prazo.Text := dse_condicionanteprazo.Text;

  frm_condicionante.edt_numero.Text := dse_condicionanteNumero.Text;
  frm_condicionante.dtp_aviso.Date := dse_condicionanteDt_aviso.AsDateTime;
  frm_condicionante.dtp_venc.Date := dse_condicionanteDt_venc.AsDateTime;
  frm_condicionante.cmb_responsavel.Value := dse_condicionanteId_responsavel.AsString;
  frm_condicionante.mmo_descricao.Lines.Text := dse_condicionanteDescricao.AsString;
  frm_condicionante.modo := mdEdit;

  frm_condicionante.ShowModal;
  dse_condicionante.Refresh;
  dse_condicionante.RecNo := id;
end;

procedure Tfrm_licenca.btn_excluirClick(Sender: TObject);
begin
  if msg_quest('Confirma exclusão de condicionante?') then
    dse_condicionante.Delete;
end;

procedure Tfrm_licenca.mnu_open_licenClick(Sender: TObject);
var
  pst_cliente: string;
begin
  pst_cliente := get_customer_folder(dse_licencaId_cliente.AsInteger);
  abrir_arquivo(pst_cliente + '\' + dse_licencaId.AsString + '\Lic_' + dse_licencaId.AsString + '.pdf');
end;

procedure Tfrm_licenca.mnu_open_solicClick(Sender: TObject);
var
  pst_cliente: string;
begin
  pst_cliente := get_customer_folder(dse_licencaId_cliente.AsInteger);
  abrir_arquivo(pst_cliente + '\' + dse_licencaId.AsString + '\Solic_' + dse_licencaId.AsString + '.pdf');
end;

procedure Tfrm_licenca.btn_confirmarClick(Sender: TObject);
begin
  if btn_confirmar.ImageIndex = 7 then
    cumprir_condicionante
  else
    cancelar_cumprimento;
end;

procedure Tfrm_licenca.cancelar_cumprimento;
var
  id: integer;
begin
  if msg_quest('Confirma Cancelamento de Cumprimento?') then
  begin
    id := dse_condicionante.RecNo;
    exec_sql(
      'update condicionante                                                       '#13+
      'set dt_cumprimento = null,                                                 '#13+
      '    cumprida = ''N''                                                       '#13+
      'where id = ' + dse_condicionanteId.AsString);
    dse_condicionante.Refresh;
    dse_condicionante.RecNo := id;
  end;
end;

procedure Tfrm_licenca.cumprir_condicionante;
var
  id: integer;
begin
  if msg_quest('Confirma cumprimento de condicionante?') then
  begin
    id := dse_condicionante.RecNo;

    frm_cumprir_cond.edt_protocolo.Clear;
    frm_cumprir_cond.dtp_data.Date := date;
    frm_cumprir_cond.id_cliente := dse_licencaId_cliente.AsInteger;
    frm_cumprir_cond.id_licenca := dse_licencaId.AsInteger;
    frm_cumprir_cond.id_condicionante := dse_condicionanteId.AsInteger;
    carrega_combo_categoria(frm_cumprir_cond.cmb_categoria);
    frm_cumprir_cond.id_categoria := dse_condicionanteid_categoria.AsInteger;
    frm_cumprir_cond.cmb_categoria.Value := dse_condicionanteid_categoria.AsString;
    frm_cumprir_cond.dt_venc := dse_condicionanteDt_venc.AsDateTime;
    frm_cumprir_cond.num_cond := dse_condicionanteNumero.Text;
    frm_cumprir_cond.prazo := dse_condicionantePrazo.AsInteger;
    frm_cumprir_cond.id_responsavel := dse_condicionanteId_responsavel.AsInteger;
    frm_cumprir_cond.cumprida := dse_condicionanteCumprida.AsString;
    frm_cumprir_cond.descricao := dse_condicionanteDescricao.AsString;
    frm_cumprir_cond.ShowModal;
    dse_condicionante.Refresh;
    dse_condicionante.RecNo := id;
  end;
end;

procedure Tfrm_licenca.btn_novaClick(Sender: TObject);
begin
  frm_condicionante.auto := true;
  frm_condicionante.id_condicionante := 0;
  frm_condicionante.id_licenca := dse_licencaId.AsInteger;
  frm_condicionante.edt_numero.Clear;
  frm_condicionante.dtp_aviso.Clear;
  frm_condicionante.dtp_venc.Clear;
  frm_condicionante.cmb_responsavel.Clear;
  frm_condicionante.cmb_categoria.Clear;
  frm_condicionante.mmo_descricao.Lines.Clear;
  frm_condicionante.modo := mdInsert;
  frm_condicionante.ShowModal;
  dse_condicionante.Refresh;
  dse_condicionante.Last;
end;

procedure Tfrm_licenca.btn_okClick(Sender: TObject);
begin

  try
    if dse_licenca.State in [dsEdit, dsInsert] then
      dse_licenca.Post;
    if dse_condicionante.State in [dsEdit, dsInsert] then
      dse_condicionante.Post;
  finally
    if tra.Active then
      tra.commit;
    close;
  end;

end;

procedure Tfrm_licenca.inf_sol_prazo;
var
  id: integer;
begin
  if msg_quest('Deseja informar Solicitação de Prazo?') then
  begin
    id := dse_condicionante.RecNo;

    frm_solicitar_prazo.dtp_data.Date := date;
    frm_solicitar_prazo.id_cliente := dse_licencaId_cliente.AsInteger;
    frm_solicitar_prazo.id_licenca := dse_licencaId.AsInteger;
    frm_solicitar_prazo.id_condicionante := dse_condicionanteId.AsInteger;
    frm_solicitar_prazo.num_cond := dse_condicionanteNumero.Text;
    frm_solicitar_prazo.ShowModal;
    dse_condicionante.Refresh;
    dse_condicionante.RecNo := id;
  end;
end;

procedure Tfrm_licenca.inf_sol_desconsid;
var
  id: integer;
begin
  if msg_quest('Deseja informar Solicitação de Desconsideração?') then
  begin
    id := dse_condicionante.RecNo;

    frm_solicitar_desconsideracao.dtp_data.Date := date;
    frm_solicitar_desconsideracao.id_cliente := dse_licencaId_cliente.AsInteger;
    frm_solicitar_desconsideracao.id_licenca := dse_licencaId.AsInteger;
    frm_solicitar_desconsideracao.id_condicionante := dse_condicionanteId.AsInteger;
    frm_solicitar_desconsideracao.num_cond := dse_condicionanteNumero.Text;
    frm_solicitar_desconsideracao.ShowModal;
    dse_condicionante.Refresh;
    dse_condicionante.RecNo := id;
  end;
end;

procedure Tfrm_licenca.inf_subst;
var
  id: integer;
begin
  if msg_quest('Deseja informar Substituição?') then
  begin
    id := dse_condicionante.RecNo;

    frm_solicitar_subst.dtp_data.Date := date;
    frm_solicitar_subst.id_cliente := dse_licencaId_cliente.AsInteger;
    frm_solicitar_subst.id_licenca := dse_licencaId.AsInteger;
    frm_solicitar_subst.id_condicionante := dse_condicionanteId.AsInteger;
    frm_solicitar_subst.num_cond := dse_condicionanteNumero.Text;
    frm_solicitar_subst.ShowModal;
    dse_condicionante.Refresh;
    dse_condicionante.RecNo := id;
  end;
end;

procedure Tfrm_licenca.btn_prot_condClick(Sender: TObject);
begin
  if trim(dse_condicionanteProtocolo.AsString) = '' then
    msg_info('Sem protocolo cadastrado')
  else
    abrir_arquivo(dse_condicionanteProtocolo.Text);
end;

procedure Tfrm_licenca.mnu_load_licencaClick(Sender: TObject);
var
  pst_cliente: string;
  pst_licenca: string;
  arq: string;
  arq_lic: string;
  msg: string;

  procedure carregar;
  begin
    pst_cliente := get_customer_folder(dse_licencaId_cliente.AsInteger);

    if not DirectoryExists(pst_cliente) then
      CreateDir(pst_cliente);

    pst_licenca := pst_cliente + '\' + intToStr(dse_licencaId.AsInteger);

    if not DirectoryExists(pst_licenca) then
      CreateDir(pst_licenca);

    dm_geral.open_dialog.filter := 'Portable Document File|*.pdf' ;
    if dm_geral.open_dialog.execute then
    begin
      arq := dm_geral.open_dialog.filename;
      arq_lic := pst_licenca + '\' + 'Lic_' + intToStr(dse_licencaId.AsInteger)  + '.pdf';

      msg_info('Origem: ' + arq +#13+'Destino: ' + arq_lic);

      try
        CopyFile(
          pchar(arq),
          pchar(arq_lic),
          false)
      except
        on e:exception do msg_error(e.message);
      end;
    end;

  end;

begin
  try

    arq := get_customer_folder(dse_licencaId_cliente.AsInteger) + '\' + dse_licencaId.AsString + '\Lic_' + dse_licencaId.AsString + '.pdf';

    if FileExists(pchar(arq)) then
    begin

      msg := 'Deseja substituir o arquivo da licença que já existe?';

      if msg_quest(msg) then
        carregar
      else
        mnu_open_licen.Click;
    end
    else
      carregar;

  except
    on e:exception do msg_error(e.message);
  end;

end;

procedure Tfrm_licenca.mnu_load_solicClick(Sender: TObject);
var
  pst_cliente: string;
  pst_licenca: string;
  arq: string;
  arq_lic: string;
  msg: string;

  procedure carregar;
  begin
    pst_cliente := get_customer_folder(dse_licencaId_cliente.AsInteger);

    if not DirectoryExists(pst_cliente) then
      CreateDir(pst_cliente);

    pst_licenca := pst_cliente + '\' + intToStr(dse_licencaId.AsInteger);

    if not DirectoryExists(pst_licenca) then
      CreateDir(pst_licenca);

    dm_geral.open_dialog.filter := 'Portable Document File|*.pdf' ;
    if dm_geral.open_dialog.execute then
    begin
      arq := dm_geral.open_dialog.filename;
      arq_lic := pst_licenca + '\' + 'Solic_' + intToStr(dse_licencaId.AsInteger)  + '.pdf';

      msg_info('Origem: ' + arq +#13+'Destino: ' + arq_lic);

      try
        CopyFile(
          pchar(arq),
          pchar(arq_lic),
          false)
      except
        on e:exception do msg_error(e.message);
      end;
    end;

  end;

begin
  try

    arq := get_customer_folder(dse_licencaId_cliente.AsInteger) + '\' + dse_licencaId.AsString + '\Solic_' + dse_licencaId.AsString + '.pdf';

    if FileExists(pchar(arq)) then
    begin

      msg := 'Deseja substituir o arquivo da Solicitação que já existe?';

      if msg_quest(msg) then
        carregar
      else
        mnu_open_licen.Click;
    end
    else
      carregar;

  except
    on e:exception do msg_error(e.message);
  end;

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

procedure Tfrm_licenca.btn_salvarClick(Sender: TObject);
begin
  try
    if tra.Active then
      tra.CommitRetaining;
    msg_info('Dados salvos!');
  finally

  end;
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
  try
    dse_condicionante.CommitUpdates;
  finally

  end;
end;

procedure Tfrm_licenca.dse_condicionanteAfterScroll(DataSet: TDataSet);
begin

  btn_prot_cond.Enabled := trim(dse_condicionanteProtocolo.AsString)<> '';

  if dse_condicionanteCumprida.AsString = 'S' then
  begin
    btn_confirmar.Hint := 'Cancelar Cumprimento de Condicionante';
    btn_confirmar.ImageIndex := 20;
  end
  else
  begin
    btn_confirmar.Hint := 'Cumprir Condicionante';
    btn_confirmar.ImageIndex := 7;
  end;
end;

procedure Tfrm_licenca.dse_condicionanteBeforeOpen(DataSet: TDataSet);
begin

  if dse_licenca.active then
  begin

    if dse_licenca.FieldByName('id').Text = '' then
      dse_condicionante.SQL.Text :=
        'select *                                                   '#13+
        'from condicionante                                         '#13+
        'where id_licenca is null                                   '
    else
      dse_condicionante.SQL.Text :=
        'select *                                                   '#13+
        'from condicionante                                         '#13+
        'where id_licenca = ' + dse_licenca.FieldByName('id').Text  +#13+
        'order by numero';
  end;
end;

procedure Tfrm_licenca.dse_condicionanteBeforePost(DataSet: TDataSet);
begin
  dse_condicionante.FieldByName('id_licenca').AsInteger := dse_licenca.FieldByName('id').AsInteger;
end;

procedure Tfrm_licenca.dse_condicionanteCalcFields(DataSet: TDataSet);
begin
  dse_condicionanteCategoria.AsString := nome_categoria(dse_condicionanteid_categoria.AsInteger);
  dse_condicionanteImg_protocolo.AsBoolean := dse_condicionanteprotocolo.AsString <> '';
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

procedure Tfrm_licenca.grd_condicionanteDblClick(Sender: TObject);
begin
  btn_editar.Click;
end;

procedure Tfrm_licenca.grd_condicionanteEnter(Sender: TObject);
begin
  if dse_licenca.State in [dsEdit, dsInsert] then
    dse_licenca.Post;
end;

procedure Tfrm_licenca.mnu_sol_prazo_informarClick(Sender: TObject);
begin
  inf_sol_prazo;
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

procedure Tfrm_licenca.MenuItemClick(Sender: TObject);
var
  MenuItem: TMenuItem;
  NomeArquivo: string;
begin
  MenuItem := Sender as TMenuItem;
  NomeArquivo := IncludeTrailingPathDelimiter(FPasta) + MenuItem.Caption;
  ShellExecute(Application.Handle, 'open', PChar(NomeArquivo), nil, nil, SW_SHOWNORMAL);
end;

procedure Tfrm_licenca.pop_solic_prazoPopup(Sender: TObject);
var
  ListaArquivos: TStringList;
  NovoMenuItem: TMenuItem;
  I: Integer;

begin

  // Define o caminho da pasta onde estão os PDFs
  FPasta := pst_cliente + '\' + dse_licenca.FieldByName('id').AsString + '\';

  // Limpa o menu popup antes de adicionar novos itens
  Pop_solic_prazo.Items.Clear;

  // Adiciona o item fixo no início do menu
  NovoMenuItem := TMenuItem.Create(Pop_solic_prazo);
  NovoMenuItem.Caption := 'Informar Prazo';
  NovoMenuItem.OnClick := mnu_sol_prazo_informarClick;
  Pop_solic_prazo.Items.Add(NovoMenuItem);

  // Obtém a lista de arquivos PDF
  ListaArquivos := ListarArquivosPDF(FPasta, 'Prazo_' + dse_condicionanteNumero.AsString);
  
  try
    for i := 0 to ListaArquivos.Count - 1 do
    begin
      // Cria um novo item de menu para cada arquivo encontrado
      NovoMenuItem := TMenuItem.Create(Pop_solic_prazo);
      NovoMenuItem.Caption := ListaArquivos[i];
      NovoMenuItem.Tag := i; // Armazena o índice do arquivo na propriedade Tag

      // Associa o evento de clique
      NovoMenuItem.OnClick := MenuItemClick;

      // Adiciona o novo item ao menu popup
      Pop_solic_prazo.Items.Add(NovoMenuItem);
    end;
  finally
    ListaArquivos.Free;
  end;
end;

procedure Tfrm_licenca.qry_clienteAfterScroll(DataSet: TDataSet);
begin
  pst_cliente := get_customer_folder(qry_cliente.FieldByName('id').AsInteger);
end;

procedure Tfrm_licenca.VerPDF1Click(Sender: TObject);
begin
  abrir_arquivo(get_customer_folder_lic(
    dse_licencaId_cliente.AsInteger,
    dse_licencaid.AsInteger));
end;

procedure Tfrm_licenca.btn_solic_descosidClick(Sender: TObject);
var
  arq: string;
begin

  arq := get_customer_folder_lic(
    dse_licencaId_cliente.AsInteger,
    dse_licencaid.AsInteger) +
    'Desconsid_' + dse_condicionanteNumero.AsString + '.pdf';

  if FileExists(arq) then
    abrir_arquivo(arq)
  else
    inf_sol_desconsid;

end;

procedure Tfrm_licenca.btn_substClick(Sender: TObject);
var
  arq: string;
begin

  arq := get_customer_folder_lic(
    dse_licencaId_cliente.AsInteger,
    dse_licencaid.AsInteger) +
    'Subst_' + dse_condicionanteNumero.AsString + '.pdf';

  if FileExists(arq) then
    abrir_arquivo(arq)
  else
    inf_subst;
end;

end.
