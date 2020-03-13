unit unt_municipio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, Grids, Wwdbigrd, Wwdbgrid, wwdblook,
  StdCtrls, Mask, wwdbedit, ExtCtrls, ComCtrls, ToolWin;

type
  Tfrm_municipio = class(TForm)
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
    pnlTotal: TPanel;
    pnl_tit_geral: TPanel;
    pnl_geral: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_id: TwwDBEdit;
    edt_ibge: TwwDBEdit;
    edt_municipio: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Panel1: TPanel;
    pnl_tit_detalhe: TPanel;
    grd_detalhe: TwwDBGrid;
    dts: TDataSource;
    qry: TUniQuery;
    dse: TUniQuery;
    dts_detalhe: TDataSource;
    dse_detalhe: TUniQuery;
    procedure dse_detalheNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    table_name: string;
    key_field: string;
    procedure open_dataset(pk: integer);
    procedure btn_anteriorClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure btn_primeiroClick(Sender: TObject);
    procedure btn_proximoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_ultimoClick(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  public
    { Public declarations }
  end;

var
  frm_municipio: Tfrm_municipio;

implementation

uses unt_dtm_dados, unt_functions, unt_func_messages, unt_procedures;

{$R *.dfm}

procedure Tfrm_municipio.CreateParams(var Params: TCreateParams);
begin 
  inherited; 
  Params.Style := WS_BORDER;
  BorderStyle := bsNone;
  BorderWidth := 0;
end;

procedure Tfrm_municipio.open_dataset(pk: integer);
begin
  dse.Close;
  dse.SQL.Text :=
    'select *                             '#13+
    'from municipio                       '#13+
    'where id = ' + intToStr(pk);
  dse.Open;
end;

procedure Tfrm_municipio.dse_detalheNewRecord(DataSet: TDataSet);
begin
  dse_detalhe.FieldByName('id_municipio').AsInteger := dse.FieldByName(key_field).AsInteger;
end;

procedure Tfrm_municipio.FormCreate(Sender: TObject);
begin
  table_name := 'municipio';
  key_field := 'id';
  dtm_dados.qry_uf.Open;
  centralizar_tela(self);
end;


procedure Tfrm_municipio.btn_anteriorClick(Sender: TObject);
begin
  open_dataset(
    prior_id(
      table_name,
      key_field,
      dse.FieldByName(key_field).AsInteger,
      ''));
end;

procedure Tfrm_municipio.btn_atualizarClick(Sender: TObject);
begin
  dse.Close;
  dse.Open;
end;

procedure Tfrm_municipio.btn_cancelarClick(Sender: TObject);
begin
  dse.Cancel;
end;

procedure Tfrm_municipio.btn_editarClick(Sender: TObject);
begin
  dse.Edit;
end;

procedure Tfrm_municipio.btn_excluirClick(Sender: TObject);
begin
  dse.Delete;
end;

procedure Tfrm_municipio.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_municipio.btn_localizarClick(Sender: TObject);
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

procedure Tfrm_municipio.btn_novoClick(Sender: TObject);
begin
  dse.Append;
end;

procedure Tfrm_municipio.btn_primeiroClick(Sender: TObject);
begin
  open_dataset(first_id(table_name,key_field,''));
end;

procedure Tfrm_municipio.btn_proximoClick(Sender: TObject);
begin
  open_dataset(next_id(table_name, key_field, dse.FieldByName(key_field).AsInteger,''));
end;

procedure Tfrm_municipio.btn_salvarClick(Sender: TObject);
begin
  dse.Post;
end;

procedure Tfrm_municipio.btn_ultimoClick(Sender: TObject);
begin
  open_dataset(
    last_id(
      table_name,
      key_field,
      ''));
end;

procedure Tfrm_municipio.dtsStateChange(Sender: TObject);
var edt: boolean;
begin

  if key_field <> '' then
  begin

    edt := dse.State in [dsEdit,dsInsert];

    btn_novo.Enabled := not edt;
    btn_editar.Enabled := not (edt or dse.FieldByName(key_field).IsNull);
    btn_excluir.Enabled := not (edt or dse.FieldByName(key_field).IsNull);
    btn_atualizar.Enabled := not (edt or dse.FieldByName(key_field).IsNull);
    btn_salvar.Enabled := edt;
    btn_cancelar.Enabled := edt;
    btn_localizar.Enabled := not edt;

  end;

end;

procedure Tfrm_municipio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dse.Close;
  Action := caFree;
end;

procedure Tfrm_municipio.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if dse.State in [dsEdit,dsInsert] then
  begin
    msg_info('Existem dados que ainda não foram salvos no banco de dados.'#13+
             'Clique no botão "Salvar" para guardar os dados ou em "Cancelar" para desfazer as alterações.');
    CanClose := false;
  end
  else
    CanClose := true;
end;

end.
