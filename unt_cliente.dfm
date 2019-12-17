inherited frm_cliente: Tfrm_cliente
  Caption = 'Clientes'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = ' CLIENTES'
  end
  inherited pnlTotal: TPanel
    inherited pnl_tit_geral: TPanel
      Caption = ' DADOS GERAIS'
    end
  end
  inherited dts: TDataSource
    Left = 424
    Top = 144
  end
  inherited dse: TADODataSet
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from cliente'#13#10'where id = :key_field'
    Parameters = <
      item
        Name = 'key_field'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    Left = 452
    Top = 144
  end
  object ADODataSet1: TADODataSet
    Parameters = <>
    Left = 452
    Top = 176
  end
  object DataSource1: TDataSource
    Left = 424
    Top = 176
  end
end
