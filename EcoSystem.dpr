program EcoSystem;

uses
  Forms,
  unt_principal in 'unt_principal.pas' {frm_principal},
  unt_dtm_dados in 'unt_dtm_dados.pas' {dtm_dados: TDataModule},
  unt_dtm_images in 'unt_dtm_images.pas' {dtm_images: TDataModule},
  unt_senha in 'unt_senha.pas' {frm_senha},
  unt_functions in 'utils\unt_functions.pas',
  unt_procedures in 'utils\unt_procedures.pas',
  unt_func_messages in 'utils\unt_func_messages.pas',
  unt_mensagem in 'utils\unt_mensagem.pas' {frm_mensagem},
  unt_pesquisa in 'utils\unt_pesquisa.pas' {frm_pesquisa},
  unt_cad_abstrato in 'abstratos\unt_cad_abstrato.pas' {frm_cad_abstrato},
  unt_lista_abstrato in 'abstratos\unt_lista_abstrato.pas' {frm_lista_abstrato},
  unt_lista_toolbar_abstrato in 'abstratos\unt_lista_toolbar_abstrato.pas' {frm_lista_toolbar_abstrato},
  unt_dtm_geral in 'unt_dtm_geral.pas' {dtm_geral: TDataModule},
  unt_progresso in 'unt_progresso.pas' {frm_progresso},
  unt_proc_abrir_telas in 'utils\unt_proc_abrir_telas.pas',
  unt_usuario in 'unt_usuario.pas' {frm_usuario},
  unt_uf in 'unt_uf.pas' {frm_uf},
  unt_cad_abstrato_mestre_detalhe in 'abstratos\unt_cad_abstrato_mestre_detalhe.pas' {frm_cad_abstrato_mestre_detalhe},
  unt_municipio in 'unt_municipio.pas' {frm_municipio},
  unt_cliente in 'unt_cliente.pas' {frm_cliente},
  unt_classe_cliente in 'classes\unt_classe_cliente.pas',
  unt_classe_pessoa in 'classes\unt_classe_pessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Multidev Ecoplan - Gerenciamento Ambiental';
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdtm_dados, dtm_dados);
  Application.CreateForm(Tdtm_images, dtm_images);
  Application.CreateForm(Tfrm_senha, frm_senha);
  Application.CreateForm(Tfrm_mensagem, frm_mensagem);
  Application.CreateForm(Tfrm_pesquisa, frm_pesquisa);
  Application.CreateForm(Tdtm_geral, dtm_geral);
  Application.CreateForm(Tfrm_progresso, frm_progresso);
  Application.CreateForm(Tfrm_cliente, frm_cliente);
  Application.Run;
end.
