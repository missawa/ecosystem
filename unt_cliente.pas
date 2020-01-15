unit unt_cliente;

interface

uses
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
  ADODB,
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
  unt_cad_abstrato, wwriched;

type
  Tfrm_cliente = class(Tfrm_cad_abstrato)
    Label1: TLabel;
    Label2: TLabel;
    lbl_cnpj_cpf: TLabel;
    Label4: TLabel;
    edt_id: TwwDBEdit;
    edt_cnpj_cpf: TwwDBEdit;
    edt_nome: TwwDBEdit;
    cmb_tipo: TwwDBComboBox;
    Label5: TLabel;
    edt_fantasia: TwwDBEdit;
    pnl_endereco: TPanel;
    pnl_tit_endereco: TPanel;
    Panel3: TPanel;
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
    qry_uf: TADOQuery;
    cmb_uf: TwwDBLookupCombo;
    cmb_municipio: TwwDBLookupCombo;
    cmb_bairro: TwwDBLookupCombo;
    qry_municipio: TADOQuery;
    qry_bairro: TADOQuery;
    dts_uf: TDataSource;
    dts_municipio: TDataSource;
    dts_bairro: TDataSource;
    dts_endereco: TDataSource;
    dse_endereco: TADODataSet;
    dts_tel: TDataSource;
    pnl_contato: TPanel;
    onl_telefone: TPanel;
    pnl_tit_telefone: TPanel;
    grd_tel: TwwDBGrid;
    dse_tel: TADODataSet;
    cmb_tipo_tel: TwwDBComboBox;
    cmb_desc_tel: TwwDBComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    grd_email: TwwDBGrid;
    cmb_tipo_email: TwwDBComboBox;
    cmb_desc_email: TwwDBComboBox;
    dts_email: TDataSource;
    dse_email: TADODataSet;
    btn_atividades: TToolButton;
    sep_4: TToolButton;
    pnl_obs: TPanel;
    pnl_tit_obs: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    rce_obs: TwwDBRichEdit;
    procedure dse_enderecoNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure edt_fantasiaEnter(Sender: TObject);
    procedure dseAfterPost(DataSet: TDataSet);
    procedure dse_enderecoBeforeOpen(DataSet: TDataSet);
    procedure edt_cnpj_cpfExit(Sender: TObject);
    procedure edt_cepExit(Sender: TObject);
    procedure qry_ufAfterScroll(DataSet: TDataSet);
    procedure qry_municipioAfterScroll(DataSet: TDataSet);
    procedure qry_municipioBeforeOpen(DataSet: TDataSet);
    procedure qry_bairroBeforeOpen(DataSet: TDataSet);
    procedure dseAfterScroll(DataSet: TDataSet);
    procedure dse_telBeforeOpen(DataSet: TDataSet);
    procedure dse_telNewRecord(DataSet: TDataSet);
    procedure dse_telAfterScroll(DataSet: TDataSet);
    procedure cmb_tipo_telCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure dse_emailBeforeOpen(DataSet: TDataSet);
    procedure dtsStateChange(Sender: TObject);
    procedure dseAfterCancel(DataSet: TDataSet);
    procedure dseAfterClose(DataSet: TDataSet);
    procedure dseAfterOpen(DataSet: TDataSet);
    procedure btn_atividadesClick(Sender: TObject);
    procedure cmb_tipoCloseUp(Sender: TwwDBComboBox; Select: Boolean);
    procedure FormShow(Sender: TObject);
  private
    procedure mostra_cnpj_cpf;
    procedure open_aux_queries; 
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cliente: Tfrm_cliente;

implementation

uses
  unt_dtm_dados,
  unt_func_messages,
  unt_functions,
  unt_classe_endereco,
  unt_integracao, unt_constantes, unt_cliente_atividade, unt_proc_abrir_telas;

{$R *.dfm}

procedure Tfrm_cliente.btn_atividadesClick(Sender: TObject);
begin
  abrir_atividade(dse.FieldByName(key_field).AsInteger);
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

procedure Tfrm_cliente.dseAfterCancel(DataSet: TDataSet);
begin
  inherited;

  try
    if dse.State in [dsEdit, dsInsert] then
      dse.Cancel;
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

procedure Tfrm_cliente.dseAfterClose(DataSet: TDataSet);
begin
  inherited;
  dse.Close;
  dse_endereco.Close;
  dse_tel.Close;
  dse_email.Close;
end;

procedure Tfrm_cliente.dseAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dse.Open;
  dse_endereco.Open;
  dse_tel.Open;
  dse_email.Open;

  TStringField(dse.FieldByName('cpf')).EditMask := msk_cpf;
  TStringField(dse.FieldByName('cnpj')).EditMask := msk_cnpj;
end;

procedure Tfrm_cliente.dseAfterPost(DataSet: TDataSet);
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

procedure Tfrm_cliente.dseAfterScroll(DataSet: TDataSet);
begin
  dse_endereco.Close;
  dse_tel.Close;
  dse_email.Close;

  dse_endereco.Open;
  dse_tel.Open;
  dse_email.Open;

  mostra_cnpj_cpf;
end;

procedure Tfrm_cliente.dse_emailBeforeOpen(DataSet: TDataSet);
begin
  if dse.Active then
    dse_email.Parameters.ParamByName('id_pessoa').Value := dse.FieldByName(key_field).AsInteger;
end;

procedure Tfrm_cliente.dse_enderecoBeforeOpen(DataSet: TDataSet);
begin
  if dse.Active then
    dse_endereco.Parameters.ParamByName('id_pessoa').Value := dse.FieldByName(key_field).AsInteger;
end;

procedure Tfrm_cliente.dse_enderecoNewRecord(DataSet: TDataSet);
begin
  dse_endereco.FieldByName('id_pessoa').AsInteger := dse.FieldByName('id').AsInteger;
  dse_endereco.FieldByName('descricao').AsString := 'Principal';
end;

procedure Tfrm_cliente.dse_telAfterScroll(DataSet: TDataSet);
var
  num: string;
begin

  num := ajusta_numero_telefone(dse.FieldByName('numero').Text);
  TStringField(dse.FieldByName('numero')).EditMask := define_mascara_telefone(num);
end;

procedure Tfrm_cliente.dse_telBeforeOpen(DataSet: TDataSet);
begin
  if dse.Active then
    dse_tel.Parameters.ParamByName('id_pessoa').Value := dse.FieldByName(key_field).Value;
end;

procedure Tfrm_cliente.dse_telNewRecord(DataSet: TDataSet);
begin
  if dse.Active then
    dse_tel.FieldByName('id_pessoa').AsInteger := dse.FieldByName(key_field).AsInteger;
end;

procedure Tfrm_cliente.dtsStateChange(Sender: TObject);
var
  edt: boolean;
begin
  inherited;

  edt := dse.State in [dsEdit,dsInsert];
  dts_endereco.AutoEdit := edt;
  dts_tel.AutoEdit := edt;
  dts_email.AutoEdit := edt;

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
  if dse.FieldByName('id').IsNull then
  begin
    dse.Post;
    dse.Edit;
  end;  
end;

procedure Tfrm_cliente.open_aux_queries;
begin
  qry_uf.Open;
  dse_endereco.Open;
end;

procedure Tfrm_cliente.FormCreate(Sender: TObject);
begin
  key_field := 'id';
  table_name := 'cliente';
  open_aux_queries;
  inherited;
  Application.ProcessMessages;
end;

procedure Tfrm_cliente.FormShow(Sender: TObject);
begin
  inherited;
  btn_atividades.Left := 728;
  sep_4.Left := 792;
  btn_fechar.Left := 800;
end;

procedure Tfrm_cliente.qry_bairroBeforeOpen(DataSet: TDataSet);
begin
  qry_bairro.Parameters.ParamByName('id_municipio').Value := qry_municipio.FieldByName('id').Value;
end;

procedure Tfrm_cliente.qry_municipioAfterScroll(DataSet: TDataSet);
begin
  qry_bairro.Close;
  qry_bairro.Open;
end;

procedure Tfrm_cliente.qry_municipioBeforeOpen(DataSet: TDataSet);
begin
  qry_municipio.Parameters.ParamByName('id_uf').Value := qry_uf.FieldByName('id').Value;
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
