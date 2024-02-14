unit unt_municipios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, Uni, Grids, Wwdbigrd, Wwdbgrid, wwdblook,
  StdCtrls, Mask, wwdbedit, ExtCtrls, ComCtrls, ToolWin;

type
  Tfrm_municipios = class(TForm)
    toolbar: TToolBar;
    btn_novo: TToolButton;
    btn_editar: TToolButton;
    btn_excluir: TToolButton;
    btn_atualizar: TToolButton;
    sep_1: TToolButton;
    btn_salvar: TToolButton;
    btn_cancelar: TToolButton;
    sep_2: TToolButton;
    btn_localizar: TToolButton;
    btn_primeiro: TToolButton;
    btn_anterior: TToolButton;
    btn_proximo: TToolButton;
    btn_ultimo: TToolButton;
    sep_3: TToolButton;
    btn_fechar: TToolButton;
    pnlTitulo: TPanel;
    pnlTotal: TPanel;
    pnl_tit_geral: TPanel;
    pnl_geral: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt_id: TwwDBEdit;
    edt_ibge: TwwDBEdit;
    edt_municipio: TwwDBEdit;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Panel1: TPanel;
    pnl_tit_detalhe: TPanel;
    grd_detalhe: TwwDBGrid;
    dts: TDataSource;
    qry: TUniQuery;
    dse: TUniQuery;
    dts_detalhe: TDataSource;
    dse_detalhe: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_municipios: Tfrm_municipios;

implementation

{$R *.dfm}

end.
