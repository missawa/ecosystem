unit unt_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, DB, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Menus,
  StdCtrls, jpeg;

type
  Tfrm_principal = class(TForm)
    ToolBar1: TToolBar;
    btn_cliente: TToolButton;
    btn_usuario: TToolButton;
    btn_relatorio: TToolButton;
    btn_config: TToolButton;
    ToolButton3: TToolButton;
    btn_fechar: TToolButton;
    btn_cadastro: TToolButton;
    mnu_cadastro: TPopupMenu;
    mnu_uf: TMenuItem;
    mnu_municipio: TMenuItem;
    mnu_atividade: TMenuItem;
    rgoAmbiental1: TMenuItem;
    N1: TMenuItem;
    mnu_tipo_licenca: TMenuItem;
    imgMultidev: TImage;
    lblVersao: TLabel;
    img_logo: TImage;
    Shape1: TShape;
    procedure FormShow(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_usuarioClick(Sender: TObject);
    procedure mnu_ufClick(Sender: TObject);
    procedure mnu_municipioClick(Sender: TObject);
    procedure btn_clienteClick(Sender: TObject);
    procedure mnu_atividadeClick(Sender: TObject);
    procedure rgoAmbiental1Click(Sender: TObject);
    procedure mnu_tipo_licencaClick(Sender: TObject);
    procedure btn_relatorioClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
  private
    function log_ok: boolean;
  public
    { Public declarations }
  end;

var
  frm_principal: Tfrm_principal;

implementation

uses
  unt_atividade,
  unt_cliente,
  unt_dtm_dados,
  unt_dtm_images,
  unt_func_messages,
  unt_municipio,
  unt_orgao_ambiental,
  unt_senha,
  unt_tipo_licenca,
  unt_uf,
  unt_usuario, unt_relatorio;

{$R *.dfm}

procedure Tfrm_principal.btn_clienteClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_cliente, frm_cliente);
end;

procedure Tfrm_principal.btn_fecharClick(Sender: TObject);
begin
  try
    Application.Terminate;
  except
    Application.ProcessMessages;
  end;
end;

procedure Tfrm_principal.btn_relatorioClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_relatorio, frm_relatorio);
end;

procedure Tfrm_principal.btn_usuarioClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_usuario, frm_usuario);
end;

procedure Tfrm_principal.FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  img_logo.Left := Trunc((Width - img_logo.Width)/2);
end;

procedure Tfrm_principal.FormShow(Sender: TObject);
begin
  if not log_ok then
    Application.Terminate;
end;

procedure Tfrm_principal.mnu_tipo_licencaClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_tipo_licenca, frm_tipo_licenca);
end;

function Tfrm_principal.log_ok: boolean;
begin
  try
    if Assigned(frm_senha) then
      FreeAndNil(frm_senha);

    frm_senha := Tfrm_Senha.Create(Application);
    frm_senha.ShowModal;
    result := frm_senha.ModalResult = mrOk;

  except
    on e: Exception do
      msg_error(e.Message);
  end;
end;

procedure Tfrm_principal.mnu_atividadeClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_atividade, frm_atividade);
end;

procedure Tfrm_principal.mnu_municipioClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_municipio, frm_municipio);
end;

procedure Tfrm_principal.mnu_ufClick(Sender: TObject);
begin
  Application.CreateForm(Tfrm_uf, frm_uf);
end;

procedure Tfrm_principal.rgoAmbiental1Click(Sender: TObject);
begin
  Application.CreateForm(Tfrm_orgao_ambiental, frm_orgao_ambiental);
end;

end.
