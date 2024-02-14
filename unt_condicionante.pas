unit unt_condicionante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, ExtCtrls, Mask, wwdbedit, Wwdotdot,
  Wwdbcomb, wwdbdatetimepicker;

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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_okClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dtp_vencExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure editar_condicionante;
    procedure nova_condicionante;
    { Private declarations }
  public
    id_condicionante: integer;
    id_licenca: integer;
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
    '  dt_venc,                                                                 '#13+
    '  dt_aviso,                                                                '#13+
    '  id_categoria,                                                            '#13+
    '  id_responsavel,                                                          '#13+
    '  descricao)                                                               '#13+
    'values (                                                                   '#13+
    intToStr(id_licenca) + ',' +
    quotedstr(edt_numero.text) + ',' +
    data_sql(dtp_venc.Date) + ',' +
    data_sql(dtp_aviso.Date) + ',' +
    cmb_categoria.Value + ',' +
    cmb_responsavel.Value + ',' +
    quotedStr(mmo_descricao.Text) + ')');
end;

procedure Tfrm_condicionante.editar_condicionante;
begin

//  mmo_descricao.Text := StringReplace(mmo_descricao.Text, '''','''',[rfReplaceAll]);

  exec_sql(
    'update condicionante                                                       '#13+
    'set numero = ' + quotedstr(edt_numero.text) + ','                          +#13+
    '    dt_venc = ' + data_sql(dtp_venc.Date) + ','                            +#13+
    '    dt_aviso = ' + data_sql(dtp_aviso.Date) + ','                          +#13+
    '    id_categoria = ' + cmb_categoria.Value + ','                           +#13+
    '    descricao = ' + quotedStr(mmo_descricao.Text) + ','                    +#13+
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

procedure Tfrm_condicionante.dtp_vencExit(Sender: TObject);
begin
  dtp_aviso.Date := decmonth(dtp_venc.Date);
end;

procedure Tfrm_condicionante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  close;
end;

procedure Tfrm_condicionante.FormCreate(Sender: TObject);
begin
  carrega_combo_categoria(cmb_categoria);
end;

end.
