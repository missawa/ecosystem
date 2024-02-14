unit unt_categorias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unt_lista_abstrato, DBAccess, Uni, DB, MemDS, Buttons, Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls;

type
  Tfrm_categorias = class(Tfrm_lista_abstrato)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_categorias: Tfrm_categorias;

implementation

{$R *.dfm}

end.
