unit unt_lista_toolbar_abstrato;

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
  unt_lista_abstrato,
  ComCtrls,
  ToolWin,
  DB,
  IBCustomDataSet,
  IBQuery,
  IBDatabase,
  ExtCtrls,
  Buttons,
  Grids,
  Wwdbigrd,
  Wwdbgrid,
  Menus,
  Uni,
  MemDS,
  DBAccess;

type
  Tfrm_lista_toolbar_abstrato = class(Tfrm_lista_abstrato)
    ToolBar1: TToolBar;                                
    btnAtualizar: TToolButton;
    btnLocalizar: TToolButton;
    btnExportar: TToolButton;
    ToolButton2: TToolButton;
    btnContrato: TToolButton;
    btnFinanceiro: TToolButton;
    btnHistorico: TToolButton;
    sep5: TToolButton;
    btnFechar: TToolButton;
    ToolButton1: TToolButton;
    pnlFiltros: TPanel;
    popExportar: TPopupMenu;
    mnuExportar_Excel: TMenuItem;
    mnuExportar_CSV: TMenuItem;
    Bevel2: TBevel;
    procedure btnAtualizarClick(Sender: TObject);
    procedure btnContratoClick(Sender: TObject);
    procedure btnFinanceiroClick(Sender: TObject);
    procedure btnHistoricoClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure mnuExportar_ExcelClick(Sender: TObject);
    procedure mnuExportar_CSVClick(Sender: TObject);
    procedure grdTitleButtonClick(Sender: TObject; AFieldName: string);
    procedure FormCreate(Sender: TObject);
  protected
    order_by: string;
    order_by_field: string;
    order_by_list: TStringList;
  private

  public

  end;

var
  frm_lista_toolbar_abstrato: Tfrm_lista_toolbar_abstrato;

implementation

uses unt_procedures, unt_dtm_images, unt_proc_abrir_telas;

{$R *.dfm}

procedure Tfrm_lista_toolbar_abstrato.mnuExportar_CSVClick(Sender: TObject);
begin
  exportar_csv(dse);
end;

procedure Tfrm_lista_toolbar_abstrato.btnAtualizarClick(Sender: TObject);
var
  atual: variant;
  posicionar: boolean;
begin
  posicionar := trim(FChave) <> '';

  if posicionar then
    atual := dse.FieldByName(FChave).AsVariant;

  dse.DisableControls;
  try
    dse.Close;
    dse.Open;
    if posicionar then
      dse.Locate(FChave,atual,[]);
  finally
    dse.EnableControls;
  end;
end;

procedure Tfrm_lista_toolbar_abstrato.btnContratoClick(Sender: TObject);
begin
  abrir_contrato_cliente(dse.FieldByName('idPessoa').AsInteger);
end;

procedure Tfrm_lista_toolbar_abstrato.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_lista_toolbar_abstrato.btnFinanceiroClick(Sender: TObject);
begin
  abrir_fin_cliente(dse.FieldByName('idPessoa').AsInteger);
end;

procedure Tfrm_lista_toolbar_abstrato.btnHistoricoClick(Sender: TObject);
begin
  abrir_hist_pessoa(dse.FieldByName('idPessoa').AsInteger);
end;

procedure Tfrm_lista_toolbar_abstrato.FormCreate(Sender: TObject);
begin
  inherited;
  order_by_list := TStringList.Create;
end;

procedure Tfrm_lista_toolbar_abstrato.grdTitleButtonClick(Sender: TObject; AFieldName: string);
var
  ordem: TStringList;
  i: integer;
begin
  order_by := 'order by ';

  ordem := TStringList.Create;

  if (order_by_field = AFieldName) and (order_by_list[0] <> AFieldName + ' desc') then
    ordem.Add(AFieldName + ' desc')
  else
    ordem.Add(AFieldName);

  order_by := order_by + ordem[0];

  for i := 0 to order_by_list.Count - 1 do
  begin
    if (order_by_list[i] <> AFieldName) and (order_by_list[i] <> AFieldName + ' desc') then
    begin
      ordem.Add(order_by_list[i]);
      order_by := order_by + ', ' + order_by_list[i];
    end;
  end;

  order_by_list := ordem;
  order_by_field := AFieldName;
  
  btnAtualizar.Click;
end;

procedure Tfrm_lista_toolbar_abstrato.mnuExportar_ExcelClick(Sender: TObject);
begin
  exportar_excel(grd);
end;

procedure Tfrm_lista_toolbar_abstrato.ToolButton1Click(Sender: TObject);
begin
  abrir_cliente(dse.FieldByName('idPessoa').AsInteger);
end;

end.
