inherited frm_cliente_atividade: Tfrm_cliente_atividade
  Caption = 'Atividades do Cliente'
  PixelsPerInch = 96
  TextHeight = 15
  inherited toolbar: TToolBar
    TabOrder = 1
  end
  inherited pnlTitulo: TPanel
    Caption = ' ATIVIDADES DO CLIENTE'
    TabOrder = 2
  end
  inherited pnlTotal: TPanel
    Height = 70
    TabOrder = 3
    ExplicitHeight = 70
    inherited pnl_tit_geral: TPanel
      Caption = ' CLIENTE'
    end
    inherited pnl_geral: TPanel
      Height = 52
      ExplicitHeight = 52
      object Label1: TLabel
        Left = 10
        Top = 10
        Width = 12
        Height = 15
        Caption = 'ID'
      end
      object lbl_cnpj_cpf: TLabel
        Left = 75
        Top = 10
        Width = 56
        Height = 15
        Caption = 'CNPJ / CPF'
      end
      object Label4: TLabel
        Left = 210
        Top = 10
        Width = 112
        Height = 15
        Caption = 'Nome / Raz'#227'o Social'
      end
      object Label5: TLabel
        Left = 490
        Top = 10
        Width = 48
        Height = 15
        Caption = 'Fantasia'
      end
      object edt_id: TwwDBEdit
        Left = 10
        Top = 25
        Width = 60
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
      object edt_cnpj_cpf: TwwDBEdit
        Left = 75
        Top = 25
        Width = 130
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'cnpj'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_nome: TwwDBEdit
        Left = 210
        Top = 25
        Width = 275
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'nome'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_fantasia: TwwDBEdit
        Left = 490
        Top = 25
        Width = 274
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'fantasia'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  inherited Panel1: TPanel
    Top = 145
    Height = 258
    TabOrder = 0
    ExplicitTop = 145
    ExplicitHeight = 258
    inherited pnl_tit_detalhe: TPanel
      Caption = ' ATIVIDADES'
      ExplicitLeft = 3
      ExplicitWidth = 776
    end
    inherited grd_detalhe: TwwDBGrid
      Height = 234
      ControlType.Strings = (
        'id_atividade;CustomEdit;cmb_atividade;T'
        'nome;CustomEdit;cmb_atividade;T')
      Selected.Strings = (
        'nome'#9'105'#9'ATIVIDADE'#9'F')
      UseTFields = False
      ExplicitLeft = 3
      ExplicitTop = 27
      ExplicitWidth = 776
      ExplicitHeight = 234
    end
    object cmb_atividade: TwwDBLookupCombo
      Left = 15
      Top = 40
      Width = 736
      Height = 18
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'nome'#9'80'#9'ATIVIDADE'#9'F'
        'id'#9'10'#9'id'#9'F')
      DataField = 'id_atividade'
      DataSource = dts_detalhe
      LookupTable = qry_atividade
      LookupField = 'id'
      Style = csDropDownList
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
  end
  inherited dse: TADODataSet
    CursorType = ctStatic
    AfterOpen = dseAfterOpen
    CommandText = 
      'select '#13#10'    c.id, '#13#10'    p.tipo,'#13#10'    p.cnpj,'#13#10'    p.cpf,'#13#10'    p' +
      '.nome,'#13#10'    c.fantasia'#13#10'from cliente c'#13#10'    left join pessoa p '#13 +
      #10'        on p.id = c.id_pessoa'#13#10'where c.id = :key_field'#13#10'order b' +
      'y p.nome'
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
    OnNewRecord = dse_detalheNewRecord
    CommandText = 
      'select '#13#10'   ca.*,'#13#10'   a.nome '#13#10'from cliente_atividade ca'#13#10'    le' +
      'ft join atividade a'#13#10'        on a.id = ca.id_atividade'#13#10'where ca' +
      '.id_cliente = :key_field'#13#10'order by a.nome'
    Parameters = <
      item
        Name = 'key_field'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    Left = 722
    Top = 219
  end
  inherited dts_detalhe: TDataSource
    Left = 694
    Top = 219
  end
  object qry_atividade: TADOQuery
    Active = True
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select'
      '    id,'
      '    nome'
      'from atividade'
      'order by nome')
    Left = 663
    Top = 220
  end
end
