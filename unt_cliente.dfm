object frm_cliente: Tfrm_cliente
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 546
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object pnlTotal: TPanel
    Left = 0
    Top = 94
    Width = 1184
    Height = 70
    Align = alTop
    BevelOuter = bvNone
    Ctl3D = False
    Padding.Left = 3
    Padding.Right = 3
    ParentCtl3D = False
    TabOrder = 0
    object Panel3: TPanel
      Left = 3
      Top = 0
      Width = 1178
      Height = 20
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' DADOS GERAIS'
      Color = 12159842
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object pnl_geral: TPanel
      Left = 3
      Top = 20
      Width = 1178
      Height = 50
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 1
      object Label1: TLabel
        Left = 10
        Top = 5
        Width = 12
        Height = 17
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 70
        Top = 5
        Width = 26
        Height = 17
        Caption = 'Tipo'
      end
      object lbl_cnpj_cpf: TLabel
        Left = 165
        Top = 5
        Width = 73
        Height = 17
        Cursor = crHandPoint
        Caption = 'CNPJ ou CPF'
        OnClick = lbl_cnpj_cpfClick
      end
      object Label4: TLabel
        Left = 300
        Top = 5
        Width = 123
        Height = 17
        Caption = 'Nome / Raz'#227'o Social'
      end
      object Label5: TLabel
        Left = 705
        Top = 5
        Width = 47
        Height = 17
        Caption = 'Fantasia'
      end
      object Label3: TLabel
        Left = 955
        Top = 5
        Width = 49
        Height = 17
        Caption = 'Situa'#231#227'o'
      end
      object edt_id: TwwDBEdit
        Left = 10
        Top = 22
        Width = 55
        Height = 23
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
        Left = 165
        Top = 22
        Width = 130
        Height = 23
        BorderStyle = bsNone
        DataField = 'cnpj'
        DataSource = dts_cliente
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = edt_cnpj_cpfExit
      end
      object edt_nome: TwwDBEdit
        Left = 300
        Top = 22
        Width = 400
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'nome'
        DataSource = dts_cliente
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object cmb_tipo: TwwDBComboBox
        Left = 70
        Top = 22
        Width = 90
        Height = 23
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        BorderStyle = bsNone
        DataField = 'tipo'
        DataSource = dts_cliente
        DropDownCount = 8
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ItemHeight = 0
        Items.Strings = (
          'F'#237'sica'#9'F'
          'Jur'#237'dica'#9'J')
        Sorted = False
        TabOrder = 1
        UnboundDataType = wwDefault
        OnCloseUp = cmb_tipoCloseUp
      end
      object edt_fantasia: TwwDBEdit
        Left = 705
        Top = 22
        Width = 245
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fantasia'
        DataSource = dts_cliente
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object cmb_situacao: TwwDBComboBox
        Left = 955
        Top = 22
        Width = 115
        Height = 23
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        BorderStyle = bsNone
        DataField = 'situacao'
        DataSource = dts_cliente
        DropDownCount = 8
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        ItemHeight = 0
        Items.Strings = (
          'ATIVO'#9'A'
          'INATIVO'#9'I')
        Sorted = False
        TabOrder = 5
        UnboundDataType = wwDefault
      end
    end
  end
  object pnl_endereco: TPanel
    Left = 0
    Top = 164
    Width = 1184
    Height = 74
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    TabOrder = 1
    object pnl_tit_endereco: TPanel
      Left = 3
      Top = 3
      Width = 1178
      Height = 20
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' ENDERE'#199'O'
      Color = 12159842
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object pnl_dados_endereco: TPanel
      Left = 3
      Top = 23
      Width = 1178
      Height = 51
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 1
      object Label6: TLabel
        Left = 840
        Top = 5
        Width = 82
        Height = 17
        Caption = 'Complemento'
      end
      object Label7: TLabel
        Left = 100
        Top = 5
        Width = 15
        Height = 17
        Caption = 'UF'
      end
      object Label8: TLabel
        Left = 9
        Top = 5
        Width = 22
        Height = 17
        Caption = 'CEP'
      end
      object Label9: TLabel
        Left = 528
        Top = 5
        Width = 70
        Height = 17
        Caption = 'Logradouro'
      end
      object Label10: TLabel
        Left = 792
        Top = 5
        Width = 16
        Height = 17
        Caption = 'N'#186
      end
      object Label11: TLabel
        Left = 152
        Top = 5
        Width = 57
        Height = 17
        Caption = 'Munic'#237'pio'
      end
      object lbl_bairro: TLabel
        Left = 330
        Top = 5
        Width = 35
        Height = 17
        Caption = 'Bairro'
        DragCursor = crHandPoint
      end
      object btn_bairro: TSpeedButton
        Left = 504
        Top = 21
        Width = 18
        Height = 23
        Caption = ' +'
        Flat = True
        Margin = 0
        Spacing = 0
        OnClick = btn_bairroClick
      end
      object edt_complemento: TwwDBEdit
        Left = 840
        Top = 22
        Width = 147
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'complemento'
        DataSource = dts_endereco
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_cep: TwwDBEdit
        Left = 9
        Top = 22
        Width = 86
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cep'
        DataSource = dts_endereco
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = edt_cepExit
      end
      object edt_logradouro: TwwDBEdit
        Left = 528
        Top = 22
        Width = 260
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'logradouro'
        DataSource = dts_endereco
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_numero: TwwDBEdit
        Left = 792
        Top = 22
        Width = 44
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'numero'
        DataSource = dts_endereco
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object cmb_uf: TwwDBLookupCombo
        Left = 100
        Top = 22
        Width = 47
        Height = 23
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'sigla'#9'2'#9'UF'#9'F')
        DataField = 'id_uf'
        DataSource = dts_endereco
        LookupTable = dtm_dados.qry_uf
        LookupField = 'id'
        Style = csDropDownList
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 1
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
      end
      object cmb_municipio: TwwDBLookupCombo
        Left = 152
        Top = 22
        Width = 173
        Height = 23
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'60'#9'MUNIC'#205'PIO'#9'F')
        DataField = 'id_municipio'
        DataSource = dts_endereco
        LookupTable = dtm_dados.qry_municipio
        LookupField = 'id'
        Style = csDropDownList
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 2
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        ShowMatchText = True
        OnCloseUp = cmb_municipioCloseUp
      end
      object cmb_bairro: TwwDBComboBox
        Left = 330
        Top = 22
        Width = 175
        Height = 23
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        ShowMatchText = True
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'id_bairro'
        DataSource = dts_endereco
        DropDownCount = 8
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        ItemHeight = 0
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
        OnExit = cmb_bairroExit
      end
    end
  end
  object pnl_contato: TPanel
    Left = 0
    Top = 238
    Width = 1184
    Height = 165
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 2
    object onl_telefone: TPanel
      Left = 3
      Top = 3
      Width = 439
      Height = 159
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object pnl_tit_telefone: TPanel
        Left = 0
        Top = 0
        Width = 439
        Height = 20
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Caption = ' TELEFONES'
        Color = 12159842
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object grd_tel: TwwDBGrid
        Left = 0
        Top = 20
        Width = 439
        Height = 139
        ControlType.Strings = (
          'descricao;CustomEdit;cmb_desc_tel;F'
          'tipo;CustomEdit;cmb_tipo_tel;T'
          'tem_whatsapp;CheckBox;S;N')
        Selected.Strings = (
          'descricao'#9'22'#9'DESC.'#9#9
          'tipo'#9'12'#9'TIPO'#9#9
          'numero'#9'14'#9'N'#218'MERO'#9#9
          'tem_whatsapp'#9'7'#9'WHATS?'#9#9)
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Ctl3D = False
        DataSource = dts_tel
        ParentCtl3D = False
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
        UseTFields = False
      end
      object cmb_desc_tel: TwwDBComboBox
        Left = 12
        Top = 68
        Width = 145
        Height = 23
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'descricao'
        DataSource = dts_tel
        DropDownCount = 8
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ItemHeight = 0
        Items.Strings = (
          'Pessoal'
          'Trabalho'
          'Recado'
          'Residencial'
          'Tempor'#225'ro')
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object cmb_tipo_tel: TwwDBComboBox
        Left = 163
        Top = 70
        Width = 76
        Height = 25
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        DataField = 'tipo'
        DataSource = dts_tel
        DropDownCount = 8
        ItemHeight = 0
        Items.Strings = (
          'CELULAR'#9'C'
          'FIXO'#9'F')
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
    end
    object Panel1: TPanel
      Left = 442
      Top = 3
      Width = 739
      Height = 159
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 3
      TabOrder = 1
      object Panel2: TPanel
        Left = 3
        Top = 0
        Width = 736
        Height = 20
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Caption = ' E-MAILS'
        Color = 12159842
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object grd_email: TwwDBGrid
        Left = 3
        Top = 20
        Width = 736
        Height = 139
        ControlType.Strings = (
          'descricao;CustomEdit;cmb_desc_email;F'
          'tipo;CustomEdit;cmb_tipo_email;F'
          'tem_whatsapp;CheckBox;S;N')
        Selected.Strings = (
          'tipo'#9'10'#9'TIPO'
          'endereco'#9'38'#9'ENDERE'#199'O'
          'descricao'#9'30'#9'DESC.')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        Ctl3D = False
        DataSource = dts_email
        ParentCtl3D = False
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object cmb_tipo_email: TwwDBComboBox
        Left = 20
        Top = 57
        Width = 80
        Height = 23
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tipo'
        DataSource = dts_email
        DropDownCount = 8
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ItemHeight = 0
        Items.Strings = (
          'CELULAR'#9'C'
          'FIXO'#9'F')
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object cmb_desc_email: TwwDBComboBox
        Left = 187
        Top = 72
        Width = 91
        Height = 23
        ShowButton = True
        Style = csDropDown
        MapList = False
        AllowClearKey = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'descricao'
        DataSource = dts_email
        DropDownCount = 8
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ItemHeight = 0
        Items.Strings = (
          'Pessoal'
          'Trabalho'
          'Recado'
          'Residencial'
          'Tempor'#225'ro')
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
    end
  end
  object pnl_obs: TPanel
    Left = 0
    Top = 403
    Width = 1184
    Height = 143
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 3
    object pnl_tit_obs: TPanel
      Left = 3
      Top = 3
      Width = 1178
      Height = 20
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' OBSERVA'#199#213'ES'
      Color = 12159842
      Ctl3D = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 3
      Top = 23
      Width = 1178
      Height = 117
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Ctl3D = False
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 1
      object Panel5: TPanel
        Left = 10
        Top = 10
        Width = 1156
        Height = 95
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object rce_obs: TwwDBRichEdit
          Left = 2
          Top = 2
          Width = 1152
          Height = 91
          Align = alClient
          AutoURLDetect = False
          BorderStyle = bsNone
          DataField = 'obs'
          DataSource = dts_cliente
          PrintJobName = 'EcoSystem - CodeGear Delphi for Microsoft Windows - unt_cliente'
          TabOrder = 0
          EditorCaption = 'Observa'#231#245'es'
          EditorPosition.Left = 0
          EditorPosition.Top = 0
          EditorPosition.Width = 0
          EditorPosition.Height = 0
          MeasurementUnits = muInches
          PrintMargins.Top = 1.000000000000000000
          PrintMargins.Bottom = 1.000000000000000000
          PrintMargins.Left = 1.000000000000000000
          PrintMargins.Right = 1.000000000000000000
          PrintHeader.VertMargin = 0.500000000000000000
          PrintHeader.Font.Charset = DEFAULT_CHARSET
          PrintHeader.Font.Color = clWindowText
          PrintHeader.Font.Height = -11
          PrintHeader.Font.Name = 'Tahoma'
          PrintHeader.Font.Style = []
          PrintFooter.VertMargin = 0.500000000000000000
          PrintFooter.Font.Charset = DEFAULT_CHARSET
          PrintFooter.Font.Color = clWindowText
          PrintFooter.Font.Height = -11
          PrintFooter.Font.Name = 'Tahoma'
          PrintFooter.Font.Style = []
          RichEditVersion = 2
          Data = {
            800000007B5C727466315C616E73695C616E7369637067313235325C64656666
            305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C
            666368617273657430205365676F652055493B7D7D0D0A5C766965776B696E64
            345C7563315C706172645C66305C66733230207263655F6F62735C7061720D0A
            7D0D0A00}
        end
      end
    end
  end
  object toolbar: TToolBar
    Left = 0
    Top = 30
    Width = 1184
    Height = 64
    AutoSize = True
    ButtonHeight = 64
    ButtonWidth = 67
    Caption = 'Novo'
    DisabledImages = dtm_images.img_40
    Images = dtm_images.img_40
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 4
    object btn_novo: TToolButton
      Left = 0
      Top = 0
      Caption = 'Novo'
      ImageIndex = 2
      OnClick = btn_novoClick
    end
    object btn_editar: TToolButton
      Left = 67
      Top = 0
      Caption = 'Editar'
      ImageIndex = 4
      OnClick = btn_editarClick
    end
    object btn_excluir: TToolButton
      Left = 134
      Top = 0
      Caption = 'Excluir'
      ImageIndex = 3
      OnClick = btn_excluirClick
    end
    object sep_1: TToolButton
      Left = 201
      Top = 0
      Width = 8
      Caption = 'sep_1'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_salvar: TToolButton
      Left = 209
      Top = 0
      Caption = 'Salvar'
      ImageIndex = 5
      OnClick = btn_salvarClick
    end
    object btn_cancelar: TToolButton
      Left = 276
      Top = 0
      Caption = 'Cancelar'
      ImageIndex = 6
      OnClick = btn_cancelarClick
    end
    object sep_2: TToolButton
      Left = 343
      Top = 0
      Width = 8
      Caption = 'sep_2'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_localizar: TToolButton
      Left = 351
      Top = 0
      Caption = 'Localizar'
      ImageIndex = 8
      OnClick = btn_localizarClick
    end
    object btn_primeiro: TToolButton
      Left = 418
      Top = 0
      Caption = 'Primeiro'
      ImageIndex = 9
      OnClick = btn_primeiroClick
    end
    object btn_anterior: TToolButton
      Left = 485
      Top = 0
      Caption = 'Anterior'
      ImageIndex = 10
      OnClick = btn_anteriorClick
    end
    object btn_proximo: TToolButton
      Left = 552
      Top = 0
      Caption = 'Pr'#243'ximo'
      ImageIndex = 11
      OnClick = btn_proximoClick
    end
    object btn_ultimo: TToolButton
      Left = 619
      Top = 0
      Caption = #218'ltimo'
      ImageIndex = 12
      OnClick = btn_ultimoClick
    end
    object ToolButton2: TToolButton
      Left = 686
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_atividades: TToolButton
      Left = 694
      Top = 0
      Caption = 'Atividades'
      ImageIndex = 13
      OnClick = btn_atividadesClick
    end
    object btn_pasta: TToolButton
      Left = 761
      Top = 0
      Caption = 'Pasta'
      ImageIndex = 15
      OnClick = btn_pastaClick
    end
    object btn_whats: TToolButton
      Left = 828
      Top = 0
      Caption = 'Whats.'
      ImageIndex = 16
    end
    object sep_3: TToolButton
      Left = 895
      Top = 0
      Width = 8
      Caption = 'sep_3'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_fechar: TToolButton
      Left = 903
      Top = 0
      Hint = 'Fechar Tela'
      Caption = 'Fechar'
      ImageIndex = 1
      OnClick = btn_fecharClick
    end
  end
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1184
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = ' CLIENTES'
    Color = 12159842
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 5
    OnMouseDown = pnlTituloMouseDown
  end
  object dts_endereco: TDataSource
    DataSet = dse_endereco
    Left = 1100
    Top = 186
  end
  object dts_tel: TDataSource
    DataSet = dse_tel
    Left = 339
    Top = 340
  end
  object dts_email: TDataSource
    DataSet = dse_email
    Left = 921
    Top = 340
  end
  object dts_cliente: TDataSource
    AutoEdit = False
    DataSet = dse_cliente
    OnStateChange = dts_clienteStateChange
    Left = 1017
    Top = 46
  end
  object qry: TUniQuery
    Connection = dtm_dados.mysql_conn
    Left = 926
    Top = 43
  end
  object dse_cliente: TUniQuery
    UpdatingTable = 'pessoa'
    SQLInsert.Strings = (
      'INSERT INTO pessoa'
      
        '  (id, tipo, cpf, cnpj, nome, fantasia, cliente, fornecedor, usu' +
        'ario, obs, situacao)'
      'VALUES'
      
        '  (:id, :tipo, :cpf, :cnpj, :nome, :fantasia, :cliente, :fornece' +
        'dor, :usuario, :obs, :situacao)')
    SQLDelete.Strings = (
      'DELETE FROM pessoa'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE pessoa'
      'SET'
      
        '  id = :id, tipo = :tipo, cpf = :cpf, cnpj = :cnpj, nome = :nome' +
        ', fantasia = :fantasia, cliente = :cliente, fornecedor = :fornec' +
        'edor, usuario = :usuario, obs = :obs, situacao = :situacao'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, tipo, cpf, cnpj, nome, fantasia, cliente, fornecedor,' +
        ' usuario, obs, situacao FROM pessoa'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM pessoa'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select * '
      'from pessoa '
      'where id = :id'
      '    and cliente = '#39'S'#39)
    Options.StrictUpdate = False
    AfterOpen = dse_clienteAfterOpen
    AfterClose = dse_clienteAfterClose
    AfterEdit = dse_clienteAfterEdit
    AfterScroll = dse_clienteAfterScroll
    OnNewRecord = dse_clienteNewRecord
    Left = 1045
    Top = 46
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = Null
      end>
    object dse_clienteid: TIntegerField
      FieldName = 'id'
    end
    object dse_clientetipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object dse_clientecpf: TStringField
      FieldName = 'cpf'
      Size = 11
    end
    object dse_clientecnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object dse_clientenome: TStringField
      FieldName = 'nome'
      Size = 120
    end
    object dse_clientefantasia: TStringField
      FieldName = 'fantasia'
      Size = 100
    end
    object dse_clientecliente: TStringField
      FieldName = 'cliente'
      FixedChar = True
      Size = 1
    end
    object dse_clientefornecedor: TStringField
      FieldName = 'fornecedor'
      FixedChar = True
      Size = 1
    end
    object dse_clienteusuario: TStringField
      FieldName = 'usuario'
      FixedChar = True
      Size = 1
    end
    object dse_clienteobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
    object dse_clientesituacao: TStringField
      FieldName = 'situacao'
      FixedChar = True
      Size = 1
    end
  end
  object dse_endereco: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO endereco'
      
        '  (id, id_pessoa, descricao, cep, id_uf, id_municipio, id_bairro' +
        ', logradouro, numero, complemento)'
      'VALUES'
      
        '  (:id, :id_pessoa, :descricao, :cep, :id_uf, :id_municipio, :id' +
        '_bairro, :logradouro, :numero, :complemento)')
    SQLDelete.Strings = (
      'DELETE FROM endereco'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE endereco'
      'SET'
      
        '  id = :id, id_pessoa = :id_pessoa, descricao = :descricao, cep ' +
        '= :cep, id_uf = :id_uf, id_municipio = :id_municipio, id_bairro ' +
        '= :id_bairro, logradouro = :logradouro, numero = :numero, comple' +
        'mento = :complemento'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, id_pessoa, descricao, cep, id_uf, id_municipio, id_ba' +
        'irro, logradouro, numero, complemento FROM endereco'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM endereco'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select * '
      'from endereco '
      'where id_pessoa = :id')
    MasterSource = dts_cliente
    Options.StrictUpdate = False
    OnNewRecord = dse_enderecoNewRecord
    Left = 1073
    Top = 186
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
      end>
    object dse_enderecoid: TIntegerField
      FieldName = 'id'
    end
    object dse_enderecoid_pessoa: TIntegerField
      FieldName = 'id_pessoa'
    end
    object dse_enderecodescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 45
    end
    object dse_enderecocep: TStringField
      FieldName = 'cep'
      Size = 8
    end
    object dse_enderecoid_uf: TIntegerField
      FieldName = 'id_uf'
      Required = True
    end
    object dse_enderecoid_municipio: TIntegerField
      FieldName = 'id_municipio'
      Required = True
    end
    object dse_enderecoid_bairro: TIntegerField
      FieldName = 'id_bairro'
      Required = True
    end
    object dse_enderecologradouro: TStringField
      FieldName = 'logradouro'
      Required = True
      Size = 100
    end
    object dse_endereconumero: TIntegerField
      FieldName = 'numero'
    end
    object dse_enderecocomplemento: TStringField
      FieldName = 'complemento'
    end
  end
  object dse_tel: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO telefone'
      '  (id, tipo, numero, tem_whatsapp, id_pessoa, descricao)'
      'VALUES'
      '  (:id, :tipo, :numero, :tem_whatsapp, :id_pessoa, :descricao)')
    SQLDelete.Strings = (
      'DELETE FROM telefone'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE telefone'
      'SET'
      
        '  id = :id, tipo = :tipo, numero = :numero, tem_whatsapp = :tem_' +
        'whatsapp, id_pessoa = :id_pessoa, descricao = :descricao'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, tipo, numero, tem_whatsapp, id_pessoa, descricao FROM' +
        ' telefone'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM telefone'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select *'
      'from telefone '
      'where id_pessoa = :id'
      'order by descricao')
    MasterSource = dts_cliente
    Options.StrictUpdate = False
    AfterScroll = dse_telAfterScroll
    OnNewRecord = dse_telNewRecord
    Left = 367
    Top = 340
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = Null
      end>
    object dse_teldescricao: TStringField
      DisplayLabel = 'DESC.'
      DisplayWidth = 22
      FieldName = 'descricao'
      Size = 30
    end
    object dse_teltipo: TStringField
      DisplayLabel = 'TIPO'
      DisplayWidth = 12
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object dse_telnumero: TStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 14
      FieldName = 'numero'
      Size = 11
    end
    object dse_teltem_whatsapp: TStringField
      DisplayLabel = 'WHATS?'
      DisplayWidth = 7
      FieldName = 'tem_whatsapp'
      FixedChar = True
      Size = 1
    end
    object dse_telid: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 6
      FieldName = 'id'
      Visible = False
    end
    object dse_telid_pessoa: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_pessoa'
      Visible = False
    end
  end
  object dse_email: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO email'
      '  (id, id_pessoa, tipo, endereco, descricao)'
      'VALUES'
      '  (:id, :id_pessoa, :tipo, :endereco, :descricao)')
    SQLDelete.Strings = (
      'DELETE FROM email'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE email'
      'SET'
      
        '  id = :id, id_pessoa = :id_pessoa, tipo = :tipo, endereco = :en' +
        'dereco, descricao = :descricao'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, id_pessoa, tipo, endereco, descricao FROM email'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM email'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select *'
      'from email'
      'where id_pessoa = :id')
    MasterSource = dts_cliente
    Options.StrictUpdate = False
    OnNewRecord = dse_emailNewRecord
    Left = 949
    Top = 340
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = Null
      end>
    object dse_emailtipo: TStringField
      DisplayLabel = 'TIPO'
      DisplayWidth = 10
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object dse_emailendereco: TStringField
      DisplayLabel = 'ENDERE'#199'O'
      DisplayWidth = 38
      FieldName = 'endereco'
      Size = 120
    end
    object dse_emaildescricao: TStringField
      DisplayLabel = 'DESC.'
      DisplayWidth = 30
      FieldName = 'descricao'
      Size = 30
    end
    object dse_emailid: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 10
      FieldName = 'id'
      Visible = False
    end
    object dse_emailid_pessoa: TIntegerField
      DisplayWidth = 10
      FieldName = 'id_pessoa'
      Visible = False
    end
  end
end
