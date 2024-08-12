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
  wwdbdatetimepicker,
  Mask,
  wwdbedit,
  Wwdotdot,
  Wwdbcomb,
  Uni;

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
    btn_doc: TSpeedButton;
    Label1: TLabel;
    cmb_categoria: TwwDBComboBox;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btn_docClick(Sender: TObject);
  private
    arq: string;
    procedure cumprir;
    procedure criar_copia_cond;
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

uses
  unt_func_messages,
  unt_functions,
  unt_procedures,
  unt_dtm_geral,
  unt_dtm_dados;

{$R *.dfm}

procedure Tfrm_cumprir_cond.cumprir;
var
  prot: string;
begin

  try
    CopyFile(
      pchar(arq),
      pchar(edt_protocolo.Text),
      false);

    prot := StringReplace(edt_protocolo.Text,'\','\\',[rfReplaceAll]);

    exec_sql(
      'update condicionante                                                       '#13+
      'set protocolo = ' + quotedstr(prot) + ','                                  +#13+
      '    dt_cumprimento = ' + data_sql(dtp_data.Date) + ','                     +#13+
      '    cumprida = ''S''                                                       '#13+
      'where id = ' + inttostr(id_condicionante));

    criar_copia_cond;
    close;
  except
    on e:exception do msg_error('Erro ao cumprir condicionante'#13#13+e.message);

  end;
end;

procedure Tfrm_cumprir_cond.btn_docClick(Sender: TObject);
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
    edt_protocolo.Text := pst_licenca + '\' + 'Cond_' + num_cond + '.pdf';
  end;
end;

procedure Tfrm_cumprir_cond.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_cumprir_cond.criar_copia_cond;
var
  novo_venc: TDate;
  num_lic: string;
  q: TUniQuery;
  criar: boolean;
begin

  q := TUniQuery.Create(nil);
  q.Connection := dtm_dados.mysql_conn;

  open_query(
    q,
    'select criar_copia from categoria where id = ' + intToStr(id_categoria));

  if q.IsEmpty then
    criar := false
  else
    criar := q.FieldByName('criar_copia').AsString = 'S';

  if criar  then
  begin
    if msg_quest('Deseja criar uma cópia desta condicionante ' + cmb_categoria.Text + '?') then
    begin
      num_lic := input_texto('Número', num_cond);
      novo_venc := proximo_vencimento(id_categoria, dt_venc);
      nova_condicionante(
        id_licenca,
        num_lic,
        0,
        id_categoria,
        id_responsavel,
        cumprida,
        0,
        0,
        0,
        descricao);
    end;
  end;
  q.free;

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
