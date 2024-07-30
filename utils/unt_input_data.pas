unit unt_input_data;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, rxToolEdit, rxCurrEdit,
  wwdbdatetimepicker;

type
  Tfrm_input_data = class(TForm)
    pnl_geral: TPanel;
    shp_geral: TShape;
    pnlTitulo: TPanel;
    shpTitulo: TShape;
    lbl_titulo: TLabel;
    btn_ok: TSpeedButton;
    dtp_data: TwwDBDateTimePicker;
    procedure btn_okClick(Sender: TObject);
    procedure shpTituloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_input_data: Tfrm_input_data;

implementation

{$R *.dfm}

procedure Tfrm_input_data.btn_okClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure Tfrm_input_data.shpTituloMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
