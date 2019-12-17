unit unt_municipio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, unt_cad_abstrato_mestre_detalhe, ADODB, DB, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, ComCtrls, ToolWin, Wwdotdot, Wwdbcomb, StdCtrls, Mask,
  wwdbedit, wwdblook;

type
  Tfrm_municipio = class(Tfrm_cad_abstrato_mestre_detalhe)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_id: TwwDBEdit;
    edt_ibge: TwwDBEdit;
    edt_municipio: TwwDBEdit;
    qry_uf: TADOQuery;
    wwDBLookupCombo1: TwwDBLookupCombo;
    qry_ufid: TAutoIncField;
    qry_ufsigla: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_municipio: Tfrm_municipio;

implementation

{$R *.dfm}

procedure Tfrm_municipio.FormCreate(Sender: TObject);
begin
  table_name := 'municipio';
  key_field := 'id';
  inherited;
  qry_uf.Open;
end;

end.
