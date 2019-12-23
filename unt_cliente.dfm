inherited frm_cliente: Tfrm_cliente
  Caption = 'Clientes'
  ClientHeight = 463
  ClientWidth = 1156
  ExplicitWidth = 1172
  ExplicitHeight = 502
  PixelsPerInch = 96
  TextHeight = 15
  inherited toolbar: TToolBar
    Width = 1156
  end
  inherited pnlTitulo: TPanel
    Width = 1156
    Caption = ' CLIENTES'
  end
  inherited pnlTotal: TPanel
    Width = 1156
    Height = 388
    inherited pnl_tit_geral: TPanel
      Width = 1156
      Caption = ' DADOS GERAIS'
    end
    inherited pnl_geral: TPanel
      Width = 1156
      Height = 370
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
