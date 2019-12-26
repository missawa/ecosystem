unit unt_classe_endereco;

interface

type TEndereco = class
  encontrado: boolean;
  logradouro: string;
  complemento: string;
  id_bairro: integer;
  bairro: string;
  id_municipio: integer;
  municipio: string;
  id_uf: integer;
  uf: string;
end;

implementation

end.
