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
    pnl_titulo: TPanel;
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
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppLabel7: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel8: TppLabel;
    btn_imprimir: TSpeedButton;
    btnFechar: TSpeedButton;
    ppDBMemo1: TppDBMemo;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    dtp_venc_ini: TwwDBDateTimePicker;
    Label1: TLabel;
    dtp_venc_fim: TwwDBDateTimePicker;
    Label3: TLabel;
    cmb_situacao: TwwDBComboBox;
    Label4: TLabel;
    ppShape1: TppShape;
    raCodeModule1: TraCodeModule;
    ppShape2: TppShape;
    ppParameterList1: TppParameterList;
    cmb_cliente: TwwDBComboDlg;
    Label5: TLabel;
    qry: TUniQuery;
    ppDBText7: TppDBText;
    ppLabel10: TppLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dtp_aviso_fim: TwwDBDateTimePicker;
    dtp_aviso_ini: TwwDBDateTimePicker;
    procedure pnl_tituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btn_imprimirClick(Sender: TObject);
    procedure cmb_clienteCustomDlg(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    procedure imprimir_rel01;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_relatorio: Tfrm_relatorio;

implementation

uses unt_dtm_dados, unt_procedures, unt_functions, unt_func_messages;

{$R *.dfm}

procedure Tfrm_relatorio.btn_imprimirClick(Sender: TObject);
begin
  imprimir_rel01;
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

procedure Tfrm_relatorio.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_relatorio.imprimir_rel01;
var
  venc_lic: string;
  venc_con: string;
  aviso_lic: string;
  aviso_con: string;
  cli: string;
  sit: string;
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
    0: sit := '';
    1: sit := '    and c.cumprida = ''S'''#13;
    2: sit := '    and c.cumprida = ''N'''#13;
  end;

  if cmb_cliente.Text = '' then
    cli := ''
  else
    cli := '    and p.id = ' + intToStr(cmb_cliente.Tag) + #13;

  qry_01.Close;
  qry_01.SQL.Text :=
    'select                               '#13+
    '    ''LICEN�A'' as tipo,             '#13+
    '    p.id,                            '#13+
    '    p.cnpj,                          '#13+
    '    p.nome,                          '#13+
    '    p.fantasia,                      '#13+
    '    l.numero,                        '#13+
    '    l.descricao,                     '#13+
    '    l.dt_venc,                       '#13+
    '    null as dt_aviso                 '#13+
    'from pessoa p                        '#13+
    '  left join licenca l                '#13+
    '    on l.id_cliente = p.id           '#13+
    'where cliente = ''S''                '#13+
    cli +
    venc_lic +
    aviso_lic +
    '                                     '#13+
    'union                                '#13+
    '                                     '#13+
    'select                               '#13+
    '    ''CONDIC.'' as tipo,             '#13+
    '    p.id,                            '#13+
    '    p.cnpj,                          '#13+
    '    p.nome,                          '#13+
    '    p.fantasia,                      '#13+
    '    l.numero,                        '#13+
    '    c.descricao,                     '#13+
    '    c.dt_venc,                       '#13+
    '    c.dt_aviso                       '#13+
    'from pessoa p                        '#13+
    '  left join licenca l                '#13+
    '    on l.id_cliente = p.id           '#13+
    '  left join condicionante c          '#13+
    '    on c.id_licenca = l.id           '#13+
    'where cliente = ''S''                '#13+
    cli +
    venc_con +
    aviso_con +
    sit +
    'order by dt_venc, id, numero ';
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

end.
