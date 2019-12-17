unit unt_procedures;

interface

uses
  ADODB,
  DB,
  Forms,
  Classes,
  ComObj,
  Registry,
  ShellApi,
  SysUtils,
  Windows,
  WWDBGrid;

procedure abrir_arquivo(arquivo: string);
procedure centralizar_tela(form: TForm);
procedure exportar_csv(qry: TCustomADODataset);
procedure exportar_excel(grdExportar: TwwDBGrid);
procedure fechar_progresso;
procedure incrementar_progresso;
procedure inicializar_progresso(caption: string; max: integer);
procedure open_query(var dataset: TADOQuery; sql: string; retorna_erro: boolean = true);
procedure verifica_conf_data_windows;

implementation

uses unt_func_messages, unt_dtm_dados, unt_principal, unt_dtm_geral,
  unt_progresso;

procedure abrir_arquivo(arquivo: string);
begin
  ShellExecute(frm_principal.handle,'open',PChar(arquivo), '','',SW_SHOWNORMAL)
end;

procedure centralizar_tela(form: TForm);
begin
  form.Top := 0;
  form.Left := Trunc((frm_principal.Width - form.Width)/2);
end;

procedure exportar_csv(qry: TCustomADODataset);
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
  var dataset: TADOQuery;
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
