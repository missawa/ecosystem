unit unt_progresso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  Tfrm_progresso = class(TForm)
    ProgressBar1: TProgressBar;
    lblContagem: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_progresso: Tfrm_progresso;

implementation

{$R *.dfm}

end.
