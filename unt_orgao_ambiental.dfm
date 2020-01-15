inherited frm_orgao_ambiental: Tfrm_orgao_ambiental
  Caption = #211'rg'#227'o Ambiental'
  ClientHeight = 171
  ExplicitHeight = 210
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = ' '#211'RG'#195'OS AMBIENTAIS'
  end
  inherited pnlTotal: TPanel
    Height = 96
    Padding.Left = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ExplicitHeight = 96
    inherited pnl_tit_geral: TPanel
      Left = 3
      Width = 776
      ExplicitLeft = 3
      ExplicitWidth = 776
    end
    inherited pnl_geral: TPanel
      Left = 3
      Width = 776
      Height = 75
      ExplicitLeft = 3
      ExplicitWidth = 776
      ExplicitHeight = 75
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
        Width = 31
        Height = 15
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 445
        Top = 10
        Width = 27
        Height = 15
        Caption = 'Sigla'
      end
      object Label7: TLabel
        Left = 500
        Top = 10
        Width = 14
        Height = 15
        Caption = 'UF'
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
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_nome: TwwDBEdit
        Left = 65
        Top = 25
        Width = 375
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'nome'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_sigla: TwwDBEdit
        Left = 445
        Top = 25
        Width = 50
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sigla'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object cmb_uf: TwwDBLookupCombo
        Left = 500
        Top = 25
        Width = 55
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'sigla'#9'2'#9'UF'#9'F')
        DataField = 'id_uf'
        DataSource = dts
        LookupTable = qry_uf
        LookupField = 'id'
        Style = csDropDownList
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 3
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
    end
  end
  inherited dts: TDataSource
    Left = 662
  end
  inherited dse: TADODataSet
    CursorType = ctStatic
    CommandText = 'select * '#13#10'from orgao_ambiental'#13#10'where id = :key_field'
    Parameters = <
      item
        Name = 'key_field'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    Left = 690
  end
  object dts_uf: TDataSource
    DataSet = qry_uf
    Left = 625
    Top = 105
  end
  object qry_uf: TADOQuery
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select id, sigla'
      'from uf'
      'order by sigla')
    Left = 613
    Top = 105
  end
end
