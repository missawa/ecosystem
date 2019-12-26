unit unt_atividade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unt_lista_abstrato, ADODB, DB, ExtCtrls, Buttons, Grids, Wwdbigrd,
  Wwdbgrid;

type
  Tfrm_atividade = class(Tfrm_lista_abstrato)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_atividade: Tfrm_atividade;

implementation

{$R *.dfm}

procedure Tfrm_atividade.FormCreate(Sender: TObject);
begin
  inherited;
  Application.ProcessMessages;
end;

end.
