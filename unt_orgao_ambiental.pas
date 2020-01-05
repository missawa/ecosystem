unit unt_orgao_ambiental;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unt_cad_abstrato, ADODB, DB, ExtCtrls, ComCtrls, ToolWin, StdCtrls,
  Mask, wwdbedit, wwdblook;

type
  Tfrm_orgao_ambiental = class(Tfrm_cad_abstrato)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_id: TwwDBEdit;
    edt_nome: TwwDBEdit;
    edt_sigla: TwwDBEdit;
    dts_uf: TDataSource;
    qry_uf: TADOQuery;
    cmb_uf: TwwDBLookupCombo;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_orgao_ambiental: Tfrm_orgao_ambiental;

implementation

{$R *.dfm}

procedure Tfrm_orgao_ambiental.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  qry_uf.Close;
end;

procedure Tfrm_orgao_ambiental.FormCreate(Sender: TObject);
begin
  key_field := 'id';
  table_name := 'orgao_ambiental';

  inherited;

  qry_uf.Open;

end;

end.
