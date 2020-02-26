unit unt_cad_abstrato;

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
  ComCtrls,
  ToolWin,
  ExtCtrls,
  IBCustomDataSet,
  DB,
  IBQuery,
  IBDatabase,
  MemDS,
  DBAccess,
  Uni;

type
  Tfrm_cad_abstrato = class(TForm)
    toolbar: TToolBar;
    btn_fechar: TToolButton;
    dts: TDataSource;
    btn_primeiro: TToolButton;
    btn_anterior: TToolButton;
    btn_proximo: TToolButton;
    btn_ultimo: TToolButton;
    sep_3: TToolButton;
    btn_editar: TToolButton;
    btn_novo: TToolButton;
    sep_1: TToolButton;
    btn_excluir: TToolButton;
    btn_atualizar: TToolButton;
    sep_2: TToolButton;
    btn_salvar: TToolButton;
    btn_cancelar: TToolButton;
    btn_localizar: TToolButton;
    pnlTitulo: TPanel;
    pnlTotal: TPanel;
    pnl_tit_geral: TPanel;
    pnl_geral: TPanel;
    qry: TUniQuery;
    dse: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_primeiroClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_ultimoClick(Sender: TObject);
    procedure btn_proximoClick(Sender: TObject);
    procedure btn_anteriorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnlTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btn_fecharClick(Sender: TObject);
    procedure dtsStateChange(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  protected
    table_name: string;
    key_field: string;
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }
  public
    procedure open_dataset(pk: integer);
  end;

var
  frm_cad_abstrato: Tfrm_cad_abstrato;

implementation

uses
  unt_functions,
  unt_dtm_images,
  unt_dtm_dados,
  unt_func_messages,
  unt_procedures;

{$R *.dfm}

procedure Tfrm_cad_abstrato.CreateParams(var Params: TCreateParams);
begin 
  inherited; 
  Params.Style := WS_BORDER;
  BorderStyle := bsNone;
  BorderWidth := 0;
end;

procedure Tfrm_cad_abstrato.pnlTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
  
end;

procedure Tfrm_cad_abstrato.open_dataset(pk: integer);
begin
  dse.Close;
  dse.Params.ParamByName('key_field').Value := pk;
  dse.Open;
end;

procedure Tfrm_cad_abstrato.btn_anteriorClick(Sender: TObject);
begin
  open_dataset(prior_id(table_name, key_field, dse.FieldByName(key_field).AsInteger));
end;

procedure Tfrm_cad_abstrato.btn_atualizarClick(Sender: TObject);
begin
  dse.Close;
  dse.Open;
end;

procedure Tfrm_cad_abstrato.btn_cancelarClick(Sender: TObject);
begin
  dse.Cancel;
end;

procedure Tfrm_cad_abstrato.btn_editarClick(Sender: TObject);
begin
  dse.Edit;
end;

procedure Tfrm_cad_abstrato.btn_excluirClick(Sender: TObject);
begin
  dse.Delete;
end;

procedure Tfrm_cad_abstrato.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_cad_abstrato.btn_localizarClick(Sender: TObject);
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

procedure Tfrm_cad_abstrato.btn_novoClick(Sender: TObject);
begin
  dse.Append;
end;

procedure Tfrm_cad_abstrato.btn_primeiroClick(Sender: TObject);
begin
  open_dataset(first_id(table_name,key_field));
end;

procedure Tfrm_cad_abstrato.btn_proximoClick(Sender: TObject);
begin
  open_dataset(next_id(table_name, key_field, dse.FieldByName(key_field).AsInteger));
end;

procedure Tfrm_cad_abstrato.btn_salvarClick(Sender: TObject);
begin
  dse.Post;
end;

procedure Tfrm_cad_abstrato.btn_ultimoClick(Sender: TObject);
begin
  open_dataset(last_id(table_name,key_field));
end;

procedure Tfrm_cad_abstrato.dtsStateChange(Sender: TObject);
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

procedure Tfrm_cad_abstrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dse.Close;
  Action := caFree;
end;

procedure Tfrm_cad_abstrato.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
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

procedure Tfrm_cad_abstrato.FormCreate(Sender: TObject);
begin
  centralizar_tela(self);
  key_field := 'id';

  if dse.sql.Text <> '' then
    open_dataset(0);

end;

end.
