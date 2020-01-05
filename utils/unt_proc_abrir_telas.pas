unit unt_proc_abrir_telas;

interface

uses
  Forms;

procedure abrir_atividade(id_cliente: integer);
procedure abrir_cliente(id_Cliente: integer);
procedure abrir_contrato_cliente(id_Cliente: integer);
procedure abrir_fin_cliente(id_Pessoa: integer);
procedure abrir_licenca(id_cliente: integer; id_atividade: integer);
procedure abrir_hist_pessoa(id_Pessoa: integer);

implementation

uses unt_cliente_atividade, unt_cliente, unt_licenca;

procedure abrir_atividade(id_cliente: integer);
begin
  Application.CreateForm(Tfrm_cliente_atividade, frm_cliente_atividade);
  frm_cliente_atividade.open_dataset(id_cliente);
end;

procedure abrir_cliente(id_Cliente: integer);
begin
  Application.CreateForm(Tfrm_cliente, frm_cliente);
  frm_cliente.open_dataset(id_cliente);
end;

procedure abrir_contrato_cliente(id_Cliente: integer);
begin
  //Comandos
end;

procedure abrir_fin_cliente(id_Pessoa: integer);
begin
  //Comandos
end;

procedure abrir_hist_pessoa(id_Pessoa: integer);
begin
  //Comandos
end;

procedure abrir_licenca(
  id_cliente: integer;
  id_atividade: integer);
begin
  Application.CreateForm(Tfrm_licenca, frm_licenca);
  frm_licenca.open_dataset(id_cliente, id_atividade);
end;

end.
