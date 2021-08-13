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
    toolbar: TToolBar;
    btn_licencas: TToolButton;
    sep_3: TToolButton;
    btn_fechar: TToolButton;
    dts_venc: TDataSource;
    procedure qry_vencCalcFields(DataSet: TDataSet);
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_licencasClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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
    qry_venc.FieldByName('id').AsInteger,
    qry_venc.FieldByName('id_atividade').AsInteger);

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

procedure Tfrm_vencimentos.FormShow(Sender: TObject);
begin
  qry_venc.open;
end;

procedure Tfrm_vencimentos.qry_vencCalcFields(DataSet: TDataSet);
begin
  qry_venc.FieldByName('desc_str').AsString := qry_venc.FieldByName('descricao').AsString;
end;

end.
