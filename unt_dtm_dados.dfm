object dtm_dados: Tdtm_dados
  OldCreateOrder = False
  Height = 527
  Width = 1070
  object mysql_provider: TMySQLUniProvider
    Left = 35
    Top = 10
  end
  object qry_usuario: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO usuario'
      '  (id, id_pessoa, login, senha, nome)'
      'VALUES'
      '  (:id, :id_pessoa, :login, :senha, :nome)')
    SQLDelete.Strings = (
      'DELETE FROM usuario'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE usuario'
      'SET'
      
        '  id = :id, id_pessoa = :id_pessoa, login = :login, senha = :sen' +
        'ha, nome = :nome'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, id_pessoa, login, senha, nome FROM usuario'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM usuario'
      ')')
    Connection = mysql_conn
    SQL.Strings = (
      'select *'
      'from usuario')
    Left = 35
    Top = 100
  end
  object mysql_conn: TUniConnection
    ProviderName = 'ODBC'
    SpecificOptions.Strings = (
      'ODBC.DetectFieldsOnPrepare=True')
    DefaultTransaction = mysql_tran
    Username = 'root'
    Server = 'ecoplan'
    Connected = True
    LoginPrompt = False
    BeforeConnect = mysql_connBeforeConnect
    Left = 35
    Top = 55
    EncryptedPassword = 'B2FF8AFF93FF8BFF96FFDCFFCDFFCFFFCDFFCFFF'
  end
  object ODBCUniProvider1: TODBCUniProvider
    Left = 140
    Top = 10
  end
  object qry_bairro: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO bairro'
      '  (id, id_municipio, nome)'
      'VALUES'
      '  (:id, :id_municipio, :nome)')
    SQLDelete.Strings = (
      'DELETE FROM bairro'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE bairro'
      'SET'
      '  id = :id, id_municipio = :id_municipio, nome = :nome'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, id_municipio, nome FROM bairro'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM bairro'
      ')')
    Connection = mysql_conn
    SQL.Strings = (
      'select * '
      'from bairro '
      'where id_municipio = :id')
    MasterSource = dts_municipio
    Options.StrictUpdate = False
    Left = 158
    Top = 172
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
  end
  object dts_uf: TDataSource
    DataSet = qry_uf
    Left = 135
    Top = 72
  end
  object qry_uf: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO uf'
      '  (id, nome, sigla)'
      'VALUES'
      '  (:id, :nome, :sigla)')
    SQLDelete.Strings = (
      'DELETE FROM uf'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE uf'
      'SET'
      '  id = :id, nome = :nome, sigla = :sigla'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, nome, sigla FROM uf'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM uf'
      ')')
    Connection = mysql_conn
    SQL.Strings = (
      'select *'
      'from uf'
      'order by sigla')
    Options.StrictUpdate = False
    Left = 163
    Top = 72
  end
  object dts_municipio: TDataSource
    DataSet = qry_municipio
    Left = 132
    Top = 122
  end
  object dts_bairro: TDataSource
    DataSet = qry_bairro
    Left = 130
    Top = 172
  end
  object qry_municipio: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO municipio'
      '  (id, id_uf, ibge, nome)'
      'VALUES'
      '  (:id, :id_uf, :ibge, :nome)')
    SQLDelete.Strings = (
      'DELETE FROM municipio'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE municipio'
      'SET'
      '  id = :id, id_uf = :id_uf, ibge = :ibge, nome = :nome'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, id_uf, ibge, nome FROM municipio'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM municipio'
      ')')
    Connection = mysql_conn
    SQL.Strings = (
      'select *'
      'from municipio'
      'where id_uf = :id'
      'order by nome')
    MasterSource = dts_uf
    Options.StrictUpdate = False
    Left = 160
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 1
      end>
  end
  object mysql_tran: TUniTransaction
    DefaultConnection = mysql_conn
    DefaultCloseAction = taCommit
    Left = 40
    Top = 192
  end
end
