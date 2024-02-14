unit unt_municipio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, ExtCtrls, wwdblook, StdCtrls, Mask, wwdbedit,
  Wwdotdot, Wwdbcomb, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdTime, IdUnixTime, Grids, Wwdbigrd, Wwdbgrid, DB, MemDS,
  DBAccess, Uni;

type
  Tfrm_municipio = class(TForm)
    pnlTitulo: TPanel;
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
    Panel1: TPanel;
    pnl_tit_detalhe: TPanel;
    grd_detalhe: TwwDBGrid;
    dts: TDataSource;
    dse: TUniQuery;
    dse_detalhe: TUniQuery;
    dts_detalhe: TDataSource;
    qry: TUniQuery;
    cmb_uf: TwwDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_fecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure btn_atualizarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_primeiroClick(Sender: TObject);
    procedure btn_anteriorClick(Sender: TObject);
    procedure btn_proximoClick(Sender: TObject);
    procedure btn_ultimoClick(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
  private
    table_name: string;
    key_field: string;  
    procedure open_dataset(pk: integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_municipio: Tfrm_municipio;

implementation

uses unt_procedures, unt_functions, unt_func_messages, unt_dtm_dados;

{$R *.dfm}

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
  dse.close;
  dse.open;
end;

procedure Tfrm_municipio.btn_cancelarClick(Sender: TObject);
begin
  dse.cancel;
end;

procedure Tfrm_municipio.btn_editarClick(Sender: TObject);
begin
  dse.edit;
end;

procedure Tfrm_municipio.btn_excluirClick(Sender: TObject);
begin
  dse.delete;
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
  dse.append;
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
  dse.post;
end;

procedure Tfrm_municipio.btn_ultimoClick(Sender: TObject);
begin
  open_dataset(
    last_id(
      table_name,
      key_field,
      ''));
end;

procedure Tfrm_municipio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_municipio.FormCreate(Sender: TObject);
begin
  table_name := 'municipio';
  key_field := 'id';
  dtm_dados.qry_uf.Open;
  dse.Open;
  dse_detalhe.Open;
  centralizar_tela(self);
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


end.
