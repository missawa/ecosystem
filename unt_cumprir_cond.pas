unit unt_cumprir_cond;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  ComCtrls,
  StdCtrls,
  Buttons,
  ExtCtrls,
  ShellApi,
  wwdbdatetimepicker, Mask, wwdbedit, Wwdotdot, Wwdbcomb;

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
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    cmb_categoria: TwwDBComboBox;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure cumprir;
    { Private declarations }
  public
    id_cliente: integer;
    id_licenca: integer;
    id_condicionante: integer;
    id_categoria: integer;
    dt_venc: TDate;
    prazo: integer;
    num_cond: string;
    id_responsavel: integer;
    cumprida: string;
    descricao: string;
  end;

var
  frm_cumprir_cond: Tfrm_cumprir_cond;

implementation

uses unt_func_messages, unt_functions, unt_procedures, unt_dtm_geral;

{$R *.dfm}

procedure Tfrm_cumprir_cond.cumprir;
var
  prot: string;
begin

  prot := StringReplace(edt_protocolo.Text,'\','\\',[rfReplaceAll]);

  exec_sql(
    'update condicionante                                                       '#13+
    'set protocolo = ' + quotedstr(prot) + ','                                  +#13+
    '    dt_cumprimento = ' + data_sql(dtp_data.Date) + ','                     +#13+
    '    cumprida = ''S''                                                       '#13+
    'where id = ' + inttostr(id_condicionante));
  close;
end;

procedure Tfrm_cumprir_cond.SpeedButton1Click(Sender: TObject);
var
  pst_cliente: string;
  pst_licenca: string;
  arq: string;
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
    edt_protocolo.Text := pst_licenca + '\' + 'Cond_' + num_cond + '.pdf';
    
    CopyFile(
      pchar(arq),
      pchar(edt_protocolo.Text),
      false)
  end;
end;

procedure Tfrm_cumprir_cond.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_cumprir_cond.btnConfirmarClick(Sender: TObject);
var
  novo_venc: TDate;
  num_lic: string;
begin
  if trim(edt_protocolo.Text) = '' then
  begin
    if msg_quest('Deseja salvar sem número de protocolo?') then
      cumprir
    else
      msg_alert('Informe o número do protocolo');
  end
  else
  begin
    if id_categoria in [3,4,5,6,7]  then
    begin
      if msg_quest('Deseja criar uma cópia desta condicionante ' + cmb_categoria.Text + '?') then
      begin
        num_lic := input_texto('Número', num_cond);
        novo_venc := proximo_vencimento(id_categoria, dt_venc);
        nova_condicionante(
          id_licenca,
          num_lic,
          prazo,
          id_categoria,
          id_responsavel,
          cumprida,
          0,
          novo_venc,
          decmonth(novo_venc),
          descricao);
      end;
    end;

    cumprir;
  end;
end;

end.
