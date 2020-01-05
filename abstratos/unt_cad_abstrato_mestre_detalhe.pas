unit unt_cad_abstrato_mestre_detalhe;

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
  ADODB,
  DB,
  ExtCtrls,
  ComCtrls,
  ToolWin,
  Grids,
  Wwdbigrd,
  Wwdbgrid,
  unt_cad_abstrato;

type
  Tfrm_cad_abstrato_mestre_detalhe = class(Tfrm_cad_abstrato)
    Panel1: TPanel;
    pnl_tit_detalhe: TPanel;
    grd_detalhe: TwwDBGrid;
    dse_detalhe: TADODataSet;
    dts_detalhe: TDataSource;
    procedure dseAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure open_dataset_detalhe(pk: integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_abstrato_mestre_detalhe: Tfrm_cad_abstrato_mestre_detalhe;

implementation

{$R *.dfm}

procedure Tfrm_cad_abstrato_mestre_detalhe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dse_detalhe.Close;
end;

procedure Tfrm_cad_abstrato_mestre_detalhe.open_dataset_detalhe(pk: integer);
begin
  if dse_detalhe.Parameters.FindParam('key_field') <> nil then
  begin
    dse_detalhe.Close;
    dse_detalhe.Parameters.ParamByName('key_field').Value := pk;
    dse_detalhe.Open;
  end;
end;

procedure Tfrm_cad_abstrato_mestre_detalhe.dseAfterScroll(DataSet: TDataSet);
begin
  inherited;
  open_dataset_detalhe(dse.FieldByName(key_field).AsInteger);
end;

end.
