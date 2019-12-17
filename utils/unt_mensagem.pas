unit unt_mensagem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ShellAPI, ClipBrd, ppCtrls, ppBands,ComObj,
  ppStrtch, ppMemo, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppVar, Menus, ExtCtrls, ComCtrls, RichEdit, jpeg, rxPlacemnt;


type
  Tfrm_mensagem = class(TForm)
    pnlGeral: TPanel;
    mmo_mensagem: TRichEdit;
    Panel2: TPanel;
    btn_copiar: TSpeedButton;
    btn_ok: TSpeedButton;
    btn_sim: TSpeedButton;
    btn_nao: TSpeedButton;
    SaveDialog1: TSaveDialog;
    pnl_titulo: TPanel;
    shpBottomLine: TShape;
    btn_multidev: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_copiarClick(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btn_simClick(Sender: TObject);
    procedure pnlMensagemxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pnlGeralMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn_multidevClick(Sender: TObject);
  private
    {private declarations}
  public
    AlturaMaxima : Integer;
    AlturaMinima : Integer;
    IdError: Integer;

  protected
    procedure WndProc(var Msg: TMessage); override;
  end;

var
  frm_mensagem: Tfrm_mensagem;

implementation

uses
  unt_dtm_dados, unt_principal, unt_functions;

{$R *.DFM}

procedure Tfrm_mensagem.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrNo;
end;

procedure Tfrm_mensagem.btn_copiarClick(Sender: TObject);
begin
  Clipboard.AsText := mmo_mensagem.Text;
end;

procedure Tfrm_mensagem.btn_multidevClick(Sender: TObject);
begin
  {EnviarEmail(
    'Erro Intermedicina',
    'contato@multidev.com.br',
    TStringList(mmoMensagem.Lines),
    'Erro gerado por ' + frmDtmDados.NomeUsuarioCorrente);}
end;

procedure Tfrm_mensagem.btn_simClick(Sender: TObject);
begin
  ModalResult := mrYes;
end;

procedure Tfrm_mensagem.btn_okClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure Tfrm_mensagem.FormCreate(Sender: TObject);
begin
  AlturaMaxima := 327;
  AlturaMinima := 169;


  Screen.Cursor := crDefault;
end;

procedure Tfrm_mensagem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    #13: btn_sim.Click;
    #27: btn_nao.Click;
  end;
end;

procedure Tfrm_mensagem.pnlGeralMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure Tfrm_mensagem.pnlMensagemxMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbleft then
  begin
    ReleaseCapture;
    self.Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;


procedure ScrollMemo(Memo: TRichEdit; Direction: Integer);
var
  ScrollMessage: TWMVScroll;
  I: Integer;
begin
  ScrollMessage.Msg := WM_VSCROLL;
  Memo.Lines.BeginUpdate;
  try
    for I := 0 to Memo.Lines.Count do
    begin
     ScrollMessage.ScrollCode := Direction;
     ScrollMessage.Pos := 0;
     Memo.Dispatch(ScrollMessage);
    end;
  finally
    Memo.Lines.EndUpdate;
  end;
end;

procedure Tfrm_mensagem.FormShow(Sender: TObject);
begin
  pnlGeral.Color := frm_mensagem.Color;
  mmo_mensagem.Color := frm_mensagem.Color;
  pnl_titulo.Color := frm_mensagem.Color;

  mmo_mensagem.Enabled := true;
  ScrollMemo(mmo_mensagem,SB_LINEUP);
  Screen.Cursor := crDefault;
end;

procedure Tfrm_mensagem.WndProc(var msg: TMessage);
var p: TENLink;
    sURL: String;
    ce: TRichEdit;
begin
  if (msg.Msg = WM_NOTIFY) then
  begin
    if (PNMHDR(Msg.lParam).code = EN_LINK) then
    begin
      p := TENLink(Pointer(TWMNotify(Msg).NMHdr)^);
      if (p.Msg = WM_LBUTTONDOWN) then
      begin
        try
          CE := TRichEdit(frm_mensagem.ActiveControl);
          SendMessage(CE.Handle, EM_EXSETSEL, 0, Longint(@(p.chrg)));
          sURL := CE.SelText;
          ShellExecute(Handle, 'open', PChar(sURL), 0, 0, SW_SHOWNORMAL);
        except
        end;
      end;
    end;
  end;
  inherited;
end;

end.
