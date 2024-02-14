unit unt_usuario;

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
  DB,
  ExtCtrls,
  Buttons,
  Grids,
  Wwdbigrd,
  Wwdbgrid,
  DBClient,
  Provider,
  MemDS,
  DBAccess,
  Uni,
  unt_lista_abstrato;

type
  Tfrm_usuario = class(TForm)
    pnlTitulo: TPanel;
    pnlClient: TPanel;
    grd: TwwDBGrid;
    dts_usuario: TDataSource;
    dse_usuario: TUniQuery;
    btn_fechar: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_fecharClick(Sender: TObject);
  protected
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_usuario: Tfrm_usuario;

implementation

uses unt_dtm_dados, unt_procedures;

{$R *.dfm}

procedure Tfrm_usuario.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_usuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_usuario.FormCreate(Sender: TObject);
begin
  centralizar_tela(self);
  dse_usuario.Open;
end;

end.
