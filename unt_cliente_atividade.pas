unit unt_cliente_atividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, Wwdotdot, Wwdbcomb, Grids, Wwdbigrd,
  Wwdbgrid, StdCtrls, Mask, wwdbedit, ComCtrls, ToolWin, ExtCtrls;

type
  Tfrm_cliente_atividade = class(TForm)
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
    btn_licencas: TToolButton;
    sep_4: TToolButton;
    pnlTotal: TPanel;
    pnl_tit_geral: TPanel;
    pnl_geral: TPanel;
    Label1: TLabel;
    lbl_cnpj_cpf: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_id: TwwDBEdit;
    edt_cnpj_cpf: TwwDBEdit;
    edt_nome: TwwDBEdit;
    edt_fantasia: TwwDBEdit;
    Panel1: TPanel;
    pnl_tit_detalhe: TPanel;
    grd_detalhe: TwwDBGrid;
    cmb_atividade: TwwDBComboBox;
    qry: TUniQuery;
    dts: TDataSource;
    dse: TUniQuery;
    dts_detalhe: TDataSource;
    dse_detalhe: TUniQuery;
    dseid: TIntegerField;
    dsetipo: TStringField;
    dsecpf: TStringField;
    dsecnpj: TStringField;
    dsenome: TStringField;
    dsefantasia: TStringField;
    dsecliente: TStringField;
    dsefornecedor: TStringField;
    dseusuario: TStringField;
    dseobs: TMemoField;
    procedure btn_licencasClick(Sender: TObject);
    procedure dseAfterOpen(DataSet: TDataSet);
    procedure dseAfterScroll(DataSet: TDataSet);
    procedure dse_detalheAfterOpen(DataSet: TDataSet);
    procedure dse_detalheNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  protected
  private
    table_name: string;
    key_field: string;
    procedure mostra_cnpj_cpf;
    procedure open_aux_queries;
  public
    procedure open_dataset(pk: integer);
  end;

var
  frm_cliente_atividade: Tfrm_cliente_atividade;

implementation

uses
  unt_constantes,
  unt_functions,
  unt_proc_abrir_telas,
  unt_procedures, unt_dtm_dados, unt_dtm_images;

{$R *.dfm}

procedure Tfrm_cliente_atividade.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_cliente_atividade.btn_licencasClick(Sender: TObject);
begin
  abrir_licenca(
    dse.FieldByName('id').AsInteger,
    dse_detalhe.FieldByName('id_atividade').AsInteger);
end;

procedure Tfrm_cliente_atividade.dseAfterOpen(DataSet: TDataSet);
begin
  TStringField(dse.FieldByName('cpf')).EditMask := msk_cpf;
  TStringField(dse.FieldByName('cnpj')).EditMask := msk_cnpj;
end;

procedure Tfrm_cliente_atividade.dseAfterScroll(DataSet: TDataSet);
begin
  mostra_cnpj_cpf;
end;

procedure Tfrm_cliente_atividade.dse_detalheAfterOpen(DataSet: TDataSet);
begin
  carrega_combo_atividade(cmb_atividade);
end;

procedure Tfrm_cliente_atividade.dse_detalheNewRecord(DataSet: TDataSet);
begin
  dse_detalhe.FieldByName('id_cliente').AsInteger := dse.FieldByName(key_field).AsInteger;
end;

procedure Tfrm_cliente_atividade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_cliente_atividade.FormCreate(Sender: TObject);
begin
  centralizar_tela(self);
  key_field := 'id';
  table_name := 'cliente_atividade';
  dse.Open;
  dse_detalhe.Open;
end;

procedure Tfrm_cliente_atividade.FormShow(Sender: TObject);
begin
  btn_licencas.Left := 728;
  sep_4.Left := 792;
  btn_fechar.Left := 800;
end;

procedure Tfrm_cliente_atividade.mostra_cnpj_cpf;
begin
  if dse.FieldByName('tipo').Value = 'F' then
  begin
    lbl_cnpj_cpf.Caption := 'CPF';
    edt_cnpj_cpf.DataField := 'cpf';
  end
  else
  begin
    lbl_cnpj_cpf.Caption := 'CNPJ';
    edt_cnpj_cpf.DataField := 'cnpj';
  end;
end;

procedure Tfrm_cliente_atividade.open_aux_queries;
begin
  Application.ProcessMessages;
end;

procedure Tfrm_cliente_atividade.open_dataset(pk: integer);
begin
  dse.Close;
  dse.SQL.Text :=
    'select *                     '#13+
    'from pessoa                  '#13+
    'where id = ' + intToStr(pk)  +#13+
    '    and cliente = ''S''';
  dse.Open;
end;

procedure Tfrm_cliente_atividade.pnlTituloMouseDown(Sender: TObject;
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
