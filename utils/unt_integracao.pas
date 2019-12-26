unit unt_integracao;

interface

uses
  ADODB,
  ComObj,
  SysUtils,
  uLkJson,
  unt_classe_endereco;

function busca_cep(cep: string): TEndereco;

implementation

uses unt_dtm_dados, unt_procedures, unt_functions;

function busca_cep(cep: string): TEndereco;
var
  js:TlkJSONobject;
  s: WideString;
  m: variant;
  api: string;
  endereco: TEndereco;
  q: TADOQuery;
  nome_municipio: string;
  nome_bairro: string;

begin

  endereco := TEndereco.Create;
  q := TADOQuery.Create(nil);
  q.Connection := dtm_dados.con_mysql;

  // requisição
  api := 'http://viacep.com.br/ws/'+CEP+'/json/';
  m := CreateOleObject('Microsoft.XMLHTTP');
  m.Open('GET',api, false);
  m.Send;
  s := UTF8Encode(m.responseText);

  // consumo
  js := TlkJSONobject.Create;
  js := TlkJSON.ParseText(s) as TlkJSONobject;
  
  if js.Field['erro'] = nil then
  begin
    endereco.encontrado := true;
    endereco.logradouro := js.Field['logradouro'].Value;
    endereco.complemento := js.Field['complemento'].Value;
    endereco.bairro := js.Field['bairro'].Value;
    endereco.municipio := js.Field['localidade'].Value;
    endereco.uf := js.Field['uf'].Value;

    nome_municipio := upperCase(troca_acentos(trim(endereco.municipio)));
    nome_bairro := upperCase(troca_acentos(trim(endereco.bairro)));

    open_query(
      q,
      'select id from uf                                       '#13+
      'where upper(sigla) = ' + quotedStr(endereco.uf));

    if q.IsEmpty then
      endereco.id_uf := 0
    else
      endereco.id_uf := q.FieldByName('id').AsInteger;

    open_query(
      q,
      'select id from municipio                                       '#13+
      'where upper(nome) = ' + quotedStr(nome_municipio));

    if q.IsEmpty then
      endereco.id_municipio := 0
    else
      endereco.id_municipio := q.FieldByName('id').AsInteger;

    open_query(
      q,
      'select id from bairro                                          '#13+
      'where upper(nome) = ' + quotedStr(nome_bairro)                 +#13+
      '  and id_municipio = ' + intToStr(endereco.id_municipio));

    if q.IsEmpty then
      endereco.id_bairro := 0
    else
      endereco.id_bairro := q.FieldByName('id').AsInteger
  end
  else
    endereco.encontrado := false;

  result := endereco;

end;


end.
