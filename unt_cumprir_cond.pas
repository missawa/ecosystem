unit unt_cumprir_cond;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls;

type
  Tfrm_cumprir_cond = class(TForm)
    Panel2: TPanel;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    Panel3: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    edt_protocolo: TEdit;
    DateTimePicker1: TDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cumprir_cond: Tfrm_cumprir_cond;

implementation

{$R *.dfm}

end.
