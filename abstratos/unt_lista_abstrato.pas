unit unt_lista_abstrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdblook, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, ExtCtrls,
  Buttons, DB, IBCustomDataSet, IBQuery, IBDatabase, Grids, Wwdbigrd, Wwdbgrid,
  Wwdotdot, Wwdbcomb, ADODB;

type
  Tfrm_lista_abstrato = class(TForm)
    pnlTitulo: TPanel;
    pnlClient: TPanel;
    dts: TDataSource;
    grd: TwwDBGrid;
    Panel1: TPanel;
    btnOK: TSpeedButton;
    btnCancelar: TSpeedButton;
    Bevel1: TBevel;
    dse: TADODataSet;
    qry: TADOQuery;
    procedure pnlTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pnlTituloDblClick(Sender: TObject);
  private
    procedure CarregarDados;
    {Private}
  protected
    FTabela: string;
    FChave: string;
    procedure CreateParams(var Params: TCreateParams); override;
  public
    Confirmado: boolean;
  end;

var
  frm_lista_abstrato: Tfrm_lista_abstrato;

implementation

uses unt_procedures, unt_dtm_dados;

{$R *.dfm}

procedure Tfrm_lista_abstrato.CarregarDados;
begin
  if dse.CommandText <> EmptyStr then
    dse.Open;
end;

procedure Tfrm_lista_abstrato.CreateParams(var Params: TCreateParams);
begin
  inherited;
  Params.Style := WS_BORDER;
  BorderStyle := bsNone;
  BorderWidth := 0;
end;

procedure Tfrm_lista_abstrato.btnCancelarClick(Sender: TObject);
begin
  Confirmado := false;
  if FormStyle = fsMDIChild then
    close
  else
    ModalResult := mrCancel;
end;

procedure Tfrm_lista_abstrato.btnOKClick(Sender: TObject);
begin
  Confirmado := true;
  if FormStyle = fsMDIChild then
    close
  else
    ModalResult := mrOK;
end;

procedure Tfrm_lista_abstrato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_lista_abstrato.FormCreate(Sender: TObject);
begin
  CarregarDados;
  centralizar_tela(self);
end;

procedure Tfrm_lista_abstrato.pnlTituloDblClick(Sender: TObject);
begin
  if WindowState = wsMaximized then
    WindowState := wsNormal
  else
    WindowState := wsMaximized;
end;

procedure Tfrm_lista_abstrato.pnlTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
