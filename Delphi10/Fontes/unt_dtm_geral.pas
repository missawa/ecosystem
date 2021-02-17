unit unt_dtm_geral;

interface

uses
  SysUtils, Classes, Dialogs;

type
  Tdtm_geral = class(TDataModule)
    open_dialog: TOpenDialog;
    save_dialog: TSaveDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtm_geral: Tdtm_geral;

implementation

{$R *.dfm}

end.
