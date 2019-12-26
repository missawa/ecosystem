unit unt_input_inteiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit;

type
  Tfrm_input_inteiro = class(TForm)
    pnl_geral: TPanel;
    pnl_moldura_valor: TPanel;
    edt_valor: TEdit;
    shp_geral: TShape;
    pnlTitulo: TPanel;
    shpTitulo: TShape;
    lbl_titulo: TLabel;
    btn_ok: TSpeedButton;
    procedure btn_okClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edt_valorKeyPress(Sender: TObject; var Key: Char);
    procedure edt_valorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure shpTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_input_inteiro: Tfrm_input_inteiro;

implementation

{$R *.dfm}

procedure Tfrm_input_inteiro.btn_okClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure Tfrm_input_inteiro.edt_valorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  i: integer;
  aux: string;
begin
  if (Shift = [ssCtrl]) and (Key in [ord('v'),ord('V')]) then
  begin
    edt_valor.PasteFromClipboard;
    aux := '';
    for i := 1 to length(edt_valor.Text) do
    begin
      if edt_valor.Text[i] in ['0'..'9'] then
        aux := aux + edt_valor.Text[i];
    end;
    edt_valor.Text := aux;
  end;
  edt_valor.SelStart := Length(TEdit(Sender).Text);
end;

procedure Tfrm_input_inteiro.edt_valorKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9',chr(vk_back)]) then
    Key := #0;

end;

procedure Tfrm_input_inteiro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn_ok.Click
  else if Key = #27 then
    ModalResult := mrCancel;
end;


procedure Tfrm_input_inteiro.shpTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
