unit unt_vencimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask,
  wwdbedit, ComCtrls, ToolWin;

type
  Tfrm_vencimentos = class(TForm)
    grd_venc: TwwDBGrid;
    qry_venc: TUniQuery;
    qry_venctipo: TStringField;
    qry_vencid: TIntegerField;
    qry_venccnpj: TStringField;
    qry_vencnome: TStringField;
    qry_vencfantasia: TStringField;
    qry_vencnumero: TStringField;
    qry_vencdescricao: TMemoField;
    qry_vencdt_venc: TDateField;
    qry_vencdt_aviso: TDateField;
    qry_vencdesc_str: TStringField;
    toolbar: TToolBar;
    btn_licencas: TToolButton;
    sep_3: TToolButton;
    btn_fechar: TToolButton;
    dts_venc: TDataSource;
    qry_vencid_atividade: TIntegerField;
    procedure qry_vencCalcFields(DataSet: TDataSet);
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_licencasClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_vencimentos: Tfrm_vencimentos;

implementation

uses unt_dtm_dados, unt_functions, unt_proc_abrir_telas;

{$R *.dfm}

procedure Tfrm_vencimentos.btn_licencasClick(Sender: TObject);
begin
  abrir_licenca(
    qry_vencid.AsInteger,
    qry_vencid_atividade.AsInteger);

end;

procedure Tfrm_vencimentos.btn_fecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_vencimentos.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure Tfrm_vencimentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure Tfrm_vencimentos.qry_vencCalcFields(DataSet: TDataSet);
begin
  qry_vencdesc_str.AsString := qry_vencdescricao.AsString;
end;

end.
