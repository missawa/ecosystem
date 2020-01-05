unit unt_cliente_atividade;

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
  unt_cad_abstrato_mestre_detalhe,
  ADODB,
  DB,
  Grids,
  Wwdbigrd,
  Wwdbgrid,
  ExtCtrls,
  ComCtrls,
  ToolWin,
  StdCtrls,
  Mask,
  wwdbedit,
  wwdblook, Wwdotdot, Wwdbcomb;

type
  Tfrm_cliente_atividade = class(Tfrm_cad_abstrato_mestre_detalhe)
    Label1: TLabel;
    edt_id: TwwDBEdit;
    edt_cnpj_cpf: TwwDBEdit;
    lbl_cnpj_cpf: TLabel;
    Label4: TLabel;
    edt_nome: TwwDBEdit;
    Label5: TLabel;
    edt_fantasia: TwwDBEdit;
    btn_licencas: TToolButton;
    sep_4: TToolButton;
    cmb_atividade: TwwDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure dseAfterOpen(DataSet: TDataSet);
    procedure dseAfterScroll(DataSet: TDataSet);
    procedure dse_detalheNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btn_licencasClick(Sender: TObject);
    procedure dse_detalheAfterOpen(DataSet: TDataSet);
  private
    procedure mostra_cnpj_cpf;
    procedure open_aux_queries; 
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cliente_atividade: Tfrm_cliente_atividade;

implementation

uses unt_constantes, unt_proc_abrir_telas, unt_procedures;

{$R *.dfm}

procedure Tfrm_cliente_atividade.open_aux_queries;
begin
  Application.ProcessMessages;
end;

procedure Tfrm_cliente_atividade.btn_licencasClick(Sender: TObject);
begin
  abrir_licenca(
    dse.FieldByName('id').AsInteger,
    dse_detalhe.FieldByName('id_atividade').AsInteger);
end;

procedure Tfrm_cliente_atividade.dseAfterOpen(DataSet: TDataSet);
begin
  inherited;
  TStringField(dse.FieldByName('cpf')).EditMask := msk_cpf;
  TStringField(dse.FieldByName('cnpj')).EditMask := msk_cnpj;
end;

procedure Tfrm_cliente_atividade.dseAfterScroll(DataSet: TDataSet);
begin
  inherited;
  mostra_cnpj_cpf
end;

procedure Tfrm_cliente_atividade.dse_detalheAfterOpen(DataSet: TDataSet);
begin
  inherited;
  carrega_combo_atividade(cmb_atividade);
end;

procedure Tfrm_cliente_atividade.dse_detalheNewRecord(DataSet: TDataSet);
begin
  inherited;
  dse_detalhe.FieldByName('id_cliente').AsInteger := dse.FieldByName(key_field).AsInteger;
end;

procedure Tfrm_cliente_atividade.FormCreate(Sender: TObject);
begin
  key_field := 'id';
  table_name := 'cliente_atividade';
  inherited;
end;

procedure Tfrm_cliente_atividade.FormShow(Sender: TObject);
begin
  inherited;
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

end.
