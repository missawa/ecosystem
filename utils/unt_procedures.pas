unit unt_procedures;

interface

uses
  DB,
  Forms,
  Classes,
  Controls,
  ComObj,
  Registry,
  ShellApi,
  SysUtils,
  Uni,
  Windows,
  wwDBGrid,
  wwDBComb,
  IdSMTP,
  IdMessage,
  IdSSLOpenSSL,
  IdExplicitTLSClientServerBase;

procedure abrir_arquivo(arquivo: string);
procedure abrir_pasta_cliente(id: integer);
procedure carrega_combo(cmb: TwwDBComboBox; sql: string; Limpar: boolean = true);
procedure carrega_combo_atividade(cmb: TwwDBComboBox; limpar: boolean = true);
procedure carrega_combo_bairro(cmb: TwwDBComboBox; id_municipio: integer; limpar: boolean = true);
procedure carrega_combo_categoria(cmb: TwwDBComboBox; limpar: boolean = true);
procedure carrega_combo_uf(cmb: TwwDBComboBox);
procedure carrega_combo_usuarios(cmb: TwwDBComboBox; limpar: boolean = true);
procedure centralizar_tela(form: TForm);
procedure enviar_email;
procedure exec_sql(sql: widestring);
procedure exportar_csv(qry: TUniQuery);
procedure exportar_excel(grdExportar: TwwDBGrid);
procedure fechar_progresso;
procedure incrementar_progresso;
procedure inicializar_progresso(caption: string; max: integer);
procedure nova_condicionante(id_licenca: integer; numero: string; prazo: integer; id_categoria: integer; id_responsavel: integer; cumprida: string; dt_cump: TDate; dt_venc: TDate; dt_aviso: TDate; descricao: string);
procedure open_query(var dataset: TUniQuery; sql: string; retorna_erro: boolean = true);
procedure verifica_conf_data_windows;

implementation

uses
  unt_dtm_dados,
  unt_dtm_geral,
  unt_func_messages,
  unt_principal,
  unt_progresso, unt_functions;

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

procedure carrega_combo_categoria(cmb: TwwDBComboBox; limpar: boolean = true);
var
  sql: string;

begin

  sql :=
    'select id, nome            '#13+
    'from categoria             '#13+
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

procedure carrega_combo_uf(cmb: TwwDBComboBox);
begin

  cmb.Items.Clear;
  cmb.Clear;

  cmb.Items.Add('AC' +#9 + 'AC');
  cmb.Items.Add('AL' +#9 + 'AL');
  cmb.Items.Add('AM' +#9 + 'AM');
  cmb.Items.Add('AP' +#9 + 'AP');
  cmb.Items.Add('BA' +#9 + 'BA');
  cmb.Items.Add('CE' +#9 + 'CE');
  cmb.Items.Add('DF' +#9 + 'DF');
  cmb.Items.Add('ES' +#9 + 'ES');
  cmb.Items.Add('GO' +#9 + 'GO');
  cmb.Items.Add('MA' +#9 + 'MA');
  cmb.Items.Add('MG' +#9 + 'MG');
  cmb.Items.Add('MS' +#9 + 'MS');
  cmb.Items.Add('MT' +#9 + 'MT');
  cmb.Items.Add('PA' +#9 + 'PA');
  cmb.Items.Add('PB' +#9 + 'PB');
  cmb.Items.Add('PE' +#9 + 'PE');
  cmb.Items.Add('PI' +#9 + 'PI');
  cmb.Items.Add('PR' +#9 + 'PR');
  cmb.Items.Add('RJ' +#9 + 'RJ');
  cmb.Items.Add('RN' +#9 + 'RN');
  cmb.Items.Add('RO' +#9 + 'RO');
  cmb.Items.Add('RR' +#9 + 'RR');
  cmb.Items.Add('RS' +#9 + 'RS');
  cmb.Items.Add('SC' +#9 + 'SC');
  cmb.Items.Add('SE' +#9 + 'SE');
  cmb.Items.Add('SP' +#9 + 'SP');
  cmb.Items.Add('TO' +#9 + 'TO');

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

  procedure exportar;
  var
    col: integer;
  begin
    linha := '';
    for col := 0 to qry.FieldCount - 1 do
    begin
      if qry.Fields[col].Tag <> -1 then  //Colunas indesejadas, que devem estar marcadas na query
      begin

        if uppercase(qry.Fields[col].DisplayLabel) = 'CNPJ' then
          linha := linha + '"' + mask_cnpj(qry.Fields[col].Text) + '"' + ';'
        else if uppercase(qry.Fields[col].DisplayLabel) = 'CPF' then
          linha := linha + '"' + mask_cpf(qry.Fields[col].Text) + '"' + ';'
        else if qry.Fields[col].DataType = ftString then
          linha := linha + '"' + qry.Fields[col].Text + '"' + ';'
        else
          linha := linha + qry.Fields[col].Text + ';';
      end;
    end;
    planilha.Add(linha);
  end;


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
    {linha := '';
    for coluna := 0 to qry.FieldCount - 1 do
      linha := linha + qry.Fields[coluna].Text + ';';}
    exportar;
    planilha.Add(linha);
    qry.Next;
    incrementar_progresso;
  end;

  dm_geral.save_dialog.FileName := 'Export' + FormatDateTime('yyyyMMdd-hhmm',now) + '.csv';

  fechar_progresso;

  if dm_geral.save_dialog.Execute then
  begin
    nomeArq := dm_geral.save_dialog.Filename;
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

procedure abrir_pasta_cliente(id: integer);
var
  pdf,caminho: string;
  handle: HWND;

begin

  caminho := get_customer_folder(id);

  if DirectoryExists(caminho) then
    ShellExecute(handle,'open',PChar(caminho), '','',SW_SHOWNORMAL)
  else
    CreateDir(caminho);

end;

procedure nova_condicionante(
  id_licenca: integer;
  numero: string;
  prazo: integer;
  id_categoria: integer;
  id_responsavel: integer;
  cumprida: string;
  dt_cump: TDate;
  dt_venc: TDate;
  dt_aviso: TDate;
  descricao: string);
var
  str_venc: string;
  str_aviso: string;
  str_dt_cump: string;
  str_cump: string;
  str_prazo: string;
begin

  if cumprida = 'S' then
    str_cump := quotedStr('S')
  else
    str_cump := quotedStr('N');

  if dt_cump = 0 then
    str_dt_cump := 'null'
  else
    str_dt_cump := data_sql(dt_cump);

  if dt_venc = 0 then
    str_venc := 'null'
  else
    str_venc := data_sql(dt_venc);

  if dt_aviso = 0 then
    str_aviso := 'null'
  else
    str_aviso := data_sql(dt_Aviso);

  if prazo = 0 then
    str_prazo := 'null'
  else
    str_prazo := intToStr(trunc(prazo));

  exec_sql(
    'insert into condicionante (                                                '#13+
    '  id_licenca,                                                              '#13+
    '  numero,                                                                  '#13+
    '  prazo,                                                                   '#13+
    '  dt_venc,                                                                 '#13+
    '  dt_aviso,                                                                '#13+
    '  id_categoria,                                                            '#13+
    '  id_responsavel,                                                          '#13+
    '  dt_cumprimento,                                                          '#13+
    '  cumprida,                                                                '#13+
    '  descricao)                                                               '#13+
    'values (                                                                   '#13+
    intToStr(id_licenca) + ',' +
    quotedstr(numero) + ',' +
    str_prazo + ',' +
    str_venc + ',' +
    str_aviso + ',' +
    intToStr(id_categoria) + ',' +
    intToStr(id_responsavel) + ',' +
    str_dt_cump + ',' +
    str_cump + ',' +
    quotedStr(descricao) + ')');
end;

procedure enviar_email;
var
  SMTP: TIdSMTP;
  Msg: TIdMessage;
  SSLHandler: TIdSSLIOHandlerSocketOpenSSL;
begin
  SMTP := TIdSMTP.Create(nil);
  Msg := TIdMessage.Create(nil);
  SSLHandler := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
  try
    // Configuração do servidor SMTP
    SMTP.Host := 'smtp.ecoplan.eco.br';
    SMTP.Port := 587; // Porta do servidor SMTP
    SMTP.Username := 'sistema@ecoplan.eco.br';
    SMTP.Password := 'Multi#2020';
    SMTP.IOHandler := SSLHandler;
    SMTP.UseTLS := utUseExplicitTLS;

    // Configuração da mensagem
    Msg.From.Address := 'sistema@ecoplan.eco.br';
    Msg.Recipients.EmailAddresses := 'missawa@multidev.com.br';
    Msg.Subject := 'Assunto do Email';
    Msg.Body.Text := 'Corpo do email';

    // Enviar o email
    SMTP.Connect;
    try
      SMTP.Send(Msg);
    finally
      SMTP.Disconnect;
    end;

    msg_info('Email enviado com sucesso!');
  finally
    SMTP.Free;
    Msg.Free;
    SSLHandler.Free;
  end;
end;


end.
