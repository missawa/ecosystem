inherited frm_municipio: Tfrm_municipio
  Caption = 'Municipios'
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = ' MUNICIPIOS'
  end
  inherited pnlTotal: TPanel
    inherited pnl_tit_geral: TPanel
      Caption = ' DADOS DO MUNIC'#205'PIO'
    end
    inherited pnl_geral: TPanel
      ExplicitHeight = 60
      object Label1: TLabel
        Left = 10
        Top = 10
        Width = 12
        Height = 15
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 65
        Top = 10
        Width = 14
        Height = 15
        Caption = 'UF'
      end
      object Label3: TLabel
        Left = 120
        Top = 10
        Width = 25
        Height = 15
        Caption = 'IBGE'
      end
      object Label4: TLabel
        Left = 195
        Top = 10
        Width = 62
        Height = 15
        Caption = 'MUNIC'#205'PIO'
      end
      object edt_id: TwwDBEdit
        Left = 10
        Top = 25
        Width = 50
        Height = 21
        BorderStyle = bsNone
        DataField = 'id'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_ibge: TwwDBEdit
        Left = 120
        Top = 25
        Width = 70
        Height = 21
        BorderStyle = bsNone
        DataField = 'ibge'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_municipio: TwwDBEdit
        Left = 195
        Top = 25
        Width = 300
        Height = 21
        BorderStyle = bsNone
        DataField = 'nome'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 65
        Top = 25
        Width = 50
        Height = 21
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'sigla'#9'2'#9'UF'#9'F')
        DataField = 'id_uf'
        DataSource = dts
        LookupTable = qry_uf
        LookupField = 'id'
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
  end
  inherited Panel1: TPanel
    ExplicitTop = 153
    ExplicitHeight = 250
    inherited pnl_tit_detalhe: TPanel
      Caption = ' BAIRROS'
    end
    inherited grd_detalhe: TwwDBGrid
      Selected.Strings = (
        'id'#9'4'#9'ID'
        'id_municipio'#9'6'#9'ID.MUN'#9'F'
        'nome'#9'60'#9'BAIRRO')
      OnEnter = nil
      ExplicitHeight = 229
    end
  end
  inherited dts: TDataSource
    DataSet = dse
  end
  inherited dse: TADODataSet
    CursorType = ctStatic
    CommandText = 'select *'#13#10'from municipio '#13#10'where id = :key_field'
    Parameters = <
      item
        Name = 'key_field'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
  end
  inherited dse_detalhe: TADODataSet
    Active = True
    CursorType = ctStatic
    OnNewRecord = nil
    CommandText = 'select * '#13#10'from bairro '#13#10'where id_municipio = :key_field'
    DataSource = dts
    Parameters = <
      item
        Name = 'key_field'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
  end
  object qry_uf: TADOQuery
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select id, sigla'
      'from uf'
      'order by sigla')
    Left = 632
    Top = 104
    object qry_ufsigla: TStringField
      DisplayLabel = 'UF'
      DisplayWidth = 2
      FieldName = 'sigla'
      FixedChar = True
      Size = 2
    end
    object qry_ufid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
  end
end
