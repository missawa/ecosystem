unit unt_dtm_geral;

interface

uses
  SysUtils, Classes, Dialogs;

type
  Tdm_geral = class(TDataModule)
    open_dialog: TOpenDialog;
    save_dialog: TSaveDialog;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_geral: Tdm_geral;

implementation

{$R *.dfm}

end.
