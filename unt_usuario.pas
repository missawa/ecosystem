unit unt_usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unt_lista_abstrato, ADODB, DB, ExtCtrls, Buttons, Grids, Wwdbigrd,
  Wwdbgrid;

type
  Tfrm_usuario = class(Tfrm_lista_abstrato)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_usuario: Tfrm_usuario;

implementation

{$R *.dfm}

end.
