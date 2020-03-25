unit unt_procedures;

interface

uses
  DB,
  Forms,
  Classes,
  ComObj,
  Registry,
  ShellApi,
  SysUtils,
  Uni,
  Windows,
  wwDBGrid,
  wwDBComb;

procedure abrir_arquivo(arquivo: string);
procedure carrega_combo(cmb: TwwDBComboBox; sql: string; Limpar: boolean = true);
procedure carrega_combo_atividade(cmb: TwwDBComboBox; limpar: boolean = true);
procedure carrega_combo_bairro(cmb: TwwDBComboBox; id_municipio: integer; limpar: boolean = true);
procedure carrega_combo_usuarios(cmb: TwwDBComboBox; limpar: boolean = true);
procedure centralizar_tela(form: TForm);
procedure exec_sql(sql: widestring);
procedure exportar_csv(qry: TUniQuery);
procedure exportar_excel(grdExportar: TwwDBGrid);
procedure fechar_progresso;
procedure incrementar_progresso;
procedure inicializar_progresso(caption: string; max: integer);
procedure open_query(var dataset: TUniQuery; sql: string; retorna_erro: boolean = true);
procedure verifica_conf_data_windows;

implementation

uses
  unt_dtm_dados,
  unt_dtm_geral,
  unt_func_messages,
  unt_principal,
  unt_progresso;

procedure abrir_arquivo(arquivo: string);
begin
  ShellExecute(frm_principal.handle,'open',PChar(arquivo), '','',SW_SHOWNORMAL)
end;

procedure carrega_combo(
  cmb: TwwDBComboBox;
  sql: string;
  Limpar: boolean = true);

var
  q: TUniQuery;
begin

  q := TUniQuery.Create(nil);
  q.Connection := dtm_dados.mysql_conn;

  if Limpar then
    cmb.Items.Clear;

  open_query(
    q,
    sql);

  cmb.Clear;

  q.First;
  while not q.eof do
  begin
    cmb.Items.Add(q.FieldByName('nome').Text + #9 + q.FieldByName('id').Text);
    q.Next;
  end;

  q.Free;

end;

procedure carrega_combo_atividade(cmb: TwwDBComboBox; limpar: boolean = true);
var
  sql: string;

begin

  sql :=
    'select id, nome            '#13+
    'from atividade             '#13+
    'order by nome';

  carrega_combo(cmb, sql, limpar);

end;

procedure carrega_combo_bairro(
  cmb: TwwDBComboBox;
  id_municipio: integer;
  limpar: boolean = true);
var
  sql: string;
begin
  sql :=
    'select id, nome                                  '#13+
    'from bairro                                      '#13+
    'where id_municipio = ' + intToSTr(id_municipio)  +#13+
    'order by nome';
  carrega_combo(cmb, sql, limpar);
end;

procedure carrega_combo_usuarios(cmb: TwwDBComboBox; limpar: boolean = true);
var
  sql: string;
begin
  sql :=
    'select id, nome           '#13+
    'from usuario              '#13+
    'order by nome';
  carrega_combo(cmb, sql, limpar);
end;

procedure centralizar_tela(form: TForm);
begin
  form.Top := 0;
  form.Left := Trunc((frm_principal.Width - form.Width)/2);
end;

procedure exec_sql(sql: widestring);
var
  q: TUniQuery;
begin

  q := TUniQuery.Create(nil);
  q.Connection := dtm_dados.mysql_conn;

  q.SQL.Text := sql;

  q.ExecSQL;

end;

procedure exportar_csv(qry: TUniQuery);
var
  linha: string;
  coluna: integer;
  planilha: TStringList;
  nomeArq: string;
begin

  planilha:= TStringList.Create;
  planilha.Clear;
  linha := EmptyStr;
  for coluna := 0 to qry.FieldCount - 1 do
    linha := linha + qry.Fields[coluna].DisplayLabel + ';';
  planilha.add(linha);

  qry.First;
  qry.DisableControls;

  inicializar_progresso('Exportando...', qry.RecordCount);

  while not qry.eof do
  begin
    linha := '';
    for coluna := 0 to qry.FieldCount - 1 do
      linha := linha + qry.Fields[coluna].Text + ';';
    planilha.Add(linha);
    qry.Next;
    incrementar_progresso;
  end;

  dtm_geral.save_dialog.FileName := 'Export' + FormatDateTime('yyyyMMdd-hhmm',now) + '.csv';

  fechar_progresso;

  if dtm_geral.save_dialog.Execute then
  begin
    nomeArq := dtm_geral.save_dialog.Filename;
    if pos('.csv',nomeArq) = 0 then
      nomeArq := nomeArq + '.csv';

    planilha.SaveToFile(nomeArq);
    abrir_arquivo(nomeArq);
  end;

  qry.EnableControls;

end;

procedure exportar_excel(grdExportar: TwwDBGrid);
var
  linha, coluna : integer;
  planilha : variant;
  valorcampo : variant;
  qry: TDataset;

begin

  planilha:= CreateoleObject('Excel.Application');
  planilha.WorkBooks.add(1);
  planilha.caption := 'Exportação de Dados';
  planilha.visible := true;

  qry := grdExportar.DataSource.DataSet;
  qry.First;

  for linha := 0 to qry.RecordCount - 1 do
  begin
    for coluna := 1 to grdExportar.FieldCount do
    begin
      valorcampo := grdExportar.Fields[coluna - 1].value;
      planilha.cells[linha + 2,coluna] := valorCampo;
    end;
    qry.Next;
  end;

  for coluna := 1 to grdExportar.FieldCount do
  begin
    valorcampo := grdExportar.Fields[coluna - 1].DisplayLabel;
    planilha.cells[1,coluna] := valorcampo;
  end;
  planilha.columns.Autofit;

end;

procedure fechar_progresso;
begin
  frm_progresso.Close;
end;

procedure incrementar_progresso;
begin
  frm_progresso.ProgressBar1.Position := frm_progresso.ProgressBar1.Position + 1;
  frm_progresso.Invalidate;
  frm_progresso.Refresh;
  Application.ProcessMessages;
end;

procedure inicializar_progresso(
  caption: string;
  max: integer);
begin
  frm_progresso.ProgressBar1.Position := 0;
  frm_progresso.ProgressBar1.Max := Max;
  frm_progresso.Caption := Caption;
  frm_progresso.Show;
end;

procedure open_query(
  var dataset: TUniQuery;
  sql: string;
  retorna_erro: boolean = true);

begin

  dataset.Close;
  dataset.SQL.Text := sql;
  try
    dataset.Open;
  except
    on e: exception do
    begin
      if retorna_erro then
        msg_error('Erro ao executar query no banco de dados.'#13+
                     'Mensagem interna: ' + e.Message + #13#13 + SQL);
    end;
  end;
end;

procedure verifica_conf_data_windows;
var
  reg: TRegistry;
  formato: string;
begin
  try
    reg := TRegistry.Create;
    reg.RootKey := HKEY_CURRENT_USER;
    reg.OpenKey('\Control Panel\International', true);
    formato := reg.ReadString('sShortDate');
    if formato <> 'dd/MM/yyyy' then
    begin
      msg_alert('O Multidev irá alterar o formato de data do Windows para "dd/MM/yyyy" para que os relatórios e filtros de data funcionem corretamente.'#13#13 +
                'Se desejar futuramente desfazer a alteração, vá ao Painel de Controle em Configurações Regionais e altere o formato de data para o desejado.');
      reg.WriteString('sShortDate','dd/MM/yyyy');
    end;

    reg.CloseKey;
  finally
    reg.Free;
  end;
end;

end.
