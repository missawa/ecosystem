object dtm_dados: Tdtm_dados
  OldCreateOrder = False
  Height = 175
  Width = 413
  object mysql_provider: TMySQLUniProvider
    Left = 35
    Top = 10
  end
  object qry_usuario: TUniQuery
    Connection = mysql_conn
    SQL.Strings = (
      'select *'
      'from usuario'
      'where login = :login'
      '    and senha = :senha')
    Left = 35
    Top = 100
    ParamData = <
      item
        DataType = ftString
        Name = 'login'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'senha'
        ParamType = ptInput
      end>
  end
  object mysql_conn: TUniConnection
    ProviderName = 'ODBC'
    Port = 3306
    Username = 'root'
    Server = 'ecoplan'
    Connected = True
    LoginPrompt = False
    Left = 35
    Top = 55
    EncryptedPassword = 'D5FFB2FF96FFCDFFCAFFCEFFCFFFCEFFCEFF'
  end
  object ODBCUniProvider1: TODBCUniProvider
    Left = 140
    Top = 10
  end
end
