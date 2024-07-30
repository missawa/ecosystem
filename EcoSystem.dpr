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
  unt_dtm_geral in 'unt_dtm_geral.pas' {dm_geral: TDataModule},
  unt_progresso in 'unt_progresso.pas' {frm_progresso},
  unt_proc_abrir_telas in 'utils\unt_proc_abrir_telas.pas',
  unt_usuario in 'unt_usuario.pas' {frm_usuario},
  unt_uf in 'unt_uf.pas' {frm_uf},
  unt_cad_abstrato_mestre_detalhe in 'abstratos\unt_cad_abstrato_mestre_detalhe.pas' {frm_cad_abstrato_mestre_detalhe},
  unt_cliente in 'unt_cliente.pas' {frm_cliente},
  unt_integracao in 'utils\unt_integracao.pas',
  unt_classe_endereco in 'classes\unt_classe_endereco.pas',
  unt_input_data in 'utils\unt_input_data.pas' {frm_input_data},
  unt_constantes in 'utils\unt_constantes.pas',
  unt_cliente_atividade_apagar in 'unt_cliente_atividade_apagar.pas' {frm_cliente_atividade_apagar},
  unt_licenca in 'unt_licenca.pas' {frm_licenca},
  unt_cliente_atividade in 'unt_cliente_atividade.pas' {frm_cliente_atividade},
  unt_atividade in 'unt_atividade.pas' {frm_atividade},
  unt_input_texto in 'unt_input_texto.pas' {frm_input_texto},
  unt_orgao_ambiental in 'unt_orgao_ambiental.pas' {frm_orgao_ambiental},
  unt_relatorio in 'unt_relatorio.pas' {frm_relatorio},
  unt_tipo_licenca in 'unt_tipo_licenca.pas' {frm_tipo_licenca},
  unt_vencimentos in 'unt_vencimentos.pas' {frm_vencimentos},
  unt_cumprir_cond in 'unt_cumprir_cond.pas' {frm_cumprir_cond},
  unt_municipio in 'unt_municipio.pas' {frm_municipio},
  unt_condicionante in 'unt_condicionante.pas' {frm_condicionante},
  unt_categorias in 'unt_categorias.pas' {frm_categorias},
  unt_solicitar_desconsideracao in 'unt_solicitar_desconsideracao.pas' {frm_solicitar_desconsideracao},
  unt_solicitar_prazo in 'unt_solicitar_prazo.pas' {frm_solicitar_prazo},
  unt_input_inteiro in 'utils\unt_input_inteiro.pas' {frm_input_inteiro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Multidev Ecoplan - Gerenciamento Ambiental';
  Application.CreateForm(Tfrm_principal, frm_principal);
  Application.CreateForm(Tdtm_dados, dtm_dados);
  Application.CreateForm(Tdtm_images, dtm_images);
  Application.CreateForm(Tdm_geral, dm_geral);
  Application.CreateForm(Tfrm_senha, frm_senha);
  Application.CreateForm(Tfrm_mensagem, frm_mensagem);
  Application.CreateForm(Tfrm_pesquisa, frm_pesquisa);
  Application.CreateForm(Tfrm_progresso, frm_progresso);
  Application.CreateForm(Tfrm_input_data, frm_input_data);
  Application.CreateForm(Tfrm_input_texto, frm_input_texto);
  Application.CreateForm(Tfrm_cumprir_cond, frm_cumprir_cond);
  Application.CreateForm(Tfrm_condicionante, frm_condicionante);
  Application.CreateForm(Tfrm_solicitar_desconsideracao, frm_solicitar_desconsideracao);
  Application.CreateForm(Tfrm_solicitar_prazo, frm_solicitar_prazo);
  Application.CreateForm(Tfrm_input_inteiro, frm_input_inteiro);
  Application.Run;
end.
