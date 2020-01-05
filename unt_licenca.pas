unit unt_licenca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unt_cad_abstrato_mestre_detalhe, ADODB, DB, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, ComCtrls, ToolWin, StdCtrls, Mask, wwdbedit, DBCtrls,
  wwdblook;

type
  Tfrm_licenca = class(Tfrm_cad_abstrato_mestre_detalhe)
    Label1: TLabel;
    lbl_cnpj_cpf: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt_id: TwwDBEdit;
    edt_cnpj_cpf: TwwDBEdit;
    edt_nome: TwwDBEdit;
    edt_fantasia: TwwDBEdit;
    Label2: TLabel;
    edt_atividade: TwwDBEdit;
    qry_cliente_atividade: TADOQuery;
    Panel2: TPanel;
    Panel3: TPanel;
    grd: TwwDBGrid;
    dts_cliente_atividade: TDataSource;
    pnl_desc_licenca: TPanel;
    pnl_tit_desc_licenca: TPanel;
    mmo_desc_licenca: TDBMemo;
    cmb_tipo: TwwDBLookupCombo;
    cmb_orgao: TwwDBLookupCombo;
    cmb_municipio: TwwDBLookupCombo;
    edt_assinou: TwwDBEdit;
    qry_tipo: TADOQuery;
    qry_orgao: TADOQuery;
    qry_municipio: TADOQuery;
    qry_tipoid: TAutoIncField;
    qry_orgaoid: TAutoIncField;
    qry_orgaosigla: TStringField;
    qry_municipioid: TAutoIncField;
    qry_municipionome: TStringField;
    qry_tiposigla: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dse_detalheBeforeOpen(DataSet: TDataSet);
    procedure dse_detalheNewRecord(DataSet: TDataSet);
  private
    procedure open_aux_queries;
    { Private declarations }
  public
    procedure open_dataset(pk: integer; pk_detalhe: integer);
  end;

var
  frm_licenca: Tfrm_licenca;

implementation

uses unt_procedures, unt_dtm_dados;

{$R *.dfm}

procedure Tfrm_licenca.dse_detalheBeforeOpen(DataSet: TDataSet);
begin
  dse_detalhe.Parameters.ParamByName('id_licenca').Value := dse.FieldByName(key_field).Value;
end;

procedure Tfrm_licenca.dse_detalheNewRecord(DataSet: TDataSet);
begin
  inherited;
  dse_detalhe.FieldByName('id_licenca').AsInteger := dse.FieldByName('id_licenca').AsInteger;
end;

procedure Tfrm_licenca.open_aux_queries;
begin
  qry_orgao.Open;
  qry_tipo.Open;
  qry_municipio.Open;
end;

procedure Tfrm_licenca.FormCreate(Sender: TObject);
begin
  centralizar_tela(self);
  key_field := 'id';
  table_name := 'licenca';
  open_aux_queries;
  open_dataset(0,0);
end;

procedure Tfrm_licenca.open_dataset(pk: integer; pk_detalhe: integer);
begin
  qry_cliente_atividade.Close;
  qry_cliente_atividade.Parameters.ParamByName('id_cliente').Value := pk;
  qry_cliente_atividade.Parameters.ParamByName('id_atividade').Value := pk_detalhe;
  qry_cliente_atividade.Open;

  dse.Close;
  dse.Parameters.ParamByName('id_cliente').Value := pk;
  dse.Parameters.ParamByName('id_atividade').Value := pk_detalhe;
  dse.Open;
end;

end.
