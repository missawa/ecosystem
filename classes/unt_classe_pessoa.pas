unit unt_classe_pessoa;

interface

type TPessoa = class

private
  f_id: integer;
  f_tipo: char;
  f_cpf: string;
  f_cnpj: string;
  f_nome: string;

public
  constructor Create; override;
  destructor Destroy; override;

  function nova_pessoa: boolean;
  function edita_pessoa: boolean;
  function exclui_pessoa: boolean;
  function localiza_pessoa(p_id: integer): TPessoa;

  property id: integer read f_id write f_id;
  property tipo: char read f_tipo write f_tipo;
  property cpf: string read f_cpf write f_cpf;
  property cnpj: string read f_cnpj write f_cnpj;
  property nome: string read f_nome write f_nome;

end;

implementation

end.
