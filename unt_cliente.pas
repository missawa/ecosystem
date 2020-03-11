unit unt_cliente;

interface

uses
  ClipBrd,
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Grids,
  Controls,
  Forms,
  Dialogs,
  ComCtrls,
  DB,
  DBClient,
  ExtCtrls,
  Mask,
  StdCtrls,
  ToolWin,
  Wwdotdot,
  Wwdbcomb,
  wwdbedit,
  wwdblook,
  Wwdbigrd,
  Wwdbgrid,
  unt_cad_abstrato,
  wwriched,
  Provider,
  MemDS,
  DBAccess,
  Uni;

type
  Tfrm_cliente = class(TForm)
    pnl_endereco: TPanel;
    pnl_tit_endereco: TPanel;
    pnl_dados_endereco: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edt_complemento: TwwDBEdit;
    edt_cep: TwwDBEdit;
    edt_logradouro: TwwDBEdit;
    edt_numero: TwwDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    cmb_uf: TwwDBLookupCombo;
    cmb_municipio: TwwDBLookupCombo;
    cmb_bairro: TwwDBLookupCombo;
    dts_uf: TDataSource;
    dts_municipio: TDataSource;
    dts_bairro: TDataSource;
    dts_endereco: TDataSource;
    dts_tel: TDataSource;
    pnl_contato: TPanel;
    onl_telefone: TPanel;
    pnl_tit_telefone: TPanel;
    grd_tel: TwwDBGrid;
    cmb_tipo_tel: TwwDBComboBox;
    cmb_desc_tel: TwwDBComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    grd_email: TwwDBGrid;
    cmb_tipo_email: TwwDBComboBox;
    cmb_desc_email: TwwDBComboBox;
    dts_email: TDataSource;
    pnl_obs: TPanel;
    pnl_tit_obs: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    rce_obs: TwwDBRichEdit;
    toolbar: TToolBar;
    btn_novo: TToolButton;
    btn_editar: TToolButton;
    btn_excluir: TToolButton;
    btn_atualizar: TToolButton;
    sep_1: TToolButton;
    btn_salvar: TToolButton;
    btn_cancelar: TToolButton;
    sep_2: TToolButton;
    btn_localizar: TToolButton;
    btn_primeiro: TToolButton;
    btn_anterior: TToolButton;
    btn_proximo: TToolButton;
    btn_ultimo: TToolButton;
    sep_3: TToolButton;
    btn_fechar: TToolButton;
    pnlTitulo: TPanel;
    Panel3: TPanel;
    pnl_geral: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    lbl_cnpj_cpf: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_id: TwwDBEdit;
    edt_cnpj_cpf: TwwDBEdit;
    edt_nome: TwwDBEdit;
    cmb_tipo: TwwDBComboBox;
    edt_fantasia: TwwDBEdit;
    dts_cliente: TDataSource;
    btn_atividades: TToolButton;
    ToolButton2: TToolButton;
    qry: TUniQuery;
    dse_cliente: TUniQuery;
    dse_endereco: TUniQuery;
    qry_uf: TUniQuery;
    qry_municipio: TUniQuery;
    qry_bairro: TUniQuery;
    dse_tel: TUniQuery;
    dse_email: TUniQuery;
    dse_enderecoid: TIntegerField;
    dse_enderecoid_pessoa: TIntegerField;
    dse_enderecodescricao: TStringField;
    dse_enderecocep: TStringField;
    dse_enderecoid_uf: TIntegerField;
    dse_enderecoid_municipio: TIntegerField;
    dse_enderecoid_bairro: TIntegerField;
    dse_enderecologradouro: TStringField;
    dse_endereconumero: TIntegerField;
    dse_enderecocomplemento: TStringField;
    dse_clienteid: TIntegerField;
    dse_clientetipo: TStringField;
    dse_clientecpf: TStringField;
    dse_clientecnpj: TStringField;
    dse_clientenome: TStringField;
    dse_clientefantasia: TStringField;
    dse_clientecliente: TStringField;
    dse_clientefornecedor: TStringField;
    dse_clienteusuario: TStringField;
    dse_clienteobs: TMemoField;
    dse_telid: TIntegerField;
    dse_teltipo: TStringField;
    dse_telnumero: TStringField;
    dse_teltem_whatsapp: TStringField;
    dse_telid_pessoa: TIntegerField;
    dse_teldescricao: TStringField;
    dse_emailid: TIntegerField;
    dse_emailid_pessoa: TIntegerField;
    dse_emailtipo: TStringField;
    dse_emailendereco: TStringField;
    dse_emaildescricao: TStringField;
    procedure dse_enderecoNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure edt_fantasiaEnter(Sender: TObject);
    procedure dse_clienteAfterPost(DataSet: TDataSet);
    procedure edt_cnpj_cpfExit(Sender: TObject);
    procedure edt_cepExit(Sender: TObject);
    procedure qry_ufAfterScroll(DataSet: TDataSet);
    procedure qry_municipioAfterScroll(DataSet: TDataSet);
    procedure dse_clienteAfterScroll(DataSet: TDataSet);
    procedure dse_telNewRecord(DataSet: TDataSet);
    procedure dse_telAfterScroll(DataSet: TDataSet);
    procedure cmb_tipo_telCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure dtsStateChange(Sender: TObject);
    procedure dse_clienteAfterCancel(DataSet: TDataSet);
    procedure dse_clienteAfterClose(DataSet: TDataSet);
    procedure dse_clienteAfterOpen(DataSet: TDataSet);
    procedure btn_atividadesClick(Sender: TObject);
    procedure cmb_tipoCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure open_dataset(pk: integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_primeiroClick(Sender: TObject);
    procedure btn_proximoClick(Sender: TObject);
    procedure btn_ultimoClick(Sender: TObject);
    procedure btn_anteriorClick(Sender: TObject);
    procedure dts_clienteStateChange(Sender: TObject);
    procedure dse_clienteBeforePost(DataSet: TDataSet);
    procedure dse_clienteNewRecord(DataSet: TDataSet);
    procedure dse_clienteAfterEdit(DataSet: TDataSet);
    procedure pnlTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dse_emailNewRecord(DataSet: TDataSet);
    procedure lbl_cnpj_cpfClick(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    procedure mostra_cnpj_cpf;
    procedure open_aux_queries; 
    { Private declarations }
  public
    table_name: string;
    key_field: string;
  end;

var
  frm_cliente: Tfrm_cliente;

implementation

uses
  unt_dtm_dados,
  unt_classe_endereco,
  unt_constantes,
  unt_cliente_atividade,
  unt_func_messages,
  unt_functions,
  unt_integracao,
  unt_proc_abrir_telas,
  unt_procedures;

{$R *.dfm}

procedure Tfrm_cliente.CreateParams(var Params: TCreateParams);
begin 
  inherited; 
  Params.Style := WS_BORDER;
  BorderStyle := bsNone;
  BorderWidth := 0;
end;

procedure Tfrm_cliente.btn_anteriorClick(Sender: TObject);
begin
  open_dataset(
    prior_id(
      table_name,
      key_field,
      dse_cliente.FieldByName(key_field).AsInteger,
      'and cliente = ''S'''));
end;

procedure Tfrm_cliente.btn_atividadesClick(Sender: TObject);
begin
  abrir_atividade(dse_cliente.FieldByName(key_field).AsInteger);
end;

procedure Tfrm_cliente.btn_atualizarClick(Sender: TObject);
begin
  dse_cliente.Close;
  dse_cliente.Open;  
end;

procedure Tfrm_cliente.btn_cancelarClick(Sender: TObject);
begin
  dse_cliente.Cancel;
end;

procedure Tfrm_cliente.btn_editarClick(Sender: TObject);
begin
  dse_cliente.Edit;
end;

procedure Tfrm_cliente.btn_excluirClick(Sender: TObject);
begin
  if msg_quest('Confirma Exclusão de Cliente?') then
    dse_cliente.Delete;
end;

procedure Tfrm_cliente.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_cliente.btn_localizarClick(Sender: TObject);
var
  ok: boolean;

begin
  try

    ok :=
      pesquisar(
        qry,
        'select * from ' + table_name,
        'nome',
      self.Name);

    if ok then
      open_dataset(qry.FieldByName(key_field).AsInteger);

  except
    on e:exception do msg_error('Erro 8755: ' + e.message);
  end;
end;

procedure Tfrm_cliente.btn_novoClick(Sender: TObject);
begin
  dse_cliente.Append;
end;

procedure Tfrm_cliente.btn_primeiroClick(Sender: TObject);
begin
  open_dataset(
    first_id(
      table_name,
      key_field,
      'and cliente = ''S'''));
end;

procedure Tfrm_cliente.btn_proximoClick(Sender: TObject);
begin
  open_dataset(
    next_id(
      table_name,
      key_field,
      dse_cliente.FieldByName(key_field).AsInteger,
      'and cliente = ''S'''));
end;

procedure Tfrm_cliente.btn_salvarClick(Sender: TObject);
begin
  if dse_cliente.State in [dsEdit, dsInsert] then
    dse_cliente.Post;

  if dse_endereco.State in [dsEdit, dsInsert] then
    dse_endereco.Post;

  if dse_email.State in [dsEdit, dsInsert] then
    dse_email.Post;

  if dse_tel.State in [dsEdit, dsInsert] then
    dse_tel.Post;
end;

procedure Tfrm_cliente.btn_ultimoClick(Sender: TObject);
begin
  open_dataset(
    last_id(
      table_name,
      key_field,
      'and cliente = ''S'''));
end;

procedure Tfrm_cliente.cmb_tipoCloseUp(Sender: TwwDBComboBox; Select: Boolean);
begin
  mostra_cnpj_cpf;
end;

procedure Tfrm_cliente.cmb_tipo_telCloseUp(Sender: TwwDBComboBox; Select: Boolean);
var
  num: string;
begin
  if cmb_tipo_tel.Value = 'F' then
    TStringField(dse_tel.FieldByName('numero')).EditMask := msk_tel_fixo
  else if cmb_tipo_tel.Value = 'C' then
    TStringField(dse_tel.FieldByName('numero')).EditMask := msk_tel_celular;
end;

procedure Tfrm_cliente.dse_clienteAfterCancel(DataSet: TDataSet);
begin
  inherited;

  try
    if dse_cliente.State in [dsEdit, dsInsert] then
      dse_cliente.Cancel;
    if dse_endereco.State in [dsEdit, dsInsert] then
      dse_endereco.Cancel;
    if dse_tel.State in [dsEdit, dsInsert] then
      dse_tel.Cancel;
    if dse_email.State in [dsEdit, dsInsert] then
      dse_email.Cancel;

  except
    msg_info('O cadastro não está completo');
  end;

end;

procedure Tfrm_cliente.dse_clienteAfterClose(DataSet: TDataSet);
begin
  inherited;
  dse_cliente.Close;
  dse_endereco.Close;
  dse_tel.Close;
  dse_email.Close;
end;

procedure Tfrm_cliente.dse_clienteAfterEdit(DataSet: TDataSet);
begin
  dse_endereco.Edit;
end;

procedure Tfrm_cliente.dse_clienteAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dse_cliente.Open;
  dse_endereco.Open;
  dse_tel.Open;
  dse_email.Open;

  TStringField(dse_cliente.FieldByName('cpf')).EditMask := msk_cpf;
  TStringField(dse_cliente.FieldByName('cnpj')).EditMask := msk_cnpj;
end;

procedure Tfrm_cliente.dse_clienteAfterPost(DataSet: TDataSet);
begin

  try
    if dse_endereco.State in [dsEdit, dsInsert] then
      dse_endereco.Post;
    if dse_tel.State in [dsEdit, dsInsert] then
      dse_tel.Post;
    if dse_email.State in [dsEdit, dsInsert] then
      dse_email.Post;

  except
    msg_info('O cadastro não está completo');
  end;

end;

procedure Tfrm_cliente.dse_clienteAfterScroll(DataSet: TDataSet);
begin
  dse_endereco.Close;
  dse_tel.Close;
  dse_email.Close;

  dse_endereco.Open;
  dse_tel.Open;
  dse_email.Open;

  mostra_cnpj_cpf;
end;

procedure Tfrm_cliente.dse_clienteBeforePost(DataSet: TDataSet);
begin
  dse_cliente.FieldByName('cliente').Text := 'S';
end;

procedure Tfrm_cliente.dse_clienteNewRecord(DataSet: TDataSet);
begin
  dse_clientecliente.Text := 'S';
  dse_clientefornecedor.Text := 'N';
  dse_clienteusuario.Text := 'N';
end;

procedure Tfrm_cliente.dse_emailNewRecord(DataSet: TDataSet);
begin
  dse_emailid_pessoa.AsInteger := dse_clienteid.AsInteger;
end;

procedure Tfrm_cliente.dse_enderecoNewRecord(DataSet: TDataSet);
begin
  dse_endereco.FieldByName('id_pessoa').AsInteger := dse_cliente.FieldByName('id').AsInteger;
  dse_endereco.FieldByName('descricao').AsString := 'Principal';
end;

procedure Tfrm_cliente.dse_telAfterScroll(DataSet: TDataSet);
var
  num: string;
begin
{  num := ajusta_numero_telefone(dse_tel.FieldByName('numero').Text);
  TStringField(dse_tel.FieldByName('numero')).EditMask := define_mascara_telefone(num);    }
end;

procedure Tfrm_cliente.dse_telNewRecord(DataSet: TDataSet);
begin
  dse_telid_pessoa.AsInteger := dse_clienteid.AsInteger;
end;

procedure Tfrm_cliente.dtsStateChange(Sender: TObject);
var
  edt: boolean;
begin
  inherited;

  edt := dse_cliente.State in [dsEdit,dsInsert];
  dts_endereco.AutoEdit := edt;
  dts_tel.AutoEdit := edt;
  dts_email.AutoEdit := edt;

end;

procedure Tfrm_cliente.dts_clienteStateChange(Sender: TObject);
var edt: boolean;
begin

  if key_field <> '' then
  begin

    edt := dse_cliente.State in [dsEdit,dsInsert];

    btn_novo.Enabled := not edt;
    btn_editar.Enabled := not (edt or dse_cliente.FieldByName(key_field).IsNull);
    btn_excluir.Enabled := not (edt or dse_cliente.FieldByName(key_field).IsNull);
    btn_atualizar.Enabled := not (edt or dse_cliente.FieldByName(key_field).IsNull);
    btn_salvar.Enabled := edt;
    btn_cancelar.Enabled := edt;
    btn_localizar.Enabled := not edt;

    dts_endereco.AutoEdit := edt;
    dts_tel.AutoEdit := edt;
    dts_email.AutoEdit := edt;

  end;
end;

procedure Tfrm_cliente.edt_cepExit(Sender: TObject);
var
  ender: TEndereco;

begin
  if dse_endereco.State in [dsEdit,dsInsert] then
  begin
    ender := TEndereco.Create;
    ender := busca_cep(edt_cep.Text);

    if ender.Encontrado then
    begin

      if ender.logradouro <> '' then
      begin
        dse_endereco.FieldByName('logradouro').AsString := ender.Logradouro;
        edt_numero.SetFocus;
      end;

      dse_endereco.FieldByName('id_uf').AsInteger := ender.id_uf;
      dse_endereco.FieldByName('id_municipio').AsInteger := ender.id_municipio;

      if ender.id_bairro <> 0 then
        dse_endereco.FieldByName('id_bairro').AsInteger := ender.id_bairro;

      //edt_bairroExit(Sender);
      //edt_municipioExit(Sender);
    end;
  end;
end;

procedure Tfrm_cliente.edt_cnpj_cpfExit(Sender: TObject);
begin

  if (cmb_tipo.Value = 'J') and (not cnpj_valido(edt_cnpj_cpf.Text)) then
  begin
    msg_info('Este CNPJ não é válido');
    edt_cnpj_cpf.SetFocus;
  end
  else if (cmb_tipo.Value = 'F') and (not cpf_valido(edt_cnpj_cpf.Text)) then
  begin
    msg_info('Este CPF não é válido');
    edt_cnpj_cpf.SetFocus;
  end;

end;

procedure Tfrm_cliente.edt_fantasiaEnter(Sender: TObject);
begin
  if dse_cliente.FieldByName('id').IsNull then
  begin
    dse_cliente.Post;
    dse_cliente.Edit;
  end;  
end;

procedure Tfrm_cliente.open_aux_queries;
begin
  qry_uf.Open;
  qry_municipio.Open;
  qry_bairro.Open;
  dse_endereco.Open;
  dse_tel.Open;
  dse_email.Open;
end;

procedure Tfrm_cliente.open_dataset(pk: integer);
begin
  dse_cliente.Close;
  dse_cliente.SQL.Text :=
    'select *                     '#13+
    'from pessoa                  '#13+
    'where id = ' + intToStr(pk)  +#13+
    '    and cliente = ''S''';
  dse_cliente.Open;
end;

procedure Tfrm_cliente.pnlTituloMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure Tfrm_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure Tfrm_cliente.FormCreate(Sender: TObject);
begin
  centralizar_tela(self);
  key_field := 'id';
  table_name := 'pessoa';
  dse_cliente.Open;
  open_aux_queries;
  Application.ProcessMessages;
end;

procedure Tfrm_cliente.lbl_cnpj_cpfClick(Sender: TObject);
begin
  Clipboard.AsText := dse_clientecnpj.AsString;
  msg_info('O CNPJ foi copiado.'); 
end;

procedure Tfrm_cliente.qry_municipioAfterScroll(DataSet: TDataSet);
begin
  qry_bairro.Close;
  qry_bairro.Open;
end;

procedure Tfrm_cliente.qry_ufAfterScroll(DataSet: TDataSet);
begin
  qry_municipio.Close;
  qry_municipio.Open;
end;

procedure Tfrm_cliente.mostra_cnpj_cpf;
begin
  if cmb_tipo.Value = 'F' then
  begin
    edt_cnpj_cpf.DataField := 'cpf';
    lbl_cnpj_cpf.Caption := 'CPF';
  end
  else
  begin
    edt_cnpj_cpf.DataField := 'cnpj';
    lbl_cnpj_cpf.Caption := 'CNPJ';
  end;
end;

end.
