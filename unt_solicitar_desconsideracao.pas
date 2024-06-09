unit unt_solicitar_desconsideracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdbdatetimepicker, StdCtrls, Buttons, ExtCtrls;

type
  Tfrm_solicitar_desconsideracao = class(TForm)
    Panel2: TPanel;
    btnConfirmar: TSpeedButton;
    btnCancelar: TSpeedButton;
    Panel3: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    btn_abrir: TSpeedButton;
    dtp_data: TwwDBDateTimePicker;
    procedure btn_abrirClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    arq: string;
    arq_dest: string;
  public
    id_cliente: integer;
    id_licenca: integer;
    id_condicionante: integer;
    num_cond: string;
  end;

var
  frm_solicitar_desconsideracao: Tfrm_solicitar_desconsideracao;

implementation

uses unt_functions, unt_dtm_geral, unt_procedures;

{$R *.dfm}

procedure Tfrm_solicitar_desconsideracao.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_solicitar_desconsideracao.btnConfirmarClick(Sender: TObject);
begin

  exec_sql(
    'update condicionante                                                       '#13+
    'set solic_desconsid = ' + data_sql(dtp_data.Date)                          +#13+
    'where id = ' + inttostr(id_condicionante));

  CopyFile(
    pchar(arq),
    pchar(arq_dest),
    false);
  close;
end;

procedure Tfrm_solicitar_desconsideracao.btn_abrirClick(Sender: TObject);
var
  pst_cliente: string;
  pst_licenca: string;
begin

  pst_cliente := get_customer_folder(id_cliente);

  if not DirectoryExists(pst_cliente) then
    CreateDir(pst_cliente);

  pst_licenca := pst_cliente + '\' + intToStr(id_licenca);

  if not DirectoryExists(pst_licenca) then
    CreateDir(pst_licenca);

  dm_geral.open_dialog.filter := 'Portable Document File|*.pdf' ;
  if dm_geral.open_dialog.execute then
  begin
    arq := dm_geral.open_dialog.filename;
    arq_dest := pst_licenca + '\' + 'Desconsid_' + num_cond + '.pdf';
  end;
end;

end.
