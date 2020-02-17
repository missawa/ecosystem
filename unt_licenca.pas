unit unt_licenca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DB, wwdblook, StdCtrls, DBCtrls, Grids, Wwdbigrd, Wwdbgrid,
  Mask, wwdbedit, ExtCtrls, Wwdotdot, Wwdbcomb;

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
    qry_tipo: TADOQuery;
    qry_tiposigla: TStringField;
    qry_tipoid: TAutoIncField;
    qry_orgao: TADOQuery;
    qry_orgaoid: TAutoIncField;
    qry_orgaosigla: TStringField;
    qry_municipio: TADOQuery;
    qry_municipioid: TAutoIncField;
    qry_municipionome: TStringField;
    dts_licenca: TDataSource;
    dse_licenca: TADODataSet;
    dts_cliente: TDataSource;
    qry_cliente: TADOQuery;
    dse_condicionante: TADODataSet;
    dts_condicionante: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    DBMemo1: TDBMemo;
    cmb_responsavel: TwwDBComboBox;
    cmb_executor: TwwDBComboBox;
    procedure dse_licencaNewRecord(DataSet: TDataSet);
    procedure dse_condicionanteNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure dse_condicionanteBeforeOpen(DataSet: TDataSet);
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

procedure Tfrm_licenca.dse_condicionanteBeforeOpen(DataSet: TDataSet);
begin
  dse_condicionante.Parameters.ParamByName('id_licenca').Value :=  dse_licenca.FieldByName('id').Value;
end;

procedure Tfrm_licenca.dse_condicionanteNewRecord(DataSet: TDataSet);
begin
  dse_condicionante.FieldByName('id_licenca').AsInteger := dse_licenca.FieldByName('id').AsInteger;
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
  qry_cliente.Parameters.ParamByName('id_cliente').Value := id_cliente;
  qry_cliente.Parameters.ParamByName('id_atividade').Value := id_atividade;
  qry_cliente.Open;

  dse_licenca.Close;
  dse_licenca.Parameters.ParamByName('id_cliente').Value := id_cliente;
  dse_licenca.Parameters.ParamByName('id_atividade').Value := id_atividade;
  dse_licenca.Open;


  dse_condicionante.Close;
  dse_condicionante.Parameters.ParamByName('id_licenca').Value := dse_licenca.FieldByName('id').Value;
  dse_condicionante.Open;
end;

end.
