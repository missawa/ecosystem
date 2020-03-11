object frm_licenca: Tfrm_licenca
  Left = 0
  Top = 0
  Caption = 'Licen'#231'a'
  ClientHeight = 571
  ClientWidth = 1308
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTotal: TPanel
    Left = 0
    Top = 0
    Width = 1308
    Height = 70
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 3
    Padding.Right = 3
    TabOrder = 0
    object pnl_tit_geral: TPanel
      Left = 3
      Top = 0
      Width = 1302
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' CLIENTE / ATIVIDADE'
      Color = 12159842
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object pnl_geral: TPanel
      Left = 3
      Top = 18
      Width = 1302
      Height = 52
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 10
        Top = 10
        Width = 11
        Height = 13
        Caption = 'ID'
      end
      object lbl_cnpj_cpf: TLabel
        Left = 75
        Top = 10
        Width = 54
        Height = 13
        Caption = 'CNPJ / CPF'
      end
      object Label4: TLabel
        Left = 210
        Top = 10
        Width = 97
        Height = 13
        Caption = 'Nome / Raz'#227'o Social'
      end
      object Label5: TLabel
        Left = 490
        Top = 10
        Width = 41
        Height = 13
        Caption = 'Fantasia'
      end
      object Label2: TLabel
        Left = 770
        Top = 10
        Width = 45
        Height = 13
        Caption = 'Atividade'
      end
      object edt_id: TwwDBEdit
        Left = 10
        Top = 25
        Width = 60
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'id'
        DataSource = dts_cliente
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
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'cnpj'
        DataSource = dts_cliente
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
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'nome'
        DataSource = dts_cliente
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
        Left = 491
        Top = 25
        Width = 274
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'fantasia'
        DataSource = dts_cliente
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
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'atividade'
        DataSource = dts_cliente
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
  object Panel2: TPanel
    Left = 0
    Top = 70
    Width = 1308
    Height = 143
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 2
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 3
      Top = 3
      Width = 1303
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
      Width = 959
      Height = 119
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
      DataSource = dts_licenca
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
    end
    object pnl_desc_licenca: TPanel
      Left = 962
      Top = 21
      Width = 344
      Height = 119
      Align = alRight
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 2
      object pnl_tit_desc_licenca: TPanel
        Left = 0
        Top = 0
        Width = 342
        Height = 21
        Align = alTop
        BevelOuter = bvNone
        Caption = 'DESCRI'#199#195'O'
        ParentBackground = False
        TabOrder = 0
      end
      object mmo_desc_licenca: TDBMemo
        Left = 0
        Top = 21
        Width = 342
        Height = 96
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'descricao'
        DataSource = dts_licenca
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object cmb_tipo: TwwDBLookupCombo
      Left = 16
      Top = 40
      Width = 67
      Height = 19
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'sigla'#9'8'#9'TIPO'#9'F')
      DataField = 'id_tipo_licenca'
      DataSource = dts_licenca
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
      Width = 64
      Height = 19
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'sigla'#9'8'#9#211'RG'#195'O'#9'F')
      DataField = 'id_orgao'
      DataSource = dts_licenca
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
      Left = 741
      Top = 41
      Width = 214
      Height = 19
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'nome'#9'100'#9'MUNIC'#205'PIO'#9'F')
      DataField = 'id_municipio'
      DataSource = dts_licenca
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
      Left = 528
      Top = 40
      Width = 213
      Height = 19
      CharCase = ecUpperCase
      DataSource = dts_licenca
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 213
    Width = 1308
    Height = 358
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 2
    ExplicitHeight = 199
    object pnl_tit_detalhe: TPanel
      Left = 3
      Top = 0
      Width = 1302
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' CONDICIONANTE'
      Color = 12159842
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object grd_detalhe: TwwDBGrid
      Left = 3
      Top = 18
      Width = 958
      Height = 337
      ControlType.Strings = (
        'cumprida;CheckBox;S;N'
        'id_pressoa_responsavel;CustomEdit;cmb_responsavel;T'
        'id_pessoa_executor;CustomEdit;cmb_executor;T')
      Selected.Strings = (
        'id_pressoa_responsavel'#9'37'#9'RESPONS'#193'VEL'#9#9
        'id_pessoa_executor'#9'31'#9'EXECUTOR'#9#9
        'dt_aviso'#9'12'#9'AVISO'#9#9
        'dt_venc'#9'12'#9'VENCIMENTO'#9#9
        'dt_cumprimento'#9'12'#9'CUMPRIMENTO'#9#9
        'cumprida'#9'2'#9'OK'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dts_condicionante
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object Panel4: TPanel
      Left = 961
      Top = 18
      Width = 344
      Height = 337
      Align = alRight
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 2
      ExplicitHeight = 178
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 342
        Height = 21
        Align = alTop
        BevelOuter = bvNone
        Caption = 'DESCRI'#199#195'O'
        TabOrder = 0
      end
      object mmo_desc_condicionante: TDBMemo
        Left = 0
        Top = 21
        Width = 342
        Height = 314
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'descricao'
        DataSource = dts_condicionante
        ParentCtl3D = False
        TabOrder = 1
        ExplicitHeight = 155
      end
    end
    object cmb_responsavel: TwwDBComboBox
      Left = 16
      Top = 55
      Width = 121
      Height = 19
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DropDownCount = 8
      ItemHeight = 0
      Sorted = False
      TabOrder = 3
      UnboundDataType = wwDefault
    end
    object cmb_executor: TwwDBComboBox
      Left = 250
      Top = 60
      Width = 190
      Height = 16
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DropDownCount = 8
      ItemHeight = 0
      Sorted = False
      TabOrder = 4
      UnboundDataType = wwDefault
    end
  end
  object dts_licenca: TDataSource
    DataSet = dse_licenca
    Left = 1249
    Top = 180
  end
  object dts_cliente: TDataSource
    AutoEdit = False
    DataSet = qry_cliente
    Left = 1059
    Top = 33
  end
  object dts_condicionante: TDataSource
    DataSet = dse_condicionante
    Left = 1247
    Top = 534
  end
  object qry_cliente: TUniQuery
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select '
      '    p.id,'
      '    p.cnpj,'
      '    p.cpf,'
      '    p.nome,'
      '    p.fantasia,'
      '    a.nome as atividade,'
      '    a.id as id_atividade'
      'from pessoa p'
      '    left join cliente_atividade ca'
      '        on ca.id_cliente = p.id'
      '    left join atividade a'
      '        on a.id = ca.id_atividade'
      'where p.id = :id_cliente'
      '    and a.id = :id_atividade')
    Left = 1087
    Top = 33
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cliente'
      end
      item
        DataType = ftUnknown
        Name = 'id_atividade'
      end>
  end
  object dse_licenca: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO licenca'
      
        '  (id, id_tipo_licenca, id_atividade, id_orgao, numero, dt_ini, ' +
        'dt_venc, assinatura, id_cliente, id_municipio, descricao)'
      'VALUES'
      
        '  (:id, :id_tipo_licenca, :id_atividade, :id_orgao, :numero, :dt' +
        '_ini, :dt_venc, :assinatura, :id_cliente, :id_municipio, :descri' +
        'cao)')
    SQLDelete.Strings = (
      'DELETE FROM licenca'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE licenca'
      'SET'
      
        '  id = :id, id_tipo_licenca = :id_tipo_licenca, id_atividade = :' +
        'id_atividade, id_orgao = :id_orgao, numero = :numero, dt_ini = :' +
        'dt_ini, dt_venc = :dt_venc, assinatura = :assinatura, id_cliente' +
        ' = :id_cliente, id_municipio = :id_municipio, descricao = :descr' +
        'icao'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, id_tipo_licenca, id_atividade, id_orgao, numero, dt_i' +
        'ni, dt_venc, assinatura, id_cliente, id_municipio, descricao FRO' +
        'M licenca'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM licenca'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select * '
      'from licenca '
      'where id_cliente = :id_cliente'
      '    and id_atividade = :id_atividade')
    Options.StrictUpdate = False
    OnNewRecord = dse_licencaNewRecord
    Left = 1277
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cliente'
      end
      item
        DataType = ftUnknown
        Name = 'id_atividade'
      end>
    object dse_licencaid: TIntegerField
      FieldName = 'id'
    end
    object dse_licencaid_tipo_licenca: TIntegerField
      FieldName = 'id_tipo_licenca'
      Required = True
    end
    object dse_licencaid_atividade: TIntegerField
      FieldName = 'id_atividade'
    end
    object dse_licencaid_orgao: TIntegerField
      FieldName = 'id_orgao'
      Required = True
    end
    object dse_licencanumero: TStringField
      FieldName = 'numero'
      Required = True
      Size = 60
    end
    object dse_licencadt_ini: TDateField
      FieldName = 'dt_ini'
      Required = True
    end
    object dse_licencadt_venc: TDateField
      FieldName = 'dt_venc'
    end
    object dse_licencaassinatura: TStringField
      FieldName = 'assinatura'
      Size = 120
    end
    object dse_licencaid_cliente: TIntegerField
      FieldName = 'id_cliente'
    end
    object dse_licencaid_municipio: TIntegerField
      FieldName = 'id_municipio'
    end
    object dse_licencadescricao: TMemoField
      FieldName = 'descricao'
      BlobType = ftMemo
    end
  end
  object dse_condicionante: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO condicionante'
      
        '  (id, id_licenca, id_pessoa_executor, id_pressoa_responsavel, d' +
        'escricao, cumprida, dt_venc, dt_cumprimento, dt_aviso)'
      'VALUES'
      
        '  (:id, :id_licenca, :id_pessoa_executor, :id_pressoa_responsave' +
        'l, :descricao, :cumprida, :dt_venc, :dt_cumprimento, :dt_aviso)')
    SQLDelete.Strings = (
      'DELETE FROM condicionante'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE condicionante'
      'SET'
      
        '  id = :id, id_licenca = :id_licenca, id_pessoa_executor = :id_p' +
        'essoa_executor, id_pressoa_responsavel = :id_pressoa_responsavel' +
        ', descricao = :descricao, cumprida = :cumprida, dt_venc = :dt_ve' +
        'nc, dt_cumprimento = :dt_cumprimento, dt_aviso = :dt_aviso'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, id_licenca, id_pessoa_executor, id_pressoa_responsave' +
        'l, descricao, cumprida, dt_venc, dt_cumprimento, dt_aviso FROM c' +
        'ondicionante'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM condicionante'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select *'
      'from condicionante'
      'where id_licenca = :id')
    MasterSource = dts_licenca
    Options.StrictUpdate = False
    Active = True
    OnNewRecord = dse_condicionanteNewRecord
    Left = 1275
    Top = 534
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = Null
      end>
    object dse_condicionanteid_pressoa_responsavel: TIntegerField
      DisplayLabel = 'RESPONS'#193'VEL'
      DisplayWidth = 37
      FieldName = 'id_pressoa_responsavel'
    end
    object dse_condicionanteid_pessoa_executor: TIntegerField
      DisplayLabel = 'EXECUTOR'
      DisplayWidth = 31
      FieldName = 'id_pessoa_executor'
    end
    object dse_condicionantedt_aviso: TDateField
      DisplayLabel = 'AVISO'
      DisplayWidth = 12
      FieldName = 'dt_aviso'
    end
    object dse_condicionantedt_venc: TDateField
      DisplayLabel = 'VENCIMENTO'
      DisplayWidth = 12
      FieldName = 'dt_venc'
      Required = True
    end
    object dse_condicionantedt_cumprimento: TDateField
      DisplayLabel = 'CUMPRIMENTO'
      DisplayWidth = 12
      FieldName = 'dt_cumprimento'
    end
    object dse_condicionantecumprida: TStringField
      DisplayLabel = 'OK'
      DisplayWidth = 2
      FieldName = 'cumprida'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dse_condicionanteid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Visible = False
    end
    object dse_condicionanteid_licenca: TIntegerField
      FieldName = 'id_licenca'
      Required = True
      Visible = False
    end
    object dse_condicionantedescricao: TMemoField
      FieldName = 'descricao'
      Required = True
      Visible = False
      BlobType = ftMemo
    end
  end
  object qry_tipo: TUniQuery
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select id, sigla '
      'from tipo_licenca'
      'order by nome')
    Left = 56
    Top = 130
  end
  object qry_orgao: TUniQuery
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select id, sigla'
      'from orgao_ambiental'
      'order by nome ')
    Left = 120
    Top = 130
  end
  object qry_municipio: TUniQuery
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select id, nome'
      'from municipio'
      'order by nome')
    Left = 927
    Top = 130
  end
end
