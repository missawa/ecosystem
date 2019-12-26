unit unt_func_messages;

interface

uses Graphics;

  function msg_quest(texto: string; titulo: string = ''): boolean;

  procedure msg(texto: string; titulo: string; sim: boolean; nao: boolean; ok: boolean; multidev: boolean; cor: TColor);
  procedure msg_alert(texto: string; titulo: string = 'Alerta!');
  procedure msg_error(texto: string; titulo: string = 'Erro!');
  procedure msg_info(texto: string; titulo: string = 'Informação!');


implementation

uses
  unt_constantes,
  unt_functions,
  unt_mensagem;

function msg_quest(texto: string; titulo: string = ''): boolean;
begin

end;

procedure msg(
  texto: string;
  titulo: string;
  sim: boolean;
  nao: boolean;
  ok: boolean;
  multidev: boolean;
  cor: TColor);

begin
  frm_mensagem.mmo_mensagem.Lines.Text := texto;

  frm_mensagem.btn_sim.Visible := sim;
  frm_mensagem.btn_nao.Visible := nao;
  frm_mensagem.btn_ok.Visible := ok;
  frm_mensagem.btn_multidev.Visible := multidev;

  frm_mensagem.btn_sim.Repaint;
  frm_mensagem.btn_nao.Repaint;
  frm_mensagem.btn_ok.Repaint;
  frm_mensagem.btn_multidev.Repaint;

  frm_mensagem.pnl_titulo.Caption := titulo;
  frm_mensagem.Color := cor;
  frm_mensagem.ShowModal;
end;

procedure msg_alert(texto: string; titulo: string = 'Alerta!');
begin
  msg(
    texto,
    titulo,
    false,
    false,
    true,
    false,
    cl_alerta);
end;

procedure msg_error(texto: string; titulo: string = 'Erro!');
begin

  msg(
    texto,
    titulo,
    false,
    false,
    true,
    false,
    cl_erro);
end;

procedure msg_info(texto: string; titulo: string = 'Informação!');
begin
  msg(
    texto,
    titulo,
    false,
    false,
    true,
    false,
    cl_info);
end;

end.
