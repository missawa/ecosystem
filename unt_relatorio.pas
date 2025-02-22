unit unt_relatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, ExtCtrls, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  Buttons, ppVar, ppCtrls, ppPrnabl, ppBands, ppCache, ppStrtch, ppMemo,
  wwdbdatetimepicker, ppModule, raCodMod, ppParameter;

type
  Tfrm_relatorio = class(TForm)
    qry_01: TUniQuery;
    pnl_parametros: TPanel;
    Label2: TLabel;
    cmb_tipo: TwwDBComboBox;
    dts_01: TDataSource;
    pip_01: TppDBPipeline;
    rel_01: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel8: TppLabel;
    btn_imprimir: TSpeedButton;
    ppDBMemo1: TppDBMemo;
    ppDBText6: TppDBText;
    dtp_venc_ini: TwwDBDateTimePicker;
    lbl_periodo_venc: TLabel;
    dtp_venc_fim: TwwDBDateTimePicker;
    Label3: TLabel;
    cmb_situacao: TwwDBComboBox;
    lbl_situacao: TLabel;
    ppShape1: TppShape;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    cmb_cliente: TwwDBComboDlg;
    lbl_cliente: TLabel;
    qry: TUniQuery;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    lbl_periodo_aviso: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dtp_aviso_fim: TwwDBDateTimePicker;
    dtp_aviso_ini: TwwDBDateTimePicker;
    Panel3: TPanel;
    btn_fechar: TSpeedButton;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine1: TppLine;
    ppImage1: TppImage;
    ppDBText3: TppDBText;
    pip_01ppField11: TppField;
    qry_02: TUniQuery;
    qry_02municipio: TStringField;
    qry_02cnpj: TStringField;
    qry_02nome: TStringField;
    qry_02fantasia: TStringField;
    dts_02: TDataSource;
    pip_02: TppDBPipeline;
    rel_02: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel2: TppLabel;
    ppImage2: TppImage;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppShape2: TppShape;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    raCodeModule2: TraCodeModule;
    ppLine2: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel9: TppLabel;
    ppShape3: TppShape;
    dts_03: TDataSource;
    pop_03: TppDBPipeline;
    rel_03: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel11: TppLabel;
    ppImage3: TppImage;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppDetailBand3: TppDetailBand;
    ppShape5: TppShape;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine3: TppLine;
    ppSystemVariable6: TppSystemVariable;
    ppLabel15: TppLabel;
    raCodeModule3: TraCodeModule;
    qry_03: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    procedure pnl_tituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure cmb_clienteCustomDlg(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure ppDBText1GetText(Sender: TObject; var Text: string);
    procedure cmb_tipoChange(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    procedure imprimir_rel01;
    procedure imprimir_rel02;
    procedure set_option_01;
    procedure set_option_02;
    procedure set_option_03;
    procedure imprimir_rel03;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_relatorio: Tfrm_relatorio;

implementation

uses unt_dtm_dados, unt_procedures, unt_functions, unt_func_messages;

{$R *.dfm}

procedure Tfrm_relatorio.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_relatorio.btn_imprimirClick(Sender: TObject);
begin
  case cmb_tipo.ItemIndex +1 of
    1: imprimir_rel01;
    2: imprimir_rel02;
    3: imprimir_rel03;
  end;


end;

procedure Tfrm_relatorio.cmb_clienteCustomDlg(Sender: TObject);
var
  ok: boolean;

begin
  try

    ok :=
      pesquisar(
        qry,
        'select id,nome,fantasia from pessoa where cliente = ''S''',
        'nome',
      self.Name);

    if ok then
    begin
      cmb_cliente.Text := qry.FieldByName('nome').Text ;
      cmb_cliente.Tag := qry.FieldByName('id').AsInteger;
    end;

  except
    on e:exception do msg_error('Erro 8755: ' + e.message);
  end;
end;

procedure Tfrm_relatorio.cmb_tipoChange(Sender: TObject);
begin
  case cmb_tipo.ItemIndex +1 of
    1: set_option_01;
    2: set_option_02;
    3: set_option_03
  end;
end;

procedure Tfrm_relatorio.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := WS_BORDER;
  BorderStyle := bsNone;
  BorderWidth := 0;
end;

procedure Tfrm_relatorio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_relatorio.FormCreate(Sender: TObject);
begin
  centralizar_tela(self);
  dtp_venc_ini.Clear;
  dtp_venc_fim.Clear;
  dtp_aviso_ini.Clear;
  dtp_aviso_fim.Clear;
end;

procedure Tfrm_relatorio.imprimir_rel01;
var
  venc_lic: string;
  venc_con: string;
  aviso_lic: string;
  aviso_con: string;
  cli: string;
  sit_lic: string;
  sit_con: string;

begin

  if (dtp_venc_ini.Text <> '') and (dtp_venc_fim.Text <> '') then
  begin
    venc_lic := between_datas('l.dt_venc', dtp_venc_ini.Date, dtp_venc_fim.Date) + #13;
    venc_con := between_datas('c.dt_venc', dtp_venc_ini.Date, dtp_venc_fim.Date) + #13;
  end
  else
  begin
    venc_lic := '  and l.dt_venc is not null          '#13;
    venc_con := '  and c.dt_venc is not null          '#13;
  end;

  if (dtp_aviso_ini.Text <> '') and (dtp_aviso_fim.Text <> '') then
  begin
    aviso_lic := between_datas('l.dt_venc', dtp_aviso_ini.Date, dtp_aviso_fim.Date) + #13;
    aviso_con := between_datas('c.dt_aviso', dtp_aviso_ini.Date, dtp_aviso_fim.Date) + #13;
  end
  else
  begin
    aviso_lic := '';
    aviso_con := '';
  end;

  case cmb_situacao.ItemIndex of
    0:
      begin
        sit_lic := '';
        sit_con := '';
      end;
    1:
      begin
        sit_lic := '    and l.renovada = ''S''                                  '#13;
        sit_con := '    and c.cumprida = ''S''                                  '#13;
      end;

    2:
      begin
        sit_lic := '    and (l.renovada = ''N'' or l.renovada is null)          '#13;
        sit_con := '    and (c.cumprida = ''N'' or c.cumprida is null)          '#13;
      end;
  end;

  if cmb_cliente.Text = '' then
    cli := ''
  else
    cli := '    and p.id = ' + intToStr(cmb_cliente.Tag) + #13;

  qry_01.Close;
  qry_01.SQL.Text :=
    'select                               '#13+
    '    ''LICEN�A'' as tipo,             '#13+
    '    l.id as id_licenca,              '#13+
    '    0 as condicionante,              '#13+
    '    p.id,                            '#13+
    '    p.cnpj,                          '#13+
    '    p.nome,                          '#13+
    '    p.fantasia,                      '#13+
    '    0 as id_responsavel,             '#13+
    '    l.numero,                        '#13+
    '    l.descricao,                     '#13+
    '    l.dt_venc,                       '#13+
    '    null as dt_aviso                 '#13+
    'from pessoa p                        '#13+
    '  left join licenca l                '#13+
    '    on l.id_cliente = p.id           '#13+
    'where p.cliente = ''S''                              '#13+
    '  and coalesce(l.renovada,''N'') <> ''S''            '#13+
    '  and p.situacao = ''A''             '#13+
    cli +
    venc_lic +
    aviso_lic +
    sit_lic +
    '                                     '#13+
    'union                                '#13+
    '                                     '#13+
    'select                               '#13+
    '    ''CONDIC.'' as tipo,             '#13+
    '    l.id as id_licenca,              '#13+
    '    c.numero as condicionante,       '#13+
    '    p.id,                            '#13+
    '    p.cnpj,                          '#13+
    '    p.nome,                          '#13+
    '    p.fantasia,                      '#13+
    '    c.id_responsavel,                '#13+
    '    l.numero,                        '#13+
    '    c.descricao,                     '#13+
    '    c.dt_venc,                       '#13+
    '    c.dt_aviso                       '#13+
    'from pessoa p                        '#13+
    '  left join licenca l                '#13+
    '    on l.id_cliente = p.id           '#13+
    '  left join condicionante c          '#13+
    '    on c.id_licenca = l.id           '#13+
    'where p.cliente = ''S''                              '#13+
    '  and coalesce(l.renovada,''N'') <> ''S''            '#13+
    '  and p.situacao = ''A''             '#13+
    cli +
    venc_con +
    aviso_con +
    sit_con +
    'order by nome, id_licenca, dt_aviso';

  qry_01.Open;

  rel_01.Print;
end;

procedure Tfrm_relatorio.pnl_tituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end
end;

procedure Tfrm_relatorio.ppDBText1GetText(Sender: TObject; var Text: string);
begin
  if qry_01.FieldByName('tipo').AsString = 'CONDIC.' then
    Text := qry_01.FieldByName('condicionante').AsString;

end;

procedure Tfrm_relatorio.imprimir_rel02;
begin
  qry_02.Open;
  rel_02.Print;
end;

procedure Tfrm_relatorio.imprimir_rel03;
begin
  qry_03.Open;
  rel_03.Print;
end;


procedure Tfrm_relatorio.set_option_01;
begin
  lbl_cliente.Enabled := true;
  cmb_cliente.Enabled := true;

  lbl_periodo_venc.Enabled := true;
  dtp_venc_ini.Enabled := true;
  dtp_venc_fim.Enabled := true;

  lbl_periodo_aviso.Enabled := true;
  dtp_aviso_ini.Enabled := true;
  dtp_aviso_fim.Enabled := true;

  lbl_situacao.Enabled := true;
  cmb_situacao.Enabled := true;
  cmb_situacao.Font.Color := clWindowText;
end;

procedure Tfrm_relatorio.set_option_02;
begin
  lbl_cliente.Enabled := false;
  cmb_cliente.Enabled := false;

  lbl_periodo_venc.Enabled := false;
  dtp_venc_ini.Enabled := false;
  dtp_venc_fim.Enabled := false;

  lbl_periodo_aviso.Enabled := false;
  dtp_aviso_ini.Enabled := false;
  dtp_aviso_fim.Enabled := false;

  lbl_situacao.Enabled := false;
  cmb_situacao.Enabled := false;
  cmb_situacao.Font.Color := cl3DLight;
end;

procedure Tfrm_relatorio.set_option_03;
begin
  lbl_cliente.Enabled := false;
  cmb_cliente.Enabled := false;

  lbl_periodo_venc.Enabled := false;
  dtp_venc_ini.Enabled := false;
  dtp_venc_fim.Enabled := false;

  lbl_periodo_aviso.Enabled := false;
  dtp_aviso_ini.Enabled := false;
  dtp_aviso_fim.Enabled := false;

  lbl_situacao.Enabled := false;
  cmb_situacao.Enabled := false;
  cmb_situacao.Font.Color := cl3DLight;
end;


end.
