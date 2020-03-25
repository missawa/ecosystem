unit unt_relatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, ExtCtrls, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, StdCtrls, Mask, wwdbedit, Wwdotdot, Wwdbcomb,
  Buttons, ppVar, ppCtrls, ppPrnabl, ppBands, ppCache, ppStrtch, ppMemo;

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
    ppLine1: TppLine;
    ppLine2: TppLine;
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
    procedure pnl_tituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_imprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_relatorio: Tfrm_relatorio;

implementation

uses unt_dtm_dados, unt_procedures;

{$R *.dfm}

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
end;

procedure Tfrm_relatorio.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_relatorio.btn_imprimirClick(Sender: TObject);
begin
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
