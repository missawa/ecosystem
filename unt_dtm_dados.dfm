object dtm_dados: Tdtm_dados
  OldCreateOrder = False
  Height = 256
  Width = 420
  object con_mysql: TADOConnection
    Attributes = [xaCommitRetaining]
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=*Mi251011;Persist Security Info=True' +
      ';User ID=root;Extended Properties="DSN=ecoplan;DESCRIPTION=Siste' +
      'ma Ecoplan;SERVER=127.0.0.1;UID=root;PWD={*Mi251011};DATABASE=ec' +
      'oplan;PORT=3306";Initial Catalog=ecoplan'
    LoginPrompt = False
    Mode = cmReadWrite
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
end
