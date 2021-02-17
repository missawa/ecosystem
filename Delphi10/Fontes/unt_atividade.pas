unit unt_atividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB, MemDS, DBAccess,
  Uni;

type
  Tfrm_atividade = class(TForm)
    pnlTitulo: TPanel;
    qry: TUniQuery;
    dts: TDataSource;
    dse: TUniQuery;
    pnlClient: TPanel;
    grd: TwwDBGrid;
    Panel1: TPanel;
    btnOK: TSpeedButton;
    btnCancelar: TSpeedButton;
    Bevel1: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnCancelarClick(Sender: TObject);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
  private
    FTabela: string;
    FChave: string;
    procedure CarregarDados;
  public
    Confirmado: boolean;
  end;
var
  frm_atividade: Tfrm_atividade;

implementation

uses unt_dtm_dados, unt_procedures;

{$R *.dfm}

{ Tfrm_atividade }

procedure Tfrm_atividade.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_atividade.CarregarDados;
begin
  if dse.SQL.Text <> EmptyStr then
    dse.Open;
end;

procedure Tfrm_atividade.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := WS_BORDER;
  BorderStyle := bsNone;
  BorderWidth := 0;
end;

procedure Tfrm_atividade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dse.Close;
  Action := caFree;
end;

procedure Tfrm_atividade.FormCreate(Sender: TObject);
begin
  centralizar_tela(self);
  dse.Open;
end;

procedure Tfrm_atividade.pnlTituloMouseDown(Sender: TObject;
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
