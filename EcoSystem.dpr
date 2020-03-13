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
  unt_cliente in 'unt_cliente.pas' {frm_cliente},
  unt_integracao in 'utils\unt_integracao.pas',
  unt_classe_endereco in 'classes\unt_classe_endereco.pas',
  unt_input_inteiro in 'utils\unt_input_inteiro.pas' {frm_input_inteiro},
  unt_constantes in 'utils\unt_constantes.pas',
  unt_cliente_atividade_apagar in 'unt_cliente_atividade_apagar.pas' {frm_cliente_atividade_apagar},
  unt_orgao_ambiental in 'unt_orgao_ambiental.pas' {frm_orgao_ambiental},
  unt_tipo_licenca in 'unt_tipo_licenca.pas' {frm_tipo_licenca},
  unt_licenca in 'unt_licenca.pas' {frm_licenca},
  unt_cliente_atividade in 'unt_cliente_atividade.pas' {frm_cliente_atividade},
  unt_atividade in 'unt_atividade.pas' {frm_atividade},
  unt_input_texto in 'unt_input_texto.pas' {frm_input_texto},
  unt_municipio in 'unt_municipio.pas' {frm_municipio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Multidev Ecoplan - Gerenciamento Ambiental';
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdtm_dados, dtm_dados);
  Application.CreateForm(Tdtm_images, dtm_images);
  Application.CreateForm(Tdtm_geral, dtm_geral);
  Application.CreateForm(Tfrm_senha, frm_senha);
  Application.CreateForm(Tfrm_mensagem, frm_mensagem);
  Application.CreateForm(Tfrm_pesquisa, frm_pesquisa);
  Application.CreateForm(Tfrm_progresso, frm_progresso);
  Application.CreateForm(Tfrm_input_inteiro, frm_input_inteiro);
  Application.CreateForm(Tfrm_input_texto, frm_input_texto);
  Application.Run;
end.
