unit unt_functions;

interface

uses
  Controls,
  Forms,
  ShellApi,
  SysUtils,
  Uni,
  Windows;

  function ajusta_numero_telefone(tel: string): string;
  function arredonda(valor: currency): currency;
  function bairro_cadastrado(id_municipio: integer; nome_bairro: string): boolean;
  function between_datas(field: string; ini: TDate; fim: TDate; add_and: boolean = true): string;
  function cpf_valido(cpf: string): boolean;
  function cnpj_valido(cnpj: string): boolean;
  function data_sql(data: TDate): string;
  function decmonth(data: TDate; n: integer = 1): TDate;
  function define_mascara_telefone(tel: string): string;
  function first_id(tabela: string; pk: string; filter: string): integer;
  function get_customer_folder(id: integer): string;
  function get_customer_folder_lic(id_customer: integer; id_licenca: integer): string;
  function last_id(tabela: string; pk: string; filter: string): integer;
  function leap_year(year: word): boolean;
  function iif(condicao: boolean; result_true: variant; result_false: variant): variant;
  function inicio_licenca(id_licenca: integer): TDate;
  function input_inteiro(titulo: string = 'Nъmero'; default: string = ''): integer;
  function input_texto(titulo: string; default: string = ''; max: integer = 0; CharCase: char = 'U'): string;
  function maiusculas(s: string): string;
  function next_id(tabela: string; pk: string; id: integer; filter: string): integer;
  function nome_categoria(id: integer): string;
  function novo_bairro(id_municipio: integer; bairro: string = ''): integer;
  function pesquisar(var q: TUniQuery; sql: string; campo: string; tela: string; window_state: TWindowState = wsNormal): boolean;
  function primeiro_dia_mes(data: TDate): TDate;
  function proximo_vencimento(id_categoria: integer; venc: TDate): TDate;
  function prior_id(tabela: string; pk: string; id: integer; filter: string): integer;
  function troca_acentos(texto: string): string;
  function ultimo_dia_mes(data: TDate):TDate;
  function valor_str(valor: currency): string;

implementation

uses
  unt_constantes,
  unt_dtm_dados,
  unt_func_messages,
  unt_procedures,
  unt_pesquisa,
  unt_input_inteiro,
  unt_dtm_geral,
  unt_input_texto;

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

function bairro_cadastrado(id_municipio: integer; nome_bairro: string): boolean;
var
  q: TUniQuery;
begin

  q := TUniQuery.Create(nil);
  q.Connection := dtm_dados.mysql_conn;

  open_query(
    q,
    'select * from bairro                             '#13+
    'where id_municipio = ' + intToStr(id_municipio)  +#13+
    '    and nome = ' + quotedStr(nome_bairro));
  result := not q.isEmpty;
  q.free;

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
  result := QuotedStr(FormatDateTime('yyyy-mm-dd', data));
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

function input_inteiro(titulo: string = 'Nъmero'; default: string = ''): integer;
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

function maiusculas(s: string): string;
var
  i: integer;
begin
  s := upperCase(s);
  result := EmptyStr;

  for i := 1 to length(s) do
  begin
    case s[i] of
      'з': s[i] := 'З';
      'б': s[i] := 'Б';
      'г': s[i] := 'Г';
      'в': s[i] := 'В';
      'а': s[i] := 'А';
      'й': s[i] := 'Й';
      'к': s[i] := 'К';
      'у': s[i] := 'У';
      'х': s[i] := 'Х';
      'ф': s[i] := 'Ф';
      'н': s[i] := 'Н';
    end;
    result := result + s[i];
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

function input_texto(
  titulo: string;
  default: string = '';
  max: integer = 0;
  CharCase: char = 'U'): string;
begin

  with frm_input_texto do
  begin
    FCharCase := CharCase;

    MaxLength := max;

    if MaxLength = 0 then
      Width := 200
    else
      Width := max * 5;

    mmo_texto.Text := default;
    pnl_titulo.Caption := titulo;

    if ShowModal = mrOK then
      result := Trim(mmo_texto.Text)
    else
      result := EmptyStr;
  end;

end;


function novo_bairro(id_municipio: integer; bairro: string = ''): integer;
var
  id: integer;
begin

  if bairro = '' then
    bairro := input_texto('BAIRRO', '', 100, 'U');
  dtm_dados.qry_bairro.Append;
  dtm_dados.qry_bairro.FieldByName('id_municipio').AsInteger := id_municipio;
  dtm_dados.qry_bairro.FieldByName('nome').AsString := bairro;
  dtm_dados.qry_bairro.Post;
  dtm_dados.qry_bairro.Refresh;
  
  result := dtm_dados.qry_bairro.FieldByName('id').AsInteger;

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

    if (letra = 'г') or (letra = 'а') or (letra = 'б') or (letra = 'в') then
      letra := 'a'
    else if (letra = 'Г') or (letra = 'А') or (letra = 'Б') or (letra = 'В') then
      letra := 'A'
    else if (letra = 'й') or (letra = 'к') then
      letra := 'e'
    else if (letra = 'Й') or (letra = 'К') then
      letra := 'E'
    else if (letra = 'Н') then
      letra := 'I'
    else if (letra = 'н') then
      letra := 'i'
    else if (letra = 'х') or (letra = 'у') or (letra = 'ф') then
      letra := 'o'
    else if (letra = 'Х') or (letra = 'У') or (letra = 'Ф') then
      letra := 'O'
    else if (letra = 'Ъ') then
      letra := 'U'
    else if (letra = 'ъ') then
      letra := 'u'
    else if ((letra = 'з')) then
      letra := 'c'
    else if (letra = 'З') then
      letra := 'C'
    else if (letra = 'є') then
      letra := 'o.'
    else if (letra = 'Є') then
      letra := 'a.'
    else if (letra = 'є') then
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

function between_datas(
  field: string;
  ini: TDate;
  fim: TDate;
  add_and: boolean = true): string;
begin
  if add_and then
    result := '    and ' + field + ' between ' + data_sql(ini) + ' and ' + data_sql(fim)
  else
    result := '    ' + field + ' between ' + data_sql(ini) + ' and ' + data_sql(fim);
end;

function ultimo_dia_mes(data: TDate):TDate;
var d, m, a: word;
begin
	decodeDate(data, a, m, d);
	a	:= iif(m = 12, a + 1, a);
	m := iif(m = 12, 1, m + 1);
	result 		:= encodeDate(a, m, 1) - 1;
end;

function primeiro_dia_mes(data: TDate): TDate;
var d, m, a: word;
begin
	decodeDate(data, a, m, d);
	result := encodeDate(a, m, 1);
end;

procedure abrir_pasta_cliente(id: integer);
var
  pdf,caminho: string;
  handle: HWND;

begin

  caminho := '\\ecoserver\clientes\' + intToStr(id) + '\';

  if DirectoryExists(caminho) then
    ShellExecute(handle,'open',PChar(caminho), '','',SW_SHOWNORMAL)
  else if FileExists(pdf) then
    ShellExecute(handle,'open',PChar(pdf), '','',SW_SHOWNORMAL)

end;

function leap_year(year: word): boolean;
begin
  result := (year mod 4) = 0;
end;

function decmonth(data: TDate; n: integer = 1): TDate;
var
  d, m, a: word;
  i: integer;
begin

  for i := 1 to n do
  begin
    DecodeDate(data,a,m,d);

    if m = 1 then
    begin
      Dec(a);
      m := 12;
    end
    else
      dec(m);

    if m = 2 then
    begin
      if leap_year(a) then
      begin
        if d > 29 then
          d := 29
      end
      else
      begin
        if d > 28 then
          d := 28;
      end;
    end
    else
    if (d = 31) and (m in [4,6,9,11]) then
      d := 30;

    Data := EncodeDate(a,m,d);
  end;

  result := Data;

end;

function nome_categoria(id: integer): string;
var
  q: TUniQuery;
begin

  q := TUniQuery.Create(nil);
  q.Connection := dtm_dados.mysql_conn;
  result := '';

  try
    open_query(
      q,
      'select nome                                                              '#13+
      'from categoria                                                           '#13+
      'where id = ' + intToStr(id));
    result := q.FieldByName('nome').Text;
  finally
    q.Free;
  end;

end;

function get_customer_folder(id: integer): string;
var
  caminho: string;
  handle: HWND;
begin

  handle := GetTopWindow(0);
  caminho := '\\ecoserver\multidev\clientes\' + intToStr(id);
//  caminho := 'd:\multidev\clientes\' + intToStr(id);

  if not DirectoryExists(caminho) then
    try
      CreateDir(caminho);
    except
      msg_info('Pasta nгo existente. Acesso negado para a criaзгo');
    end;

  result := caminho;
end;

function inicio_licenca(id_licenca: integer): TDate;
var
  q: TUniQuery;
begin

  q := TUniQuery.Create(nil);
  q.Connection := dtm_dados.mysql_conn;
  result := 0;

  try
    open_query(
      q,
      'select dt_ini                                                            '#13+
      'from licenca                                                             '#13+
      'where id = ' + intToStr(id_licenca));
    result := q.FieldByName('dt_ini').AsDateTime;
  finally
    q.Free;
  end;

end;

function proximo_vencimento(
  id_categoria: integer;
  venc: TDate): TDate;
begin
  case id_categoria of
    3: result := IncMonth(venc, 3);
    4: result := IncMonth(venc, 6);
    5: result := IncMonth(venc, 12);
    6: result := IncMonth(venc, 24);
    7: result := IncMonth(venc, 36);
  end;
end;

function get_customer_folder_lic(
  id_customer: integer;
  id_licenca: integer): string;
var
  pst_cliente: string;
  pst_licenca: string;
begin

  pst_cliente := get_customer_folder(id_customer);

  if not DirectoryExists(pst_cliente) then
    CreateDir(pst_cliente);

  pst_licenca := pst_cliente + '\' + intToStr(id_licenca);

  if not DirectoryExists(pst_licenca) then
    CreateDir(pst_licenca);

  result := pst_licenca + '\';
end;

end.
