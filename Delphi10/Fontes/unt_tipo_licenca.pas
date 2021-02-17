unit unt_tipo_licenca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, StdCtrls, Mask, wwdbedit, ExtCtrls,
  Buttons, Grids, Wwdbigrd, Wwdbgrid;

type
  Tfrm_tipo_licenca = class(TForm)
    pnlTitulo: TPanel;
    pnlClient: TPanel;
    grd: TwwDBGrid;
    Panel1: TPanel;
    btnOK: TSpeedButton;
    btnCancelar: TSpeedButton;
    Bevel1: TBevel;
    edt_nome: TwwDBEdit;
    dts: TDataSource;
    qry: TUniQuery;
    dse: TUniQuery;
    edt_sigla: TwwDBEdit;
    procedure pnlTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure dseAfterPost(DataSet: TDataSet);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
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
  frm_tipo_licenca: Tfrm_tipo_licenca;

implementation

uses unt_dtm_dados, unt_procedures;

{$R *.dfm}

procedure Tfrm_tipo_licenca.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := WS_BORDER;
  BorderStyle := bsNone;
  BorderWidth := 0;
end;

procedure Tfrm_tipo_licenca.btnCancelarClick(Sender: TObject);
begin
  dse.Cancel;
  close;
end;

procedure Tfrm_tipo_licenca.btnOKClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_tipo_licenca.dseAfterPost(DataSet: TDataSet);
begin
  dse.Refresh;
end;

procedure Tfrm_tipo_licenca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_tipo_licenca.FormCreate(Sender: TObject);
begin
  centralizar_tela(self);
end;

procedure Tfrm_tipo_licenca.pnlTituloMouseDown(Sender: TObject;
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
