unit unt_condicionante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, ExtCtrls, Mask, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdbdatetimepicker, Wwdbspin;

type
  Tfrm_condicionante = class(TForm)
    Panel3: TPanel;
    Panel1: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    edt_numero: TEdit;
    Panel2: TPanel;
    btn_ok: TSpeedButton;
    btnCancelar: TSpeedButton;
    cmb_categoria: TwwDBComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cmb_responsavel: TwwDBComboBox;
    dtp_venc: TwwDBDateTimePicker;
    dtp_aviso: TwwDBDateTimePicker;
    Label6: TLabel;
    mmo_descricao: TMemo;
    spn_prazo: TwwDBSpinEdit;
    Label7: TLabel;
    Label8: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_okClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dtp_vencExit(Sender: TObject);
    procedure spn_prazoExit(Sender: TObject);
    procedure cmb_categoriaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmb_categoriaCloseUp(Sender: TwwDBComboBox; Select: Boolean);
  private
    procedure editar_condicionante;
    procedure nova_condicionante;
    { Private declarations }
  public
    id_condicionante: integer;
    id_licenca: integer;
    id_categoria: integer;
    cumprida: string;
    dt_cump: TDate;
  end;

var
  frm_condicionante: Tfrm_condicionante;

implementation

uses unt_procedures, unt_functions;

{$R *.dfm}

procedure Tfrm_condicionante.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_condicionante.nova_condicionante;
begin
  exec_sql(
    'insert into condicionante (                                                '#13+
    '  id_licenca,                                                              '#13+
    '  numero,                                                                  '#13+
    '  prazo,                                                                   '#13+
    '  dt_venc,                                                                 '#13+
    '  dt_aviso,                                                                '#13+
    '  id_categoria,                                                            '#13+
    '  id_responsavel,                                                          '#13+
    '  descricao)                                                               '#13+
    'values (                                                                   '#13+
    intToStr(id_licenca) + ',' +
    quotedstr(edt_numero.text) + ',' +
    intToStr(trunc(spn_prazo.Value)) + ',' +
    data_sql(dtp_venc.Date) + ',' +
    data_sql(dtp_aviso.Date) + ',' +
    cmb_categoria.Value + ',' +
    cmb_responsavel.Value + ',' +
    quotedStr(mmo_descricao.Text) + ')');
end;

procedure Tfrm_condicionante.spn_prazoExit(Sender: TObject);
var
  dt_ini: TDate;
begin
  dt_ini := inicio_licenca(id_licenca);
  dtp_venc.Date := dt_ini + spn_prazo.Value;
  dtp_vencExit(Sender);
  cmb_responsavel.SetFocus;
end;

procedure Tfrm_condicionante.editar_condicionante;
var
  str_venc: string;
  str_aviso: string;
  str_dt_cump: string;
  str_cump: string;
begin

  cmb_categoriaExit(cmb_categoria);

  if cumprida = 'S' then
    str_cump := quotedStr('S')
  else
    str_cump := quotedStr('N');

  if dt_cump = 0 then
    str_dt_cump := 'null'
  else
    str_dt_cump := data_sql(dt_cump);

  if (dtp_venc.Text = '') or (dtp_venc.Text = '31/12/1899') then
    str_venc := 'null'
  else
    str_venc := data_sql(dtp_venc.Date);

  if (dtp_aviso.Text = '') or (dtp_aviso.Text = '31/12/1899') then
    str_aviso := 'null'
  else
    str_aviso := data_sql(dtp_aviso.Date);

  exec_sql(
    'update condicionante                                                       '#13+
    'set numero = ' + quotedstr(edt_numero.text) + ','                          +#13+
    '    prazo = ' + intToStr(trunc(spn_prazo.Value)) + ','                     +#13+
    '    dt_venc = ' + str_venc + ','                                           +#13+
    '    dt_aviso = ' + str_aviso + ','                                         +#13+
    '    dt_cumprimento = ' + str_dt_cump + ','                                 +#13+
    '    id_categoria = ' + cmb_categoria.Value + ','                           +#13+
    '    descricao = ' + quotedStr(mmo_descricao.Text) + ','                    +#13+
    '    cumprida = ' + str_cump + ','                                          +#13+
    '    id_responsavel = ' + cmb_responsavel.Value                             +#13+
    'where id = ' + inttostr(id_condicionante));
end;

procedure Tfrm_condicionante.btn_okClick(Sender: TObject);
begin
  if id_condicionante = 0 then
    nova_condicionante
  else
    editar_condicionante;

  close;
end;

procedure Tfrm_condicionante.cmb_categoriaCloseUp(Sender: TwwDBComboBox;
  Select: Boolean);
begin
  cmb_categoriaExit(Sender);
end;

procedure Tfrm_condicionante.cmb_categoriaExit(Sender: TObject);
begin
  if UpperCase(cmb_categoria.Text) = 'ORIENTATIVA' then
  begin
    spn_prazo.Value := 0;
    dtp_venc.Clear;
    dtp_aviso.Clear;
    cumprida := 'S';
    dt_cump := 0;

    spn_prazo.Enabled := false;
    dtp_venc.Enabled := false;
    dtp_aviso.Enabled := false;
    cmb_responsavel.SetFocus;
  end
  else
  begin
    spn_prazo.Enabled := true;
    dtp_venc.Enabled := true;
    dtp_aviso.Enabled := true;
    spn_prazo.SetFocus;
  end;
end;

procedure Tfrm_condicionante.dtp_vencExit(Sender: TObject);
begin
  dtp_aviso.Date := decmonth(dtp_venc.Date);
end;

procedure Tfrm_condicionante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  close;
end;

procedure Tfrm_condicionante.FormShow(Sender: TObject);
begin
  carrega_combo_categoria(cmb_categoria);
  cmb_categoria.Value := intToStr(id_categoria);
  cmb_categoriaExit(Sender);
  edt_numero.SetFocus;
end;

end.
