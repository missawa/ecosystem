unit unt_lista_abstrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdblook, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, ExtCtrls,
  Buttons, DB, IBCustomDataSet, IBQuery, IBDatabase, Grids, Wwdbigrd, Wwdbgrid,
  Wwdotdot, Wwdbcomb, Uni, MemDS, DBAccess;

type
  Tfrm_lista_abstrato = class(TForm)
    pnlTitulo: TPanel;
    pnlClient: TPanel;
    dts: TDataSource;
    grd: TwwDBGrid;
    Panel1: TPanel;
    btnOK: TSpeedButton;
    btnCancelar: TSpeedButton;
    qry: TUniQuery;
    dse: TUniQuery;
    tra: TUniTransaction;
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
  if dse.SQL.Text <> EmptyStr then
    dse.Open;
end;

procedure Tfrm_lista_abstrato.btnCancelarClick(Sender: TObject);
begin
  tra.Rollback;
  Confirmado := false;
  if FormStyle = fsMDIChild then
    close
  else
    ModalResult := mrCancel;
end;

procedure Tfrm_lista_abstrato.btnOKClick(Sender: TObject);
begin
  tra.Commit;
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
  tra.StartTransaction;
end;

procedure Tfrm_lista_abstrato.pnlTituloDblClick(Sender: TObject);
begin
  if WindowState = wsMaximized then
    WindowState := wsNormal
  else
    WindowState := wsMaximized;
end;

end.
