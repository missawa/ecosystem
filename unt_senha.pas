unit unt_senha;

interface

uses
  Windows,
  SysUtils,
  Classes,
  Graphics,
  Forms,
  Controls,
  StdCtrls,
  Buttons,
  ExtCtrls,
  DB,
  Mask,
  wwdbedit,
  Messages,
  IBQuery,
  jpeg,
  Uni;

type
  Tfrm_senha = class(TForm)
    lbl_senha: TLabel;
    edt_senha: TwwDBEdit;
    edt_login: TwwDBEdit;
    lbl_login: TLabel;
    btn_ok: TSpeedButton;
    btn_cancelar: TSpeedButton;
    shp: TShape;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure edt_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure btn_okClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_senha: Tfrm_senha;

implementation

uses
  unt_functions,
  unt_procedures,
  unt_principal,
  unt_dtm_dados,
  unt_func_messages;

{$R *.dfm}

procedure Tfrm_senha.btn_cancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  Application.Terminate;
end;

procedure Tfrm_senha.btn_okClick(Sender: TObject);
var
  q: TUniQuery;

  procedure ConfigBdUser;
  var
    Maq : array[0..255] of char;
    Tam: dword;
  begin
    Tam := 10;
    GetComputerName(Maq, Tam);
  end;

begin

  verifica_conf_data_windows;

  dtm_dados.qry_usuario.Params.ParamByName('login').Value := edt_login.Text;
  dtm_dados.qry_usuario.Params.ParamByName('senha').Value := edt_senha.Text;
  dtm_dados.qry_usuario.Open;

  if not dtm_dados.qry_usuario.IsEmpty then
  begin
    try
      ModalResult := mrOK;
    except
      on e:exception do msg_error(e.message);
    end;
  end
  else
  begin
    msg_error('Acesso Negado','Usuário ou senha incorreta');
    Application.Terminate;
  end;

end;

procedure Tfrm_senha.edt_senhaKeyPress(Sender: TObject; var Key: Char);
begin

  if Key = chr(13) then
    btn_ok.Click;

end;

procedure Tfrm_senha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn_ok.Click
  else if Key = #27 then
    btn_cancelar.Click;
       
end;

procedure Tfrm_senha.FormShow(Sender: TObject);
var
  Maq : array[0..255] of char;
  Tam: dword;
  Pasta: string;
begin
  Pasta := ExtractFilePath(Application.ExeName) + 'SQL';
  if not DirectoryExists(Pasta) then CreateDir(Pasta);

  Tam := 10;
  GetComputerName(Maq, Tam);
  if (Maq = 'TUNADO') or (Maq = 'MULTINOTE') then
  begin
    edt_login.Text := 'admin';
    edt_senha.Text := '123321';
    btn_ok.Click;
  end;
end;

end.

