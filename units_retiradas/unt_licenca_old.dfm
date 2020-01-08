inherited frm_licenca_old: Tfrm_licenca_old
  Caption = 'Licen'#231'a de Atividade'
  ClientHeight = 513
  ClientWidth = 1478
  ExplicitWidth = 1494
  ExplicitHeight = 552
  PixelsPerInch = 96
  TextHeight = 15
  inherited toolbar: TToolBar
    Width = 1478
    ExplicitWidth = 1478
  end
  inherited pnlTitulo: TPanel
    Width = 1478
    Caption = ' LICEN'#199'A PARA EXERCER ATIVIDADE'
    ExplicitWidth = 1478
  end
  inherited pnlTotal: TPanel
    Width = 1478
    Height = 70
    ExplicitWidth = 1478
    ExplicitHeight = 70
    inherited pnl_tit_geral: TPanel
      Width = 1472
      Caption = ' CLIENTE / ATIVIDADE'
      ExplicitWidth = 1472
    end
    inherited pnl_geral: TPanel
      Width = 1472
      Height = 52
      ExplicitWidth = 1472
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
      object Label2: TLabel
        Left = 770
        Top = 10
        Width = 51
        Height = 15
        Caption = 'Atividade'
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
        DataSource = dts_cliente_atividade
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
        DataSource = dts_cliente_atividade
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
        DataSource = dts_cliente_atividade
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
        DataSource = dts_cliente_atividade
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
      object edt_atividade: TwwDBEdit
        Left = 770
        Top = 25
        Width = 274
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'atividade'
        DataSource = dts_cliente_atividade
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  inherited Panel1: TPanel
    Top = 266
    Width = 1478
    Height = 247
    Padding.Top = 0
    ExplicitTop = 266
    ExplicitWidth = 1478
    ExplicitHeight = 247
    inherited pnl_tit_detalhe: TPanel
      Top = 0
      Width = 1472
      Caption = ' CONDICIONANTE'
      ExplicitTop = 0
      ExplicitWidth = 1472
    end
    inherited grd_detalhe: TwwDBGrid
      Top = 18
      Width = 1472
      Selected.Strings = (
        'id'#9'10'#9'id'
        'id_licenca'#9'10'#9'id_licenca'
        'id_pessoa_executor'#9'10'#9'id_pessoa_executor'
        'id_pressoa_responsavel'#9'10'#9'id_pressoa_responsavel'
        'descricao'#9'10'#9'descricao'
        'cumprida'#9'1'#9'cumprida'
        'dt_venc'#9'10'#9'dt_venc'
        'dt_cumprimento'#9'10'#9'dt_cumprimento')
      ExplicitTop = 18
      ExplicitWidth = 1472
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 145
    Width = 1478
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 2
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 4
    object Panel3: TPanel
      Left = 3
      Top = 3
      Width = 1473
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' LICEN'#199'A'
      Color = 12159842
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Padding.Right = 1
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object grd: TwwDBGrid
      Left = 3
      Top = 21
      Width = 1129
      Height = 97
      ControlType.Strings = (
        'id_tipo_licenca;CustomEdit;cmb_tipo;T'
        'id_orgao;CustomEdit;cmb_orgao;T'
        'assinatura;CustomEdit;edt_assinou;F'
        'id_municipio;CustomEdit;cmb_municipio;T')
      Selected.Strings = (
        'id_tipo_licenca'#9'9'#9'TIPO'#9'F'
        'id_orgao'#9'10'#9#211'RG'#195'O'#9'F'
        'numero'#9'38'#9'N'#218'MERO'#9'F'
        'dt_ini'#9'12'#9'IN'#205'CIO'#9'F'
        'dt_venc'#9'12'#9'VENCIMENTO'#9'F'
        'assinatura'#9'35'#9'ASSINOU'#9'F'
        'id_municipio'#9'35'#9'MUNIC'#205'PIO'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dts
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
    end
    object pnl_desc_licenca: TPanel
      Left = 1132
      Top = 21
      Width = 344
      Height = 97
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      object pnl_tit_desc_licenca: TPanel
        Left = 2
        Top = 2
        Width = 340
        Height = 21
        Align = alTop
        BevelOuter = bvNone
        Caption = 'DESCRI'#199#195'O'
        TabOrder = 0
      end
      object mmo_desc_licenca: TDBMemo
        Left = 2
        Top = 23
        Width = 340
        Height = 72
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'descricao'
        DataSource = dts
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object cmb_tipo: TwwDBLookupCombo
      Left = 16
      Top = 40
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'sigla'#9'8'#9'TIPO'#9'F')
      DataField = 'id_tipo_licenca'
      DataSource = dts
      LookupTable = qry_tipo
      LookupField = 'id'
      Style = csDropDownList
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object cmb_orgao: TwwDBLookupCombo
      Left = 84
      Top = 40
      Width = 74
      Height = 18
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'sigla'#9'8'#9#211'RG'#195'O'#9'F')
      DataField = 'id_orgao'
      DataSource = dts
      LookupTable = qry_orgao
      LookupField = 'id'
      Style = csDropDownList
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object cmb_municipio: TwwDBLookupCombo
      Left = 668
      Top = 40
      Width = 249
      Height = 18
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'nome'#9'100'#9'MUNIC'#205'PIO'#9'F')
      DataField = 'id_municipio'
      DataSource = dts
      LookupTable = qry_municipio
      LookupField = 'id'
      Style = csDropDownList
      TabOrder = 5
      AutoDropDown = True
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object edt_assinou: TwwDBEdit
      Left = 418
      Top = 40
      Width = 251
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  inherited dts: TDataSource
    Left = 1019
    Top = 184
  end
  inherited dse: TADODataSet
    Active = True
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnNewRecord = dseNewRecord
    CommandText = 
      'select * '#13#10'from licenca '#13#10'where id_cliente = :id_cliente'#13#10'    an' +
      'd id_atividade = :id_atividade'
    FieldDefs = <
      item
        Name = 'id'
        Attributes = [faReadonly, faFixed]
        DataType = ftAutoInc
      end
      item
        Name = 'id_tipo_licenca'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'id_atividade'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'id_orgao'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'numero'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'dt_ini'
        Attributes = [faFixed]
        DataType = ftDate
      end
      item
        Name = 'dt_venc'
        Attributes = [faFixed]
        DataType = ftDate
      end
      item
        Name = 'assinatura'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'id_cliente'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'id_municipio'
        Attributes = [faFixed]
        DataType = ftInteger
      end
      item
        Name = 'descricao'
        DataType = ftMemo
      end>
    Parameters = <
      item
        Name = 'id_cliente'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'id_atividade'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    StoreDefs = True
    Left = 1047
    Top = 184
  end
  inherited dse_detalhe: TADODataSet
    CursorType = ctStatic
    BeforeOpen = dse_detalheBeforeOpen
    OnNewRecord = dse_detalheNewRecord
    CommandText = 'select *'#13#10'from condicionante'#13#10'where id_licenca = :id_licenca'
    Parameters = <
      item
        Name = 'id_licenca'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    Left = 1052
    Top = 304
  end
  inherited dts_detalhe: TDataSource
    Left = 1024
    Top = 304
  end
  object qry_cliente_atividade: TADOQuery
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'id_cliente'
        DataType = ftInteger
        Size = 1
        Value = 0
      end
      item
        Name = 'id_atividade'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'select '
      '    p.id,'
      '    p.cnpj,'
      '    p.cpf,'
      '    p.nome,'
      '    c.fantasia,'
      '    a.nome as atividade,'
      '    a.id as id_atividade'
      'from pessoa p'
      '    left join cliente c'
      '        on c.id_pessoa = p.id'
      '    left join cliente_atividade ca'
      '        on ca.id_cliente = c.id'
      '    left join atividade a'
      '        on a.id = ca.id_atividade'
      'where p.id = :id_cliente'
      '    and a.id = :id_atividade')
    Left = 1058
    Top = 107
  end
  object dts_cliente_atividade: TDataSource
    DataSet = qry_cliente_atividade
    Left = 1029
    Top = 108
  end
  object qry_tipo: TADOQuery
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select id, sigla '
      'from tipo_licenca'
      'order by nome')
    Left = 18
    Top = 212
    object qry_tiposigla: TStringField
      DisplayLabel = 'TIPO'
      DisplayWidth = 8
      FieldName = 'sigla'
      Size = 8
    end
    object qry_tipoid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
      Visible = False
    end
  end
  object qry_orgao: TADOQuery
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select id, sigla'
      'from orgao_ambiental'
      'order by nome ')
    Left = 98
    Top = 212
    object qry_orgaoid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qry_orgaosigla: TStringField
      FieldName = 'sigla'
      Size = 8
    end
  end
  object qry_municipio: TADOQuery
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select id, nome'
      'from municipio'
      'order by nome')
    Left = 673
    Top = 212
    object qry_municipioid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object qry_municipionome: TStringField
      FieldName = 'nome'
      Size = 100
    end
  end
end
