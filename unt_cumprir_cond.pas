unit unt_cumprir_cond;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, ExtCtrls, wwdbdatetimepicker;

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
    dtp_data: TwwDBDateTimePicker;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    procedure cumprir;
    { Private declarations }
  public
    id_condicionante: integer;
  end;

var
  frm_cumprir_cond: Tfrm_cumprir_cond;

implementation

uses unt_func_messages, unt_functions, unt_procedures;

{$R *.dfm}

procedure Tfrm_cumprir_cond.cumprir;
begin
  exec_sql(
    'update condicionante                                                       '#13+
    'set protocolo = ' + quotedstr(edt_protocolo.text) + ','                    +#13+
    '    dt_cumprimento = ' + data_sql(dtp_data.Date) + ','                     +#13+
    '    cumprida = ''S''                                                       '#13+
    'where id = ' + inttostr(id_condicionante));
  close;
end;

procedure Tfrm_cumprir_cond.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_cumprir_cond.btnConfirmarClick(Sender: TObject);
begin
  if trim(edt_protocolo.Text) = '' then
  begin
    if msg_quest('Deseja salvar sem número de protocolo?') then
      cumprir
    else
      msg_alert('Informe o número do protocolo');
  end
  else
    cumprir;
end;

end.
