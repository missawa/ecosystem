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
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'id'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
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
        CharCase = ecUpperCase
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
        CharCase = ecUpperCase
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
    inherited pnl_tit_detalhe: TPanel
      Caption = ' BAIRROS'
    end
    inherited grd_detalhe: TwwDBGrid
      Selected.Strings = (
        'id'#9'4'#9'ID'
        'id_municipio'#9'6'#9'ID.MUN'
        'nome'#9'60'#9'BAIRRO')
    end
  end
  inherited dse_detalhe: TUniQuery
    SQL.Strings = (
      'select * '
      'from bairro '
      'where id_municipio = :key_field')
    OnNewRecord = dse_detalheNewRecord
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'key_field'
      end>
  end
  object qry_uf: TUniQuery
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select id, sigla'
      'from uf'
      'order by sigla')
    Left = 88
    Top = 142
  end
end
