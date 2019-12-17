unit unt_func_messages;

interface

  function msg_quest(texto: string; titulo: string = ''): boolean;

  procedure msg_alert(texto: string; titulo: string = 'Alerta!');
  procedure msg_error(texto: string; titulo: string = 'Erro');
  procedure msg_info(texto: string; titulo: string = 'Informação');

implementation

uses unt_mensagem, unt_functions;

function msg_quest(texto: string; titulo: string = ''): boolean;
begin

end;

procedure msg_alert(texto: string; titulo: string = 'Alerta!');
begin

end;

procedure msg_error(texto: string; titulo: string = 'Erro');
begin

  frm_mensagem.mmo_mensagem.Lines.Text := Texto;

  frm_mensagem.btn_sim.Visible := False;
  frm_mensagem.btn_nao.Visible := False;
  frm_mensagem.btn_ok.Visible := True;
  frm_mensagem.btn_multidev.Visible := true;

  frm_mensagem.btn_sim.Repaint;
  frm_mensagem.btn_nao.Repaint;
  frm_mensagem.btn_ok.Repaint;

  frm_mensagem.pnl_titulo.Caption := iif(titulo = '', 'Erro', titulo);
  frm_mensagem.Color := $00A8A8FF;
  frm_mensagem.ShowModal;
end;

procedure msg_info(texto: string; titulo: string = 'Informação');
begin

end;

end.
