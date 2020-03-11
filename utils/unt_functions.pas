unit unt_functions;

interface

uses
  Controls,
  Forms,
  SysUtils,
  Uni;

  function ajusta_numero_telefone(tel: string): string;
  function arredonda(valor: currency): currency;
  function cpf_valido(cpf: string): boolean;
  function cnpj_valido(cnpj: string): boolean;
  function data_sql(data: TDate): string;
  function define_mascara_telefone(tel: string): string;
  function first_id(tabela: string; pk: string; filter: string): integer;
  function last_id(tabela: string; pk: string; filter: string): integer;
  function iif(condicao: boolean; result_true: variant; result_false: variant): variant;
  function input_inteiro(titulo: string = 'Número'; default: string = ''): integer;
  function next_id(tabela: string; pk: string; id: integer; filter: string): integer;
  function pesquisar(var q: TUniQuery; sql: string; campo: string; tela: string; window_state: TWindowState = wsNormal): boolean;
  function prior_id(tabela: string; pk: string; id: integer; filter: string): integer;
  function troca_acentos(texto: string): string;
  function valor_str(valor: currency): string;

implementation

uses
  unt_constantes,
  unt_dtm_dados,
  unt_func_messages,
  unt_procedures,
  unt_pesquisa, unt_input_inteiro;

function ajusta_numero_telefone(tel: string): string;
var
  tam: integer;
begin
  tam := length(tel);

  if tam <= 8 then //Fixo
    result := intToStr(input_inteiro('DDD','27')) + tel
  else if tam = 9 then  //Celular
    result := intToStr(input_inteiro('DDD','27')) + tel
  else
    result := copy(tel, length(tel) - 10, 11);
end;

function arredonda(valor: currency): currency;

var
  b: integer;
  y :integer;

begin
  try
      result := StrToCurr(FormatFloat('0.00', Valor));
  except
    on e: exception do
    begin
      msg_error('Erro ao arredondar valores: ' + E.message);
      result := valor;
    end;
  end;
end;

function cpf_valido(cpf: string): boolean;
var
  calc: string;
  soma: integer;
  aux: SHORTINT;
  dig: integer;

begin
  if (cpf <> '   .   .   -  ') and (cpf <> '') then
  begin
    try
      if length(cpf) > 11 then
        cpf := copy(cpf, 1, 3) +
               copy(cpf, 5, 3) +
               copy(cpf, 9, 3) +
               copy(cpf, 13, 2);

      calc := copy(cpf, 1, 9);
      soma := 0;

      for aux := 1 to 9 do
        soma := soma + strtoint(copy(calc, aux, 1)) * (11 - aux);

      dig := 11 - soma mod 11;

      if dig in [10, 11] then
        calc := calc + '0'
      else
        calc := calc + inttoStr(dig);

      soma := 0;

      for aux := 1 to 10 do
        soma := soma + strtoint(copy(calc, aux, 1)) * (12 - aux);

      dig := 11 - soma mod 11;

      if dig in [10, 11] then
        calc := calc + '0'
      else
        calc := calc + inttoStr(dig);

      if cpf <> calc then
        result := false
      else
        result := true;

    except
      on EConvertError do result := false;
    end
  end
end;

function cnpj_valido(cnpj: string): boolean;
var
  calc: string;
  soma: integer;
  aux: shortint;
  dig: integer;

begin
  if (cnpj <> '  .   .   /    -') and (cnpj <> '') then
  begin
    try
      if length(cnpj) > 14 then
      begin
        cnpj := copy(cnpj, 1, 2) +
                copy(cnpj, 4, 3) +
                copy(cnpj, 8, 3) +
                copy(cnpj, 12, 4) +
                copy(cnpj, 17, 2);
      end;

      calc := Copy(cnpj, 1, 12);

      soma := 0;

      for aux := 1 to 4 do
        soma := soma + strtoint(copy(calc, aux, 1)) * (6 - aux);
      for aux := 1 to 8 do
        soma := soma + strtoint(copy(calc, aux + 4, 1)) * (10 - aux);
      dig := 11 - soma mod 11;

      if dig in [10, 11] then
        calc := calc + '0'
      else
        calc := calc + inttoStr(dig);

      soma := 0;

      for aux := 1 to 5 do
        soma := soma + strtoint(copy(calc, aux, 1)) * (7 - aux);
      for aux := 1 to 8 do
        soma := soma + strtoint(copy(calc, aux + 5, 1)) * (10 - aux);
      dig := 11 - soma mod 11;
      if dig in [10, 11] then
      begin
        calc := calc + '0';
      end
      else
      begin
        calc := calc + inttoStr(dig);
      end;
      if cnpj <> calc then
        result := false
      else
        result := true;
    except
      on EConvertError do result := false;
    end;
  end;
end;


function data_sql(data: TDate): string;
begin
  result := QuotedStr(FormatDateTime('MM/dd/yyyy', data));
end;

function define_mascara_telefone(tel: string): string;
begin
  if length(tel) = 10 then
    result := msk_tel_fixo
  else if length(tel) = 11 then
    result := msk_tel_celular
  else
    result := '';
end;

function iif(condicao: boolean; result_true: variant; result_false: variant): variant;
begin
  if condicao then
    result := result_true
  else
    Result := result_false;
end;

function input_inteiro(titulo: string = 'Número'; default: string = ''): integer;
begin

  frm_input_inteiro.Caption := titulo;
  frm_input_inteiro.edt_valor.Text := default;

  if frm_input_inteiro.ShowModal = mrOk then
  begin
    if frm_input_inteiro.edt_valor.Text = '' then
      result := 0
    else
      result := strToInt(frm_input_inteiro.edt_valor.Text)
  end
  else
    result := 0;

end;

function first_id(
  tabela: string;
  pk: string;
  filter: string): integer;
var
  q: TUniQuery;
begin

  q := TUniQuery.Create(nil);
  q.Connection := dtm_dados.mysql_conn;

  try
    open_query(
      q,
      'select coalesce(min(' + pk + '),0) as id '#13+
      'from ' + tabela                          +#13+
      'where ' + pk + ' is not null             '#13+
      filter);

    result := q.FieldByName('id').AsInteger;

  except
    q.Free;
  end;

end;

function last_id(
  tabela: string;
  pk: string;
  filter: string): integer;
var
  q: TUniQuery;
begin

  q := TUniQuery.Create(nil);
  q.Connection := dtm_dados.mysql_conn;

  try
    open_query(
      q,
      'select coalesce(max(' + pk + '),0) as id '#13+
      'from ' + tabela                          +#13+
      'where ' + pk + ' is not null             '#13+
      filter);

    result := q.FieldByName('id').AsInteger;

  except
    q.Free;
  end;

end;

function next_id(
  tabela: string;
  pk: string;
  id: integer;
  filter: string): integer;
var
  q: TUniQuery;
begin

  q := TUniQuery.Create(nil);
  q.Connection := dtm_dados.mysql_conn;

  try
    open_query(
      q,
      'select coalesce(min(' + pk + '),0) as id '#13+
      'from ' + tabela                          +#13+
      'where ' + pk + ' > ' + intToStr(id)      +#13+
      filter);

    if q.FieldByName('id').AsInteger = 0 then
      result := last_id(tabela,pk,filter)
    else
      result := q.FieldByName('id').AsInteger;

  except
    q.Free;
  end;

end;

function pesquisar(
  var q: TUniQuery;
  sql: string;
  campo: string;
  tela: string;
  window_state: TWindowState = wsNormal): boolean;
begin

  frm_pesquisa.WindowState := window_state;

  frm_pesquisa.edt_valor.Clear;

  if Tela <> frm_pesquisa.tela then
  begin
    frm_pesquisa.tela := tela;
    frm_pesquisa.qry.Close;
  end;

  frm_pesquisa.sql := sql;
  frm_pesquisa.campo_padrao := Campo;

  if frm_pesquisa.ShowModal = mrOK then
  begin
    q := frm_pesquisa.qry;
    result := true;
  end
  else
    result := false;

  Application.ProcessMessages;

end;

function prior_id(
  tabela: string;
  pk: string;
  id: integer;
  filter: string): integer;
var
  q: TUniQuery;
begin

  q := TUniQuery.Create(nil);
  q.Connection := dtm_dados.mysql_conn;

  try
    open_query(
      q,
      'select coalesce(max(' + pk + '),0) as id '#13+
      'from ' + tabela                          +#13+
      'where ' + pk + ' < ' + intToStr(id)      +#13+
      filter);

    if q.FieldByName('id').AsInteger = 0 then
      result := first_id(tabela,pk,filter)
    else
      result := q.FieldByName('id').AsInteger;

  except
    q.Free;
  end;

end;

function troca_acentos(texto: string): string;
var
  x: integer;
  letra: string;
begin
  result := '';
  for x := 1 to length(texto) do
  begin
    letra := copy(texto, x, 1);

    if (letra = 'ã') or (letra = 'à') or (letra = 'á') or (letra = 'â') then
      letra := 'a'
    else if (letra = 'Ã') or (letra = 'À') or (letra = 'Á') or (letra = 'Â') then
      letra := 'A'
    else if (letra = 'é') or (letra = 'ê') then
      letra := 'e'
    else if (letra = 'É') or (letra = 'Ê') then
      letra := 'E'
    else if (letra = 'Í') then
      letra := 'I'
    else if (letra = 'í') then
      letra := 'i'
    else if (letra = 'õ') or (letra = 'ó') or (letra = 'ô') then
      letra := 'o'
    else if (letra = 'Õ') or (letra = 'Ó') or (letra = 'Ô') then
      letra := 'O'
    else if (letra = 'Ú') then
      letra := 'U'
    else if (letra = 'ú') then
      letra := 'u'
    else if ((letra = 'ç')) then
      letra := 'c'
    else if (letra = 'Ç') then
      letra := 'C'
    else if (letra = 'º') then
      letra := 'o.'
    else if (letra = 'ª') then
      letra := 'a.'
    else if (letra = 'º') then
      letra := 'o.';

    result := result + letra;
  end;

end;

function valor_str(valor: currency): string;
var
  v: string;
begin
  v := FloatToStr(arredonda(valor));
  if pos(',', v) <> 0 then
  begin
    Insert('.', v, pos(',', v));
    Delete(v, pos(',', v), 1);
  end;
  result := v;
end;


end.
