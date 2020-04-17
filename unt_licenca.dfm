object frm_licenca: Tfrm_licenca
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Licen'#231'a'
  ClientHeight = 420
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
  OnClose = FormClose
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
      OnMouseDown = pnl_tit_geralMouseDown
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
      object btn_recarregar: TSpeedButton
        Left = 1049
        Top = -1
        Width = 71
        Height = 52
        Caption = 'Recarregar'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FEFEFE00FEFE
          FE00FDFDFD00FCFCFC00FAFAFA00F9F9F900F9F9F900F9F9F900F9F9F900F9F9
          F900FAFAFA00FCFCFC00FDFDFD00FEFEFE00FEFEFE00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FDFDFD00FBFBFB00F8F8F800F5F5F500F2F2
          F200F0F0F000EEEEEE00ECECEC00EBEBEB00EAEAEA00EAEAEA00EAEAEA00EAEA
          EA00ECECEC00EEEEEE00F0F0F000F2F2F200F5F5F500F8F8F800FBFBFB00FDFD
          FD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FDFDFD00F5F5F500F0F0F000EBEBEB00E7E7E700E3E3E300E0E0
          E000DCDCDC00DADADA00D7D7D700D6D6D600D7D7D700D9D9D900DCDCDC00DEDE
          DE00E1E1E100E3E3E300E5E5E500E5E5E500E5E5E500E7E7E700EBEBEB00F0F0
          F000F4F4F400F9F9F900FDFDFD00FF00FF00FF00FF00FF00FF00FEFEFE00FEFE
          FE00DCDAD800E6E4E400EFEFEF00E4E4E400DFDFDF00DADADA00D5D5D500D0D0
          D000CDCDCD00CBCBCB00CECECE00CACACA00BDBDBC00B3AFAD00A79E9700A194
          8C009C8E8400A1938A00ADA29B00C0BCB900D2D2D100E6E6E600E5E5E500E4E4
          E400E9E9E900EEEEEE00F4F4F400FAFAFA00FEFEFE00FF00FF00FCFCFC00FF00
          FF00AA9A8F009B715600E7E6E600E4E4E400D8D8D800D3D3D300CECECE00CECE
          CE00CBCBCB00B6B4B200988B82008E715D00936444009A623800A4663A00A769
          3A00AA693A00A7663600A2623300995E3300976745009D867600C2BDBA00E9E9
          E900E7E7E700E9E9E900EFEFEF00F4F4F400FBFBFB00FF00FF00FCFCFC00FF00
          FF00B5AAA200B57E56009F826D00E4E3E300DFDFDF00DCDCDC00D8D8D800B3AD
          A800937864009C6A4600B1764900BC805200BB805200BA7D4F00B87A4C00B478
          4700B2744500B0724200AF704000AD6E3D00AB6B3A00AE6D3D009F653C00A38A
          7B00E3E2E100F1F1F100F0F0F000F6F6F600FCFCFC00FF00FF00FF00FF00FF00
          FF00B9AEA700CFA88900CDA687009D806D00EAE9E900C5C1BE009B7A6400AA79
          5400C6977000C9987000C38D6000BB805100B87B4C00B6794A00B4774800B375
          4500B1744400B0734300AF714000AC6E3E00AA6B3B00AA6C3C00B3764800B072
          4500A17A5F00ECEAEA00FAFAFA00FCFCFC00FF00FF00FF00FF00FF00FF00FF00
          FF00C8B8AE00C59D7E00E6CFB600C29878009C715500AB7F5E00D1AB8A00D5B1
          8F00CDA27C00C6956C00C18C6100BC835500B87C4D00B87C4D00B97D4E00B67A
          4B00B0754700AD6F4100A7693B00A2653700A5663700A7683800AC6E3F00B67C
          4F00B2764A00AC8B7400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D7C2B300BE987A00E0C3A700DDC1A700D3B39600DCBFA200D9B99900D1AC
          8900CDA37E00C89A7300C4926700C28C6100BF875A00B57B5000A56A3F00A06A
          4400AA816300B4978000B7957C00B1805E00AC7B5900A0684000985A2D00AA6D
          3F00BA815600A2683E00DECFC400FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D8C5B700BE977700DFC0A400DBBC9E00DCBEA000D9B99900D8B79700D4B2
          9000CFA88500CDA27D00CCA07A00BB886200A36C4500B48E7300DAC7BA00F7F3
          F000FF00FF00FF00FF00FF00FF00EBCFC300D6BAA100D6B8A000C39D80009D65
          3E00A66A3E00B57D5200B58E7200FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D8C5B700BD947200DDBD9D00DBBA9D00DABB9D00D9B99B00D8B79800D7B6
          9500D8B69600CBA48400A7755000B8977E00EBE2DB00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00F5EBE600D7BBA400E0C4AF00DFC4AF00D6B8
          A000A36F4900AA6F4400A36D4700F7F3F000FF00FF00FF00FF00FF00FF00FF00
          FF00D8C5B700BB916E00DCB79500D9B79800DBBC9F00DABB9C00D9B99A00D8BA
          9D00BF997900AB806400E3D5CC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FBF9F600DCC1AD00E7D2C100E6CFBD00E6CE
          BC00D9BCA5009C633A009C623700E4D7CD00FF00FF00FF00FF00FF00FF00FF00
          FF00D8C5B700BA8F6C00DAB38F00D8B39100DBBA9C00DBBC9F00DCBD9F00CEAF
          93009D6A4800FCFBF900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FDFBF900E0C9B700F0E0D500EFDFD300ECDB
          CE00EEDDCF00C6A086008D502600D8C4B700FF00FF00FF00FF00FF00FF00FF00
          FF00D8C5B800B88C6900D7AE8700D5AE8900D8B69500DBBC9F00DABB9D00DCC0
          A300BD977700C5A48D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FDFDFC00EBDED200F7EEE700F6EDE600F4E9
          E100F4E8DF00EAD8CB0091573000D4BEAF00FF00FF00FF00FF00FF00FF00FF00
          FF00DBC9BC00B98D6900D7AB8200D5AA8300D8B39000DCBB9B00DCBEA100DCBC
          9E00E0C4A900B58C6C00CCB3A100FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FFFEFE00FCF9F700FEFCFB00FDF9F700FBF7
          F300FAF5F000FAF4EF00AF846500D0B8A700FF00FF00FF00FF00FF00FF00FF00
          FF00D9C7BA00B5886400D4AE8B00D1AB8800D4B19100D6B79A00D9BBA100D8BB
          A000D8BA9F00D9BFA400A7795500CFB7A700FEFEFD00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00EADFD700EDE3DD00FF00FF00FF00FF00FF00FF00FF00
          FF00E9DED700B28C7200B18B7100B18B7100B1896F00B28B7000B58F7500B58F
          7500B58F7500B5907600B48E7300B48E7400F5EFEC00FF00FF00FF00FF00F6F1
          ED00CEB4A300D4BDAE00D4BEAF00D2BDAD00D5BFB000D6C1B200D6C0B200D6C2
          B200D7C2B300D6C1B200DAC7B900F5F0ED00FF00FF00FF00FF00FF00FF00FF00
          FF00FCFAF900FEFEFD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FEFEFD00FF00FF00FF00FF00FBF8
          F400AC836300AE836400CEAE9500C8A78C00C9A98F00C9A88E00C8A68B00C7A3
          8700C6A18400CBA78A00AF815F00DAC8BB00FF00FF00FF00FF00FF00FF00FF00
          FF00BD9D8700CDAB9300FEFCFA00FCF9F700FDFCFA00FEFEFD00FFFFFE00FEFE
          FE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FBF9F800B28B7100D8BDA500E5CCB200DFC2A500E1C5AA00DFC0A200DCB9
          9700D8B08B00DEB79100C6A18200DBCABD00FF00FF00FF00FF00FF00FF00FF00
          FF00C0A08A00A4724F00F4E9E100F6ECE400F7EEE800F9F2EC00F9F3EE00F2E9
          E100FFFEFE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00F7F2F000AD826500D9BDA400DDC0A300DABA9C00DBBB9C00D8B3
          9200D4AB8500D8B08900C49D7F00D9C7BA00FF00FF00FF00FF00FF00FF00FF00
          FF00C8AB98008B4E2400DDC3B100F0E1D600F0E1D500F2E5DB00F1E4D900E5D2
          C300FFFEFE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00F6F1EE00A5765500DCC2AA00DBBC9E00DBBC9F00DBB9
          9B00D7B08E00DAB59000C49F8100D8C5B700FF00FF00FF00FF00FF00FF00FF00
          FF00D1BAA9009A5E3400AF805E00E6D0BE00E7D2C100E9D5C600EAD6C700DEC7
          B400FEFDFD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FBF9F700C7A89600B1866700DBC0A700DABA9C00DABB9D00DBBC
          9F00D9B69500DDB99700C5A08100D8C5B700FF00FF00FF00FF00FF00FF00FF00
          FF00E4D7CD00A36A40009F653A00BD957600E0C6B100E1C6B100E1C7B400DABE
          A900FCF9F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00D9CAB800AB836000C49D8000DEC2A500D8B89800D8B89800DABA9C00DBBC
          9F00DABA9B00DFBD9E00C5A08300D8C5B700FF00FF00FF00FF00FF00FF00FF00
          FF00FAF8F500A0744D00B77F54009A603500B68A6900D7B89F00DDC1AB00D8BA
          A200F1E5DE00FF00FF00FF00FF00FF00FF00FF00FF00F7F3F100D3C2AC00AD86
          6400B3805F00CFA88800D3AC8900D0AA8600D5B39200D8B79800D9B89900DABA
          9B00DBBA9D00E1C2A500C6A28600D8C5B700FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00D1968600AB794D00B67D51009F633700A0694200B6886900C098
          7A00CBA68F00E5D1C700DDCDC100CBB19E00B7917700A5744E00B0795400C391
          6A00C8976F00C6946B00C99B7400CEA58100D2AE8B00D6B69500DFC3A700E3CA
          B200DFC4A800E0C3A700C7A48800D6C3B400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00F9E9E70098704700B77E5300B3784A00A96C3E00A3663A009F65
          3A009D6439009D653900A56D4400AE764C00B7815700BD865A00BD835500BA7E
          4F00BD845700C28D6300C6966E00CBA07900D6B19100DEC1A700C29F8200A676
          5400D6BAA100E8D0B800C7A48900D5C0B100FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00DDCDC3009E663D00B47B4F00B0734500A96A3A00AC6E
          3E00AF724300B2754700B3774800B3774700B4774700B4774700B6794900B77A
          4B00BA7F5000C18B5F00CC9D7600D1AA8A00C39B7C00AB7E5F00CEB5A500E9DE
          D600A97C5D00E1C9B300CDAD9500D5C0B100FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00DFCFC400A1704C00A76D4000AC704100AB6D
          3E00AC6E3E00AD6F3F00AF714100B1734300B3764600B5794A00BA7E5000BE85
          5900C18B6000C08F6800B1815B00AA7D5C00C9AF9C00F5F0ED00FF00FF00FF00
          FF00EFE7E100AC816100BD987C00D6C2B400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00F6F2EF00C7AA9600A6734F009D60
          3400A4663C00AB6F4200AF744700B2784B00B37A4E00B07A5100AD764E00A66F
          4800A5735100B7947A00DAC7BA00FBF9F800FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00EDE4DE0097633E00CBB19F00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FCFAF800E3D3
          C900C8B29700BB9B7E00B48D7200B38B7000B7917900C4A08600D0B6A300E5D8
          D000FAF8F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00E8DCD400E2D3C900FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Layout = blGlyphTop
        Spacing = 0
        OnClick = btn_recarregarClick
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
    Height = 170
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 2
    object grd_condicionante: TwwDBGrid
      Left = 3
      Top = 18
      Width = 587
      Height = 149
      ControlType.Strings = (
        'id_pressoa_responsavel;CustomEdit;cmb_responsavel;T'
        'id_pessoa_executor;CustomEdit;cmb_executor;T'
        'id_responsavel;CustomEdit;cmb_responsavel;F'
        'id_executor;CustomEdit;cmb_executor;F'
        'cumprida;CheckBox;S;N')
      Selected.Strings = (
        'id_executor'#9'20'#9'EXECUTOR'#9'F'
        'id_responsavel'#9'20'#9'RESPONS'#193'VEL'#9'F'
        'dt_venc'#9'15'#9'VENCIMENTO'#9'F'
        'dt_cumprimento'#9'15'#9'DT.CUMP.'#9'F'
        'dt_aviso'#9'15'#9'AVISO'#9'F'
        'cumprida'#9'2'#9'OK'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dts_condicionante
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
      ExplicitWidth = 712
    end
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
    object Panel4: TPanel
      Left = 590
      Top = 18
      Width = 715
      Height = 149
      Align = alRight
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 713
        Height = 21
        Align = alTop
        BevelOuter = bvNone
        Caption = 'DESCRI'#199#195'O'
        TabOrder = 0
        ExplicitWidth = 588
      end
      object mmo_desc_condicionante: TDBMemo
        Left = 0
        Top = 21
        Width = 713
        Height = 126
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'descricao'
        DataSource = dts_condicionante
        ParentCtl3D = False
        TabOrder = 1
        ExplicitWidth = 588
      end
    end
    object cmb_executor: TwwDBComboBox
      Left = 250
      Top = 60
      Width = 190
      Height = 19
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DataField = 'id_executor'
      DataSource = dts_condicionante
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'PEDRO'#9'3')
      Sorted = False
      TabOrder = 2
      UnboundDataType = wwDefault
    end
    object cmb_responsavel: TwwDBComboBox
      Left = 27
      Top = 60
      Width = 121
      Height = 19
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DataField = 'id_responsavel'
      DataSource = dts_condicionante
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'PEDRO MISSAWA'#9'3'
        'LUIZ ALBERTO'#9'4')
      Sorted = False
      TabOrder = 4
      UnboundDataType = wwDefault
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 383
    Width = 1308
    Height = 37
    Align = alBottom
    TabOrder = 3
    object btn_ok: TSpeedButton
      Left = 1251
      Top = -1
      Width = 56
      Height = 36
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFEFEFEFAFAFAFCFCFCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEEDEFEECED3D09DADA3C5CAC6E9EBEAFBFBFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEF4F5F4B5C1B90A7E38357F51B7C3BBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF61A47D0B8E4208863A0D7E3975A788E9F1ECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC8E2D5129F531797500E8E4508873C07833822884A9AC5
        AAFAFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFDFC48B67F23AC6522A55F1A9C550F9248098A4009853B077F
        353F945FBDD7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA8D9C225BB7337BA7A2DB16E25A9641EA15B0F964C0A8F440A89
        3F088339077D3562A47BDAE7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEFF8F439C58749CB9044C5883ABD7E31B67429AE6B21A660119A500B93
        470B8D4309883E06823716813F86B899F0F6F2FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8CDBBA49D59A5FD5A251CE9647C88D3EC28436BB7A2EB47124AB66129F
        540B974B0C92470B8C4208863C0680362D8D52A6CBB4FDFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E0F4EC43D89E77E1B76BDCAD61D7A557D19C4DCC9344C68A3BBF8133B97828B0
        6C14A3590C9C4F0D974B0B90450A8B4008853A067E35489867C6DCCEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        77E1B977E9BE88E8C37AE3BA70DFB266DAA95FD6A33BC98A2FC2803BC2843ABD
        7F2DB57217A85F0DA0530E9B4F0C95490B8F440A893F078439087D356EAA85E2
        EDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9F1E2
        61EAB9A3F1D593EDCB89EAC57FE6BE79E2B85FDBA935C38630B97B29BF7C36C4
        833CC08335BA7A1BAD650EA4580E9F530D994D0C94480B8E4209883D0682361C
        86448EBEA0F4F9F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFC6CECC1
        A7F6DBADF5DCA1F2D598EFCF8FECC988EAC441D49AA1DFC3E6F6EF68CB9D20B7
        732EC17F38C3833ABE8023B26D10A85C0FA3570E9E520D984C0B91460A8C4108
        863C068036339156AFCFBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0F4DE88F9D5
        CEFAEBB8F7E2AEF5DDA6F3D8A3F1D575EBC048C992FBFEFCFFFFFFFFFFFFC5EB
        D94EC28D22B97531C18038BF802AB77414AC6210A65B10A1560E9C500C964A0B
        90450A8A4007853A067F35519D6ED1E1D7FFFFFFFFFFFFFFFFFF58CE9C58E9B7
        94F9D9BCF9E5C3F8E7B6F7E1A7F6DB40D99FBEE8D5FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA5E0C43AC3882FC78736C18128B97619B16912AA5F11A55A0FA0540D
        9A4E0C94490B8F4409893F0684380E813A77B28DE8F1EBFFFFFFE4F5ED74D9B0
        72F1C995FADAA4FADFC9FBEB7BF3CB60D0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF0FAF68BE4C25AE1B15DD29F29BC781AB36C15AD6413A95E10
        A4580F9E520D994D0C93470A8D4209883C0682371E8846A0C6AEFFFFFFFFFFFF
        E5FAF3C8F9EA49E7B173F7CE44DAA2DBF2E7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE5FAF3DAFCF2B3EBD547C99021B77117B16815
        AC6313A75D10A2570E9D510C974B0B92460A8C4109843A33A86BFFFFFFFFFFFF
        FFFFFFFFFFFFB1EBD43FC58B83D6B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEF991EFCF37CF9229BD7B1A
        B46D17AF6715AB6112A65B10A1550E9B4F0B954813974EA0DEC2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF3FBF7F7FCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEA4E9CE38C78B27
        BC7A22BA7519B36B17AE6514A96011A459139F5545BB83FCFEFDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF9F379
        D1A927B77629BD7B1FB87318B16917AC641CAC67C6EBDAFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD2EFE25CC79523B77527BC7921B7726BCCA0FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFB5E5CF3DBD832EB97BE2F5ECFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2F5ECB0E4CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btn_okClick
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
    Left = 1154
    Top = 28
  end
  object dts_condicionante: TDataSource
    DataSet = dse_condicionante
    Left = 246
    Top = 300
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
    Left = 1182
    Top = 28
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
  object dse_condicionante: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO condicionante'
      
        '  (id, id_licenca, descricao, cumprida, dt_venc, dt_cumprimento,' +
        ' dt_aviso, id_responsavel, id_executor)'
      'VALUES'
      
        '  (:id, :id_licenca, :descricao, :cumprida, :dt_venc, :dt_cumpri' +
        'mento, :dt_aviso, :id_responsavel, :id_executor)')
    SQLDelete.Strings = (
      'DELETE FROM condicionante'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE condicionante'
      'SET'
      
        '  id = :id, id_licenca = :id_licenca, descricao = :descricao, cu' +
        'mprida = :cumprida, dt_venc = :dt_venc, dt_cumprimento = :dt_cum' +
        'primento, dt_aviso = :dt_aviso, id_responsavel = :id_responsavel' +
        ', id_executor = :id_executor'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, id_licenca, descricao, cumprida, dt_venc, dt_cumprime' +
        'nto, dt_aviso, id_responsavel, id_executor FROM condicionante'
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
    Active = True
    BeforeOpen = dse_condicionanteBeforeOpen
    OnNewRecord = dse_condicionanteNewRecord
    Left = 275
    Top = 300
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = Null
      end>
  end
end
