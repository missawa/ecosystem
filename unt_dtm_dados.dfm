object dtm_dados: Tdtm_dados
  OldCreateOrder = False
  Height = 256
  Width = 420
  object con_mysql: TADOConnection
    Attributes = [xaCommitRetaining]
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=*Mi251011;Persist Security Info=True' +
      ';User ID=root;Data Source=ecoplan;Mode=ReadWrite;Initial Catalog' +
      '=ecoplan'
    LoginPrompt = False
    Mode = cmReadWrite
    AfterConnect = con_mysqlAfterConnect
    BeforeConnect = con_mysqlBeforeConnect
    Left = 21
    Top = 16
  end
  object qry_usuario: TADOQuery
    Connection = con_mysql
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'login'
        Size = -1
        Value = Null
      end
      item
        Name = 'senha'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from usuario'
      'where login = :login'
      '  and senha = :senha')
    Left = 21
    Top = 72
  end
  object dsp_usuario: TDataSetProvider
    DataSet = qry_usuario
    Left = 21
    Top = 128
  end
  object cds_usuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_usuario'
    Left = 21
    Top = 184
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 150
    Top = 25
  end
end
