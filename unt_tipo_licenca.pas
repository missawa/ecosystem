unit unt_tipo_licenca;

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
  StdCtrls,
  Mask,
  wwdbedit,
  unt_lista_abstrato, MemDS, DBAccess, Uni;

type
  Tfrm_tipo_licenca = class(Tfrm_lista_abstrato)
    edt_nome: TwwDBEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tipo_licenca: Tfrm_tipo_licenca;

implementation

{$R *.dfm}

procedure Tfrm_tipo_licenca.FormCreate(Sender: TObject);
begin
  inherited;
  Application.ProcessMessages;
end;

end.
