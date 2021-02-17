
unit unt_input_texto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit,
  wwdbdatetimepicker, wwdbedit;

type
  Tfrm_input_texto = class(TForm)
    pnlGeral: TPanel;
    pnlLeft: TPanel;
    pnlBottom: TPanel;
    pnlCenter: TPanel;
    pnlRight: TPanel;
    btnOk: TSpeedButton;
    Panel1: TPanel;
    mmo_texto: TMemo;
    pnlTop: TPanel;
    pnl_titulo: TPanel;
    procedure btnOkClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure mmo_textoKeyPress(Sender: TObject; var Key: Char);
    procedure pnl_tituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    MaxLength: integer;
    Senha: string;
    FCharCase: char;
  end;

var
  frm_input_texto: Tfrm_input_texto;

implementation

uses unt_func_messages, unt_functions;

{$R *.dfm}

procedure Tfrm_input_texto.btnOkClick(Sender: TObject);
begin
  if (MaxLength <> 0) and (Length(mmo_texto.Text) > MaxLength) then
    msg_alert('O tamanho máximo do texto é de ' + intToStr(MaxLength) + ' caracteres.')
  else
    ModalResult := mrOK;
end;

procedure Tfrm_input_texto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then btnOk.Click;
end;

procedure Tfrm_input_texto.FormResize(Sender: TObject);
begin
  abort;
end;

procedure Tfrm_input_texto.mmo_textoKeyPress(Sender: TObject; var Key: Char);
var
  letra: string;
begin

  if FCharCase = 'U' then
    letra := maiusculas(Key)
  else if FCharCase = 'L' then
    letra := LowerCase(Key)
  else
    letra := Key;

  Key := letra[1];

end;

procedure Tfrm_input_texto.pnl_tituloMouseDown(Sender: TObject;
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
