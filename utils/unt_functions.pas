unit unt_functions;

interface

uses
  ADODB,
  Controls,
  Forms,
  SysUtils;

  function data_sql(data: TDate): string;
  function first_id(tabela: string; pk: string): integer;
  function last_id(tabela: string; pk: string): integer;
  function iif(condicao: boolean; result_true: variant; result_false: variant): variant;
  function next_id(tabela: string; pk: string; id: integer): integer;
  function pesquisar(var q: TADOQuery; sql: string; campo: string; tela: string; window_state: TWindowState = wsNormal): boolean;
  function prior_id(tabela: string; pk: string; id: integer): integer;
  function valor_str(valor: currency): string;

implementation

uses unt_procedures, unt_pesquisa, unt_func_messages, unt_dtm_dados;

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

function data_sql(data: TDate): string;
begin
  result := QuotedStr(FormatDateTime('MM/dd/yyyy', data));
end;

function iif(condicao: boolean; result_true: variant; result_false: variant): variant;
begin
  if condicao then
    result := result_true
  else
    Result := result_false;
end;

function first_id(
  tabela: string;
  pk: string): integer;
var
  q: TADOQuery;
begin

  q := TADOQuery.Create(nil);
  q.Connection := dtm_dados.con_mysql;

  try
    open_query(
      q,
      'select coalesce(min(' + pk + '),0) as id '#13+
      'from ' + tabela);

    result := q.FieldByName('id').AsInteger;

  except
    q.Free;
  end;

end;

function last_id(
  tabela: string;
  pk: string): integer;
var
  q: TADOQuery;
begin

  q := TADOQuery.Create(nil);
  q.Connection := dtm_dados.con_mysql;

  try
    open_query(
      q,
      'select coalesce(max(' + pk + '),0) as id '#13+
      'from ' + tabela);

    result := q.FieldByName('id').AsInteger;

  except
    q.Free;
  end;

end;

function next_id(
  tabela: string;
  pk: string;
  id: integer): integer;
var
  q: TADOQuery;
begin

  q := TADOQuery.Create(nil);
  q.Connection := dtm_dados.con_mysql;

  try
    open_query(
      q,
      'select coalesce(min(' + pk + '),0) as id '#13+
      'from ' + tabela                          +#13+
      'where ' + pk + ' > ' + intToStr(id));

    if q.FieldByName('id').AsInteger = 0 then
      result := last_id(tabela,pk)
    else
      result := q.FieldByName('id').AsInteger;

  except
    q.Free;
  end;

end;

function pesquisar(
  var q: TADOQuery;
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
  id: integer): integer;
var
  q: TADOQuery;
begin

  q := TADOQuery.Create(nil);
  q.Connection := dtm_dados.con_mysql;

  try
    open_query(
      q,
      'select coalesce(max(' + pk + '),0) as id '#13+
      'from ' + tabela                          +#13+
      'where ' + pk + ' < ' + intToStr(id));

    if q.FieldByName('id').AsInteger = 0 then
      result := first_id(tabela,pk)
    else
      result := q.FieldByName('id').AsInteger;

  except
    q.Free;
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
