unit unt_pesquisa;

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
  Grids,
  Wwdbigrd,
  Wwdbgrid,
  Buttons,
  Mask,
  wwdbedit,
  Wwdotdot,
  Wwdbcomb,
  StdCtrls,
  wwdbdatetimepicker,
  ExtCtrls,
  Uni,
  DB,
  MemDS,
  DBAccess;

type
  Tfrm_pesquisa = class(TForm)
    pnl_opcoes: TPanel;
    pnl_tit_opcoes: TPanel;
    pnl_dados_opcoes: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnl_rodape: TPanel;
    btn_confirmar: TSpeedButton;
    btn_cancelar: TSpeedButton;
    grd_resultado: TwwDBGrid;
    cmb_campo: TwwDBComboBox;
    cmb_criterio: TwwDBComboBox;
    Label3: TLabel;
    edt_valor: TwwDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    dts: TDataSource;
    btn_pesquisar: TSpeedButton;
    qry: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure cmb_campoChange(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure cmb_criterioChange(Sender: TObject);
    procedure edt_valorChange(Sender: TObject);
    procedure edt_valorKeyPress(Sender: TObject; var Key: Char);
    procedure grd_resultadoDblClick(Sender: TObject);
    procedure grd_resultadoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    q: TUniQuery;
    criterio: string;
    valor: string;
    tipo_campo: integer;
    procedure formata_campo_data;
    procedure formata_campo_inteiro;
    procedure formata_campo_real;
    procedure formata_campo_string;
  public
    campo_padrao: string;
    sql: string;
    tela: string;
  end;

const
  tpInteiro = 1;
  tpTexto = 2;
  tpReal = 3;
  tpData =4;

var
  frm_pesquisa: Tfrm_pesquisa;

implementation

uses unt_dtm_dados, unt_functions, unt_procedures;

{$R *.dfm}

procedure Tfrm_pesquisa.formata_campo_inteiro;
begin
  cmb_criterio.Items.Clear;
  cmb_criterio.Items.Add('IGUAL');
  cmb_criterio.Items.Add('DIFERENTE');
  cmb_criterio.Items.Add('MAIOR QUE');
  cmb_criterio.Items.Add('MENOR QUE');
  tipo_campo := tpInteiro;
end;

procedure Tfrm_pesquisa.formata_campo_real;
begin
  cmb_criterio.Items.Clear;
  cmb_criterio.Items.Add('IGUAL');
  cmb_criterio.Items.Add('DIFERENTE');
  cmb_criterio.Items.Add('MAIOR QUE');
  cmb_criterio.Items.Add('MENOR QUE');
  tipo_campo := tpReal;
end;

procedure Tfrm_pesquisa.formata_campo_data;
begin
  cmb_criterio.Items.Clear;
  cmb_criterio.Items.Add('IGUAL');
  cmb_criterio.Items.Add('DIFERENTE');
  cmb_criterio.Items.Add('MAIOR QUE');
  cmb_criterio.Items.Add('MENOR QUE');
  tipo_campo := tpData;
end;

procedure Tfrm_pesquisa.formata_campo_string;
begin
  cmb_criterio.Items.Clear;
  cmb_criterio.Items.Add('CONTENDO');
  cmb_criterio.Items.Add('IGUAL');
  tipo_campo := tpTexto;
end;


procedure Tfrm_pesquisa.btn_cancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure Tfrm_pesquisa.btn_confirmarClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure Tfrm_pesquisa.cmb_campoChange(Sender: TObject);
begin
  if (q.Fields[cmb_campo.ItemIndex] is TIntegerField) or (q.Fields[cmb_campo.ItemIndex] is TSmallintField) then
    formata_campo_inteiro
  else if q.Fields[cmb_campo.ItemIndex] is TFloatField then
    formata_campo_real
  else if q.Fields[cmb_campo.ItemIndex] is TDateTimeField then
    formata_campo_data
  else
    formata_campo_string;

  cmb_criterio.ItemIndex := 0;
end;

procedure Tfrm_pesquisa.cmb_criterioChange(Sender: TObject);
begin
  if cmb_criterio.Text = 'IGUAL' then
    criterio := ' = '
  else if cmb_criterio.Text = 'DIFERENTE' then
    criterio := ' <> '
  else if cmb_criterio.Text = 'MAIOR QUE' then
    criterio := ' > '
  else if cmb_criterio.Text = 'MENOR QUE' then
    criterio := ' < '
  else if cmb_criterio.Text = 'CONTENDO' then
    criterio := ' LIKE '
end;

procedure Tfrm_pesquisa.edt_valorChange(Sender: TObject);
begin

  case tipo_campo of
    tpTexto:
      if criterio = ' LIKE ' then
        valor := '%' + edt_valor.Text + '%'
      else
        valor := edt_valor.Text;

    tpData:
      valor := data_sql(StrToDate(edt_valor.Text));

    tpReal:
      valor := valor_str(StrToCurr(edt_valor.Text));

    tpInteiro:
      valor := edt_valor.Text;
  end;

end;

procedure Tfrm_pesquisa.edt_valorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn_pesquisar.Click;
end;

procedure Tfrm_pesquisa.FormCreate(Sender: TObject);
begin
  q := TUniQuery.Create(nil);
  q.Connection := dtm_dados.mysql_conn;
end;

procedure Tfrm_pesquisa.FormDestroy(Sender: TObject);
begin
  q.Free;
end;

procedure Tfrm_pesquisa.FormShow(Sender: TObject);
var
  i,c: Integer;
begin

  open_query(q, sql);
  cmb_campo.Items.Clear;

  c := 0;

  for i := 0 to q.FieldCount - 1 do
  begin
    if q.Fields[i].FieldName = campo_padrao then
      c := i;
    cmb_campo.Items.Add(uppercase(q.Fields[i].FieldName));
  end;

  cmb_campo.ItemIndex := c;

  edt_valor.SetFocus;

end;

procedure Tfrm_pesquisa.grd_resultadoDblClick(Sender: TObject);
begin
  btn_confirmar.Click;
end;

procedure Tfrm_pesquisa.grd_resultadoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btn_confirmar.Click;
end;

procedure Tfrm_pesquisa.btn_pesquisarClick(Sender: TObject);
var
  aux: string;
  i,tam: integer;

begin
  cmb_criterioChange(Sender);
  edt_valorChange(Sender);

  if edt_valor.Text <> '' then
  begin

    aux := iif(pos('where',LowerCase(SQL)) = 0,'where ','  and ');

    qry.Close;
    qry.SQL.Text := SQL + #13 +
      aux +
      cmb_campo.Text +
      criterio +
      iif(criterio = ' LIKE ',
        QuotedStr(trim(valor)),
        trim(Valor)) +
      'order by ' + cmb_campo.Text;

    qry.Open;

    grd_resultado.Selected.Clear;

    for i := 0 to qry.FieldCount -1 do
    begin
      tam := qry.Fields[i].Size;
      if tam > 40 then
        tam := 40
      else if tam < 6 then
        tam := 6
      else
        tam := trunc(qry.Fields[i].Size * 1.2);

      grd_resultado.Selected.Add(
        qry.Fields[i].FieldName + #9 +
        intToStr(tam) + #9 +
        uppercase(qry.Fields[i].FieldName));

      qry.Next;
    end;
    grd_resultado.ApplySelected;

    if qry.RecordCount = 1 then
      btn_confirmar.Click;
  end;

end;

end.
