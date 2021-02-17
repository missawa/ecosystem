object frm_relatorio: Tfrm_relatorio
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Relat'#243'rios'
  ClientHeight = 270
  ClientWidth = 397
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label7: TLabel
    Left = 135
    Top = 160
    Width = 7
    Height = 15
    Caption = 'a'
  end
  object pnl_titulo: TPanel
    Left = 0
    Top = 0
    Width = 397
    Height = 21
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = ' RELAT'#211'RIOS'
    Color = 12159842
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    OnMouseDown = pnl_tituloMouseDown
    DesignSize = (
      395
      19)
    object btnFechar: TSpeedButton
      Left = 362
      Top = -2
      Width = 22
      Height = 23
      Margins.Top = 0
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFDFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1F55252C35656C5DADAF2FFFFFFFF
        FFFFFFFFFFFFFFFFF4F4FB7676D05858C5D6D6F1FFFFFFFFFFFFFFFFFFEAEAF8
        5252C35353CE5656CF4B4BC1DADAF2FFFFFFFFFFFFF1F1FA6464C95454CD5C5C
        D24646BFCDCDEEFFFFFFFFFFFF6464C95858CE6666DC6868DC5757D04B4BC1D8
        D8F2EDEDF95D5DC75555CD6F6FE17070E16767D64444BEEDEDF9FFFFFF5656C5
        9C9CDE7070DF4545D56666DD5959D14848C05858C55656CF6E6EE15656DB7A7A
        E3A0A0E04D4DC2F4F4FBFFFFFFE1E1F54F4FC29D9DDF6E6EDF3C3CD46666DE6B
        6BDE6868DC6C6CE04D4DD97A7AE2A0A0E04D4DC2DFDFF4FFFFFFFFFFFFFFFFFF
        DFDFF44D4DC25C5CD16767DD4746D64E4DD95453DA4E4DDA7070E16060D24D4D
        C2DFDFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDF34D4DC26767DC5656DB54
        54DB5656DC5D5DDD7070DF4D4DC2DFDFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD4D4F04848C06868DD5B5BDC5A5ADC5C5CDD6060DE7373E14444BEC8C8
        ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDEE4444BE5959D26C6CDF5757DB6B
        6BE06868E05E5EDD7676E26464D74444BEC8C8ECFFFFFFFFFFFFFFFFFFC4C4EB
        4444BE5959D16969DE5656D97A7AE2D9D9F5D5D5F47A7AE25F5FDE7676E26464
        D64242BEC4C4EBFFFFFFFFFFFF4B4BC17676D96868DC5353D87777E19F9FE04D
        4DC24848C0A3A3E27878E25E5EDD7474E27373DA4646BFF6F6FCFFFFFF8686D5
        8E8ED88A8AE47E7EE29E9EE04D4DC2DFDFF4D4D4F04646BFA5A5E38989E69C9C
        EA9E9EDE4F4FC2F8F8FDFFFFFFFAFAFD6F6FCD9898DCADADE34D4DC2DFDFF4FF
        FFFFFFFFFFD1D1EF4444BEBBBBE79B9BDC5B5BC6E8E8F7FFFFFFFFFFFFFFFFFF
        F4F4FB6B6BCC5858C5DFDFF4FFFFFFFFFFFFFFFFFFFFFFFFD1D1EF5D5DC77676
        D0F1F1FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnFecharClick
      ExplicitLeft = 365
    end
  end
  object pnl_parametros: TPanel
    Left = 0
    Top = 21
    Width = 397
    Height = 249
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    ParentBackground = False
    TabOrder = 1
    object Label2: TLabel
      Left = 10
      Top = 10
      Width = 42
      Height = 15
      Caption = 'Modelo'
    end
    object btn_imprimir: TSpeedButton
      Left = 316
      Top = 25
      Width = 65
      Height = 54
      Caption = 'Imprimir'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B9B9A9B9B9A9B9B9A9B9B9A9B9B9A9B9B
        9A9B9B9A9B9B9A9B9B9A9B9B9A9B9B9A9B9B9A9B9B9A9B9B9A9B9B9A9B9B9A9B
        9B9A9B9B9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9B9B9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFDFDFDFDFDFDFDFDFDFDFDFDFDFD
        FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF9
        F9F99B9B9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFAFAFA7F675F7F675F7F675F7F67
        5F7F675F7F675F7F675F7F675F7F675F7F675F7F675F7F675F7F675F7F675FF9
        F9F99B9B9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F4F4F4
        F2F2F2EFEFEFEDEDEDEAEAEAE8E8E8BFBFBEFAFAFAF8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FDFDFDF5
        F5F59B9B9AEDEDEDEFEFEFF2F2F2F5F5F5F7F7F7F9F9F9FCFCFCDEDEDED5D5D5
        CACACAC0C0C0B6B6B6AEAEAEA3A3A3BFBFBEFAFAFA7F675F7F675F7F675F7F67
        5F7F675F7F675F7F675F7F675F7F675F7F675F7F675F7F675F7F675F7F675FEA
        EAEA9B9B9AB6B6B6C0C0C0CBCBCBD6D6D6E1E1E1E9E9E9F4F4F4B3A59B786858
        786858786858786858786858484038B6B6B4EDECECEBEAEAEBEAEAEBEAEAEBEA
        EAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAEBEAEAF0EFEED7
        D4D29594934840387868587868587868587868587D6D5DA29187B6A59D98867E
        98867E97867E97867E96847C484038A4A2A0D2D0CE725E56725E56725E56725E
        56725E56725E56725E56725E56725E56725E56725E56725E56725E56725E56C1
        BDBA88868448403888786D87776D87776D87776D95857B958175BBACA4A3948C
        A3948CA3948CA3958DA3958D4840388C8985AEAAA7ADA9A6ADA9A6ADA9A6ADA9
        A6ADA9A6ADA9A6ADA9A6ADA9A6ADA9A6ADA9A6ADA9A6ADA9A6ADA9A6B0ACA9A7
        A29E78747048403896867D95857D94847D94847D9E8E86958175BEAFA7AA9B93
        AA9B93AB9B93AB9C94AB9C954840384840384840384840384840384840384840
        3848403848403848403848403848403848403848403848403848403848403848
        4038484038484038A09188A090889F8F889F8F88A5958D958175C1B1A9B1A199
        B1A199B1A199B1A098B1A099B1A099B1A199B1A199B1A198B1A098B1A199B0A1
        98B0A198B1A199B2A099B2A099B0A098AFA197AEA195ADA194ACA294A9A191A8
        9F90A89D90A89D90A89B91A99A91A99991A99991AD9C94958175C5B5ADB9A9A1
        B9A9A1B9A9A1B7A99FB7A99FB6A99EB5A99DB5A99DB5AA9DB5AA9DB5AB9EB5AA
        9EB5AA9EB6A99FB7A79FB7A89FB7A69FB6A69EB4A69DB3A69CB2A79CB1A79BB0
        A69AB0A59AB0A59AB2A49AB2A29AB2A29AB2A29AB2A29B958175C7B7AFBEAEA6
        BEAEA6BCAEA4C5BAB1CFC8BFE7E4DFE7E4DEE7E4DEE7E4DEE7E4DEE7E4DEE7E4
        DFE7E3DFE7E3DFE7E2DFE7E2DFE7E1DFE7E1DFE7E1DEE7E1DEE7E1DEE7E1DEE7
        E1DEE7E1DEE7E1DECDC2BDC1B3ADB6A69EB6A69EB6A59D958175C9B9B1C2B1A9
        C2B1A9C0B1A8D4CAC3C39548C68510C68510C68510C68510C68510C68510C685
        10C68510C68510C68510C68510C68510C68510C68510C68510C68510C68510C6
        8510C68510C68510C39447D1C6C1BCACA4BCACA4BAAAA1958175CCBCB4C8B8B0
        C8B8B0C8B8AFEDE7E4C88A1ADBAF3CDEB341DEB341DEB341DEB341DEB341DEB3
        41DEB341DEB341DEB341DEB341DEB341DEB341DEB341DEB341DEB341DEB341DD
        B13FDEB442DEB442C68718EDE6E4C8B7AFC8B7AFC2B1A8958175D0C3BBD2C8C0
        D2C8C0D3C6BFF0EBE9C68510DFB342D59827D59827D59827D59827D59827D598
        27D59827D59827D59827D59827D59827D59827D59827D59827D59827D59827D5
        9827D69A2AE0B545C68510EFEAE8CEC3BBCEC3BBC6B9B1958175D4C8C0DBD2CA
        DBD2CADCD1C9F3EFECC68510E1B546D99F32D99F32D99F32D99F32D99F32D99F
        32D99F32D99F32D99F32D99F31D99F31D99F31D99F31D99F31D99F31D99F31D9
        9F31D99E30E2B646C68510F0EDEAD3CBC2D3CBC2C9BFB5958175DCD1C9ECE8E0
        ECE8E0EDE8E0F9F6F4C68510E5C05CE3B65EE3B65EE3B65EE3B65EE3B65EE3B5
        5EE3B55EE3B55EE3B55EE3B55EE3B55DE3B55DE3B65DE3B65DE3B65DE3B65DE3
        B55DE3B55DE7C361C68510F6F2F1E4DBD8E4DBD8D5CAC5958175E1D9D4F8F8F7
        F8F8F7F8F8F7FCFBFBC68510E9C66BEAC379EAC379EAC379EAC379EAC379EAC3
        79EAC379EAC37AEAC37AEAC37AEAC379EAC379EAC379EAC378EAC378EAC377EA
        C377EAC377EBCB71C68510FBFAF9F6F5F0F6F5F0E2DCD5958175E5DCD7FFFFFF
        FFFFFFFFFFFFFEFEFEC68510EBCD7AEFCF91EFCF91EFCF91EFCF91EFCF91EFCF
        91EFCF91EFCF91EFCF91EFCF91EFCF91EFCF91EFCF91EFCF91EFCF91EFCF91EF
        CF91EFCF91EFD283C68510FFFFFF41D5B6FFFFFFE7E3E0958175E3DAD5FBFAFA
        FBFAFAFBFAFAFDFCFCC68510EDCE7CF1D194F1D194F1D194F1D194F1D194F1D1
        94F1D194F1D194F1D194F1D194F1D194F1D194F1D194F1D194F1D194F1D194F1
        D194F1D194F0D386C68510FFFEFEFEFEFEFAFAFAE4E0DD958175E1D5D0F6EFEE
        F6EFEEF7EFEFFCF8F8C68510ECC970F0C97FF0C97EF0C97EF0C97EF0C97EF0C9
        7DF0C97DF0C97DF0C97DF0C97DF0C97DF0C97DF0C97DF0C97DF0C97DF0C87DF0
        C87DF0C87DEFCD77C68510F9F6F6EEE7E6EEE7E6DCD3CF958175E0D9D2EBE9E3
        EBE9E3EBE8E3F8F6F5C68510EABF57ECBA56ECBA56ECBA56ECBA56ECBA56ECBA
        55ECBA55ECBA55ECBA55ECBA55ECBA55ECBA55ECBA55ECBA55ECBA55ECBA55EC
        BA55ECBA56EEC766C68510F5F2F0E3DAD4E3DAD4D4C9C2A49388FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4734194734199D9B98D4D2D0CFCDCCCFCDCCCFCDCCCFCD
        CCCFCDCCCFCDCCCFCDCCCFCDCCCFCDCCCFCDCCCFCDCCCFCDCCCFCDCCCCCAC8D0
        CECC9B9B9A473419473419FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF804A00473419A4A2A0D8D6D4D2D0CFD2D0CFD2D0CFD2D0
        CFD2D0CFD2D0CFD2D0CFD2D0CFD2D0CFD2D0CFD2D0CFD2D0CFD2D0CFCFCDCCDD
        DCDA9B9B9A473419804A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF804A00473419B2B1AFECECEBE6E5E4E6E5E4E6E5E4E6E5
        E4E6E5E4E6E5E4E6E5E4E6E5E4E6E5E4E6E5E4E6E5E4E6E5E4E6E5E4E4E3E2EF
        EFEE9B9B9A473419804A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF804A00473419BABAB9F8F8F7F1F1F0F1F1F0F1F1F0F1F1
        F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F1F1F0F9
        F9F99B9B9A473419804A00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF473419BFBFBEFFFFFFF8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF
        FFFF9B9B9A473419FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF473419BFBFBEFFFFFFF8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF
        FFFF9B9B9A473419FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFFFFFFF8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF
        FFFF9B9B9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEFFFFFFF8F8F8F8F8F8F8F8F8F8F8
        F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8FF
        FFFF9B9B9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEBFBFBEBFBFBEBFBFBEBFBFBEBFBF
        BEBFBFBEBFBFBEBFBFBEBFBFBEBFBFBEBFBFBEBFBFBEBFBFBEBFBFBEBFBFBEBF
        BFBEB6B6B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphTop
      Spacing = 0
      OnClick = btn_imprimirClick
    end
    object Label1: TLabel
      Left = 10
      Top = 100
      Width = 124
      Height = 15
      Caption = 'Per'#237'odo de Vencimento'
    end
    object Label3: TLabel
      Left = 135
      Top = 118
      Width = 7
      Height = 15
      Caption = 'a'
    end
    object Label4: TLabel
      Left = 10
      Top = 190
      Width = 48
      Height = 15
      Caption = 'Situa'#231#227'o'
    end
    object Label5: TLabel
      Left = 10
      Top = 55
      Width = 38
      Height = 15
      Caption = 'Cliente'
    end
    object Label6: TLabel
      Left = 10
      Top = 145
      Width = 91
      Height = 15
      Caption = 'Per'#237'odo de Aviso'
    end
    object Label8: TLabel
      Left = 135
      Top = 163
      Width = 7
      Height = 15
      Caption = 'a'
    end
    object cmb_tipo: TwwDBComboBox
      Left = 10
      Top = 25
      Width = 300
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      AutoDropDown = True
      ShowMatchText = True
      BorderStyle = bsNone
      DataField = 'tipo'
      DropDownCount = 8
      Frame.Enabled = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      Frame.FocusStyle = efsFrameEtched
      Frame.NonFocusStyle = efsFrameEtched
      ItemHeight = 0
      Items.Strings = (
        '01. Vencimento de Licen'#231'as e Condicionantes'#9'1')
      ItemIndex = 0
      Sorted = False
      TabOrder = 0
      UnboundDataType = wwDefault
    end
    object dtp_venc_ini: TwwDBDateTimePicker
      Left = 10
      Top = 115
      Width = 121
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
    end
    object dtp_venc_fim: TwwDBDateTimePicker
      Left = 145
      Top = 115
      Width = 121
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
    end
    object cmb_situacao: TwwDBComboBox
      Left = 10
      Top = 205
      Width = 121
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'TODAS'#9'T'
        'CUMPRIDA'#9'S'
        'PENDENTE'#9'N')
      ItemIndex = 2
      Sorted = False
      TabOrder = 6
      UnboundDataType = wwDefault
    end
    object cmb_cliente: TwwDBComboDlg
      Left = 10
      Top = 70
      Width = 300
      Height = 21
      OnCustomDlg = cmb_clienteCustomDlg
      ShowButton = True
      Style = csDropDown
      BorderStyle = bsNone
      Frame.Enabled = True
      Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
      Frame.NonFocusStyle = efsFrameEtched
      TabOrder = 1
      WordWrap = False
      UnboundDataType = wwDefault
    end
    object dtp_aviso_fim: TwwDBDateTimePicker
      Left = 145
      Top = 160
      Width = 121
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 5
    end
    object dtp_aviso_ini: TwwDBDateTimePicker
      Left = 10
      Top = 160
      Width = 121
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 4
    end
  end
  object qry_01: TUniQuery
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select '
      '    '#39'LICEN'#199'A'#39' as tipo,'
      '    p.id,'
      '    p.cnpj,'
      '    p.nome,'
      '    p.fantasia,'
      '    l.numero,'
      '    l.descricao,'
      '    l.dt_venc,'
      '    '
      '    null as dt_aviso'
      'from pessoa p'
      #9'left join licenca l'
      #9#9'on l.id_cliente = p.id'
      'where cliente = '#39'S'#39
      #9'and l.dt_venc is not null'
      ''
      'union'
      ''
      'select '
      '    '#39'CONDIC.'#39' as tipo,'
      '    p.id,'
      '    p.cnpj,'
      '    p.nome,'
      '    p.fantasia,'
      '    l.numero,'
      '    c.descricao,'
      '    c.dt_venc,'
      '    c.dt_aviso'
      'from pessoa p'
      #9'left join licenca l'
      #9#9'on l.id_cliente = p.id'
      #9'left join condicionante c'
      #9#9'on c.id_licenca = l.id'
      'where cliente = '#39'S'#39
      #9'and c.dt_venc is not null'
      ''
      'order by dt_venc')
    Left = 255
    Top = 185
  end
  object dts_01: TDataSource
    DataSet = qry_01
    Left = 283
    Top = 185
  end
  object pip_01: TppDBPipeline
    DataSource = dts_01
    UserName = 'pip_01'
    Left = 311
    Top = 185
    object pip_01ppField1: TppField
      FieldAlias = 'tipo'
      FieldName = 'tipo'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object pip_01ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pip_01ppField3: TppField
      FieldAlias = 'cnpj'
      FieldName = 'cnpj'
      FieldLength = 14
      DisplayWidth = 14
      Position = 2
    end
    object pip_01ppField4: TppField
      FieldAlias = 'nome'
      FieldName = 'nome'
      FieldLength = 120
      DisplayWidth = 120
      Position = 3
    end
    object pip_01ppField5: TppField
      FieldAlias = 'fantasia'
      FieldName = 'fantasia'
      FieldLength = 100
      DisplayWidth = 100
      Position = 4
    end
    object pip_01ppField6: TppField
      FieldAlias = 'numero'
      FieldName = 'numero'
      FieldLength = 60
      DisplayWidth = 60
      Position = 5
    end
    object pip_01ppField7: TppField
      FieldAlias = 'descricao'
      FieldName = 'descricao'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pip_01ppField8: TppField
      FieldAlias = 'dt_venc'
      FieldName = 'dt_venc'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object pip_01ppField9: TppField
      FieldAlias = 'dt_aviso'
      FieldName = 'dt_aviso'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 8
    end
  end
  object rel_01: TppReport
    AutoStop = False
    DataPipeline = pip_01
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Listagem de Vencimentos'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    Language = lgPortugueseBrazil
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 339
    Top = 185
    Version = '10.06'
    mmColumnWidth = 0
    DataPipelineName = 'pip_01'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape1'
        ParentWidth = True
        Pen.Color = clSilver
        mmHeight = 5027
        mmLeft = 0
        mmTop = 8202
        mmWidth = 197300
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'LISTAGEM DE VENCIMENTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 6085
        mmLeft = 63236
        mmTop = 0
        mmWidth = 59002
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 96309
        mmTop = 8731
        mmWidth = 2836
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'RAZ'#195'O SOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3852
        mmLeft = 102129
        mmTop = 8731
        mmWidth = 19346
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3852
        mmLeft = 168011
        mmTop = 8731
        mmWidth = 6308
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VENC.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 21167
        mmTop = 8731
        mmWidth = 8043
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'N'#218'MERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3852
        mmLeft = 55298
        mmTop = 8731
        mmWidth = 12404
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'TIPO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3852
        mmLeft = 1102
        mmTop = 8731
        mmWidth = 6265
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'AVISO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 41255
        mmTop = 8731
        mmWidth = 8086
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'shp_zebra'
        Brush.Color = 16316664
        ParentHeight = True
        ParentWidth = True
        Pen.Color = clSilver
        StretchWithParent = True
        mmHeight = 6615
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'numero'
        DataPipeline = pip_01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pip_01'
        mmHeight = 3969
        mmLeft = 55298
        mmTop = 0
        mmWidth = 37306
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'dt_venc'
        DataPipeline = pip_01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pip_01'
        mmHeight = 3852
        mmLeft = 15081
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'id'
        DataPipeline = pip_01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pip_01'
        mmHeight = 3852
        mmLeft = 93134
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'nome'
        DataPipeline = pip_01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pip_01'
        mmHeight = 3969
        mmLeft = 102129
        mmTop = 0
        mmWidth = 64823
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'cnpj'
        DataPipeline = pip_01
        DisplayFormat = '00\.000\.000\/0000\-00;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pip_01'
        mmHeight = 3969
        mmLeft = 168011
        mmTop = 0
        mmWidth = 27252
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        CharWrap = False
        DataField = 'descricao'
        DataPipeline = pip_01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'pip_01'
        mmHeight = 794
        mmLeft = 1058
        mmTop = 4763
        mmWidth = 194205
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'tipo'
        DataPipeline = pip_01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pip_01'
        mmHeight = 3852
        mmLeft = 1058
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'dt_aviso'
        DataPipeline = pip_01
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pip_01'
        mmHeight = 3852
        mmLeft = 35190
        mmTop = 0
        mmWidth = 19579
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Desenvolvido por Multidev Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 79375
        mmTop = 0
        mmWidth = 45773
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPrintDateTime
        DisplayFormat = 'mm/dd/yy hh:nn'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 175684
        mmTop = 0
        mmWidth = 20638
        BandType = 8
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Impresso em:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 158750
        mmTop = 0
        mmWidth = 15579
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 15346
        BandType = 8
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {
        01060F5472614576656E7448616E646C65720B50726F6772616D4E616D650610
        7368705F7A656272614F6E5072696E740B50726F6772616D54797065070B7474
        50726F63656475726506536F7572636506F170726F636564757265207368705F
        7A656272614F6E5072696E743B0D0A626567696E0D0A20206966207368705F7A
        656272612E746167203D2030207468656E0D0A2020626567696E0D0A20202020
        7368705F7A656272612E62727573682E636F6C6F72203A3D2031363331363636
        343B0D0A202020207368705F7A656272612E746167203A3D20313B0D0A202065
        6E640D0A2020656C73650D0A2020626567696E0D0A202020207368705F7A6562
        72612E62727573682E636F6C6F72203A3D20636C57686974653B0D0A20202020
        7368705F7A656272612E746167203A3D20303B0D0A2020656E643B0D0A656E64
        3B0D0A0D436F6D706F6E656E744E616D6506097368705F7A6562726109457665
        6E744E616D6506074F6E5072696E74074576656E74494402200000}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object qry: TUniQuery
    Connection = dtm_dados.mysql_conn
    Left = 320
    Top = 100
  end
end
