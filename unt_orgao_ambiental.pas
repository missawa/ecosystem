unit unt_orgao_ambiental;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, wwdblook, StdCtrls, Mask, wwdbedit,
  ExtCtrls, ComCtrls, ToolWin;

type
  Tfrm_orgao_ambiental = class(TForm)
    toolbar: TToolBar;
    btn_novo: TToolButton;
    btn_editar: TToolButton;
    btn_excluir: TToolButton;
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
    Label7: TLabel;
    edt_id: TwwDBEdit;
    edt_nome: TwwDBEdit;
    edt_sigla: TwwDBEdit;
    cmb_uf: TwwDBLookupCombo;
    dts: TDataSource;
    qry: TUniQuery;
    dse: TUniQuery;
    StatusBar1: TStatusBar;
    procedure pnlTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_primeiroClick(Sender: TObject);
    procedure btn_anteriorClick(Sender: TObject);
    procedure btn_proximoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dseAfterPost(DataSet: TDataSet);
  protected
    procedure CreateParams(var Params: TCreateParams);
  private
    key_field: string;
    table_name: string;
    procedure open_dataset(pk: integer);
  public
    { Public declarations }
  end;

var
  frm_orgao_ambiental: Tfrm_orgao_ambiental;

implementation

uses unt_dtm_dados, unt_functions, unt_proc_abrir_telas, unt_func_messages,
  unt_procedures, unt_dtm_images;

{$R *.dfm}

procedure Tfrm_orgao_ambiental.open_dataset(pk: integer);
begin
  dse.Close;
  dse.SQL.Text :=
    'select *                     '#13+
    'from orgao_ambiental         '#13+
    'where id = ' + intToStr(pk);
  dse.Open;
end;

procedure Tfrm_orgao_ambiental.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := WS_BORDER;
  BorderStyle := bsNone;
  BorderWidth := 0;
end;

procedure Tfrm_orgao_ambiental.dseAfterPost(DataSet: TDataSet);
begin
  dse.Refresh;
end;

procedure Tfrm_orgao_ambiental.btn_anteriorClick(Sender: TObject);
begin
  open_dataset(
    prior_id(
      table_name,
      key_field,
      dse.FieldByName(key_field).AsInteger,
      ''));
end;

procedure Tfrm_orgao_ambiental.btn_cancelarClick(Sender: TObject);
begin
  dse.Cancel;
end;

procedure Tfrm_orgao_ambiental.btn_editarClick(Sender: TObject);
begin
  dse.Edit;
end;

procedure Tfrm_orgao_ambiental.btn_excluirClick(Sender: TObject);
begin
  dse.Delete;
end;

procedure Tfrm_orgao_ambiental.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_orgao_ambiental.btn_localizarClick(Sender: TObject);
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

procedure Tfrm_orgao_ambiental.btn_novoClick(Sender: TObject);
begin
  dse.Append;
end;

procedure Tfrm_orgao_ambiental.btn_primeiroClick(Sender: TObject);
begin
  open_dataset(first_id(table_name,key_field,''));
end;

procedure Tfrm_orgao_ambiental.btn_proximoClick(Sender: TObject);
begin
  open_dataset(
    next_id(
      table_name,
      key_field,
      dse.FieldByName(key_field).AsInteger,
      ''));
end;

procedure Tfrm_orgao_ambiental.btn_salvarClick(Sender: TObject);
begin
  dse.Post;
end;

procedure Tfrm_orgao_ambiental.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_orgao_ambiental.FormCreate(Sender: TObject);
begin
  centralizar_tela(self);
  key_field := 'id';
  table_name :='orgao_ambiental';
  dse.Open;
  dtm_dados.qry_uf.Open;
end;

procedure Tfrm_orgao_ambiental.pnlTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
