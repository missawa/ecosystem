object frm_cliente: Tfrm_cliente
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 546
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTotal: TPanel
    Left = 0
    Top = 73
    Width = 980
    Height = 65
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
      Width = 974
      Height = 15
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' DADOS GERAIS'
      Color = 12159842
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object pnl_geral: TPanel
      Left = 3
      Top = 15
      Width = 974
      Height = 50
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 1
      object Label1: TLabel
        Left = 9
        Top = 9
        Width = 11
        Height = 13
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 65
        Top = 9
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object lbl_cnpj_cpf: TLabel
        Left = 156
        Top = 9
        Width = 62
        Height = 13
        Cursor = crHandPoint
        Caption = 'CNPJ ou CPF'
        OnClick = lbl_cnpj_cpfClick
      end
      object Label4: TLabel
        Left = 273
        Top = 9
        Width = 97
        Height = 13
        Caption = 'Nome / Raz'#227'o Social'
      end
      object Label5: TLabel
        Left = 516
        Top = 9
        Width = 41
        Height = 13
        Caption = 'Fantasia'
      end
      object edt_id: TwwDBEdit
        Left = 9
        Top = 22
        Width = 52
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
        Left = 156
        Top = 22
        Width = 113
        Height = 19
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
        Left = 273
        Top = 22
        Width = 238
        Height = 19
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
        Left = 65
        Top = 22
        Width = 87
        Height = 19
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
        Left = 516
        Top = 22
        Width = 237
        Height = 19
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
        OnEnter = edt_fantasiaEnter
      end
    end
  end
  object pnl_endereco: TPanel
    Left = 0
    Top = 138
    Width = 980
    Height = 68
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    TabOrder = 1
    object pnl_tit_endereco: TPanel
      Left = 3
      Top = 3
      Width = 974
      Height = 15
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' ENDERE'#199'O'
      Color = 12159842
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object pnl_dados_endereco: TPanel
      Left = 3
      Top = 18
      Width = 974
      Height = 50
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 1
      object Label6: TLabel
        Left = 819
        Top = 9
        Width = 65
        Height = 13
        Caption = 'Complemento'
      end
      object Label7: TLabel
        Left = 100
        Top = 9
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object Label8: TLabel
        Left = 9
        Top = 9
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label9: TLabel
        Left = 507
        Top = 9
        Width = 55
        Height = 13
        Caption = 'Logradouro'
      end
      object Label10: TLabel
        Left = 771
        Top = 9
        Width = 12
        Height = 13
        Caption = 'N'#186
      end
      object Label11: TLabel
        Left = 152
        Top = 9
        Width = 43
        Height = 13
        Caption = 'Munic'#237'pio'
      end
      object lbl_bairro: TLabel
        Left = 329
        Top = 9
        Width = 28
        Height = 13
        Caption = 'Bairro'
        DragCursor = crHandPoint
        OnClick = lbl_bairroClick
      end
      object edt_complemento: TwwDBEdit
        Left = 819
        Top = 22
        Width = 147
        Height = 19
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
        Height = 19
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
        Left = 507
        Top = 22
        Width = 260
        Height = 19
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
        Left = 771
        Top = 22
        Width = 44
        Height = 19
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
        Height = 19
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
        Height = 19
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
      end
      object cmb_bairro: TwwDBLookupCombo
        Left = 329
        Top = 22
        Width = 174
        Height = 19
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'60'#9'BAIRRO'#9'F')
        DataField = 'id_bairro'
        DataSource = dts_endereco
        LookupTable = dtm_dados.qry_bairro
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
  object pnl_contato: TPanel
    Left = 0
    Top = 206
    Width = 980
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
      Width = 392
      Height = 159
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object pnl_tit_telefone: TPanel
        Left = 0
        Top = 0
        Width = 392
        Height = 16
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Caption = ' TELEFONES'
        Color = 12159842
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object grd_tel: TwwDBGrid
        Left = 0
        Top = 16
        Width = 392
        Height = 143
        ControlType.Strings = (
          'descricao;CustomEdit;cmb_desc_tel;F'
          'tipo;CustomEdit;cmb_tipo_tel;F'
          'tem_whatsapp;CheckBox;S;N')
        Selected.Strings = (
          'descricao'#9'23'#9'DESCRI'#199#195'O'
          'tipo'#9'14'#9'TIPO'
          'numero'#9'14'#9'N'#218'MERO'
          'tem_whatsapp'#9'6'#9'WHATS?')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dts_tel
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
      object cmb_tipo_tel: TwwDBComboBox
        Left = 154
        Top = 33
        Width = 90
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tipo'
        DropDownCount = 8
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ItemHeight = 0
        Items.Strings = (
          'Celular'#9'C'
          'Fixo'#9'F')
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
        OnCloseUp = cmb_tipo_telCloseUp
      end
      object cmb_desc_tel: TwwDBComboBox
        Left = 10
        Top = 33
        Width = 145
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tipo'
        DropDownCount = 8
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ItemHeight = 0
        Items.Strings = (
          'Pessoal'#9'Pessoal'
          'Trabalho'#9'Trabalho'
          'Recado'#9'Recado'
          'Residencial'#9'Residencial'
          'Tempor'#225'ro'#9'Tempor'#225'ro')
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
    end
    object Panel1: TPanel
      Left = 395
      Top = 3
      Width = 582
      Height = 159
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 3
      TabOrder = 1
      object Panel2: TPanel
        Left = 3
        Top = 0
        Width = 579
        Height = 16
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Caption = ' E-MAILS'
        Color = 12159842
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
      object grd_email: TwwDBGrid
        Left = 3
        Top = 16
        Width = 579
        Height = 143
        ControlType.Strings = (
          'descricao;CustomEdit;cmb_desc_email;F'
          'tipo;CustomEdit;cmb_tipo_email;F'
          'tem_whatsapp;CheckBox;S;N')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dts_email
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
      object cmb_tipo_email: TwwDBComboBox
        Left = 157
        Top = 32
        Width = 91
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tipo'
        DropDownCount = 8
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ItemHeight = 0
        Items.Strings = (
          'Celular'#9'C'
          'Fixo'#9'F')
        Sorted = False
        TabOrder = 2
        UnboundDataType = wwDefault
      end
      object cmb_desc_email: TwwDBComboBox
        Left = 13
        Top = 32
        Width = 145
        Height = 19
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'tipo'
        DropDownCount = 8
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ItemHeight = 0
        Items.Strings = (
          'Pessoal'#9'Pessoal'
          'Trabalho'#9'Trabalho'
          'Recado'#9'Recado'
          'Residencial'#9'Residencial'
          'Tempor'#225'ro'#9'Tempor'#225'ro')
        Sorted = False
        TabOrder = 3
        UnboundDataType = wwDefault
      end
    end
  end
  object pnl_obs: TPanel
    Left = 0
    Top = 371
    Width = 980
    Height = 175
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
      Width = 974
      Height = 15
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' OBSERVA'#199#213'ES'
      Color = 12159842
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 3
      Top = 18
      Width = 974
      Height = 154
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
        Width = 952
        Height = 132
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object rce_obs: TwwDBRichEdit
          Left = 2
          Top = 2
          Width = 948
          Height = 128
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
            740000007B5C727466315C616E73695C616E7369637067313235325C64656666
            305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C20
            5461686F6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C66
            305C66733136207263655F6F62735C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object toolbar: TToolBar
    Left = 0
    Top = 21
    Width = 980
    Height = 52
    AutoSize = True
    ButtonHeight = 52
    ButtonWidth = 57
    Caption = 'Novo'
    DisabledImages = dtm_images.img_32
    Images = dtm_images.img_32
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 4
    object btn_novo: TToolButton
      Left = 0
      Top = 0
      Caption = 'Novo'
      ImageIndex = 25
      OnClick = btn_novoClick
    end
    object btn_editar: TToolButton
      Left = 57
      Top = 0
      Caption = 'Editar'
      ImageIndex = 7
      OnClick = btn_editarClick
    end
    object btn_excluir: TToolButton
      Left = 114
      Top = 0
      Caption = 'Excluir'
      ImageIndex = 1
      OnClick = btn_excluirClick
    end
    object btn_atualizar: TToolButton
      Left = 171
      Top = 0
      Caption = 'Atualizar'
      ImageIndex = 13
      OnClick = btn_atualizarClick
    end
    object sep_1: TToolButton
      Left = 228
      Top = 0
      Width = 8
      Caption = 'sep_1'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_salvar: TToolButton
      Left = 236
      Top = 0
      Caption = 'Salvar'
      ImageIndex = 32
      OnClick = btn_salvarClick
    end
    object btn_cancelar: TToolButton
      Left = 293
      Top = 0
      Caption = 'Cancelar'
      ImageIndex = 19
      OnClick = btn_cancelarClick
    end
    object sep_2: TToolButton
      Left = 350
      Top = 0
      Width = 8
      Caption = 'sep_2'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_localizar: TToolButton
      Left = 358
      Top = 0
      Caption = 'Localizar'
      ImageIndex = 14
      OnClick = btn_localizarClick
    end
    object btn_primeiro: TToolButton
      Left = 415
      Top = 0
      Caption = 'Primeiro'
      ImageIndex = 96
      OnClick = btn_primeiroClick
    end
    object btn_anterior: TToolButton
      Left = 472
      Top = 0
      Caption = 'Anterior'
      ImageIndex = 97
      OnClick = btn_anteriorClick
    end
    object btn_proximo: TToolButton
      Left = 529
      Top = 0
      Caption = 'Pr'#243'ximo'
      ImageIndex = 98
      OnClick = btn_proximoClick
    end
    object btn_ultimo: TToolButton
      Left = 586
      Top = 0
      Caption = #218'ltimo'
      ImageIndex = 99
      OnClick = btn_ultimoClick
    end
    object ToolButton2: TToolButton
      Left = 643
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_atividades: TToolButton
      Left = 651
      Top = 0
      Caption = 'Atividades'
      ImageIndex = 103
      OnClick = btn_atividadesClick
    end
    object sep_3: TToolButton
      Left = 708
      Top = 0
      Width = 8
      Caption = 'sep_3'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_fechar: TToolButton
      Left = 716
      Top = 0
      Hint = 'Fechar Tela'
      Caption = 'Fechar'
      ImageIndex = 30
      OnClick = btn_fecharClick
    end
  end
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 980
    Height = 21
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = ' CLIENTES'
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
    TabOrder = 5
    OnMouseDown = pnlTituloMouseDown
  end
  object dts_endereco: TDataSource
    DataSet = dse_endereco
    Left = 921
    Top = 178
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
    Left = 921
    Top = 110
  end
  object qry: TUniQuery
    Connection = dtm_dados.mysql_conn
    Left = 790
    Top = 35
  end
  object dse_cliente: TUniQuery
    UpdatingTable = 'pessoa'
    SQLInsert.Strings = (
      'INSERT INTO pessoa'
      
        '  (id, tipo, cpf, cnpj, nome, fantasia, cliente, fornecedor, usu' +
        'ario, obs)'
      'VALUES'
      
        '  (:id, :tipo, :cpf, :cnpj, :nome, :fantasia, :cliente, :fornece' +
        'dor, :usuario, :obs)')
    SQLDelete.Strings = (
      'DELETE FROM pessoa'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE pessoa'
      'SET'
      
        '  id = :id, tipo = :tipo, cpf = :cpf, cnpj = :cnpj, nome = :nome' +
        ', fantasia = :fantasia, cliente = :cliente, fornecedor = :fornec' +
        'edor, usuario = :usuario, obs = :obs'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, tipo, cpf, cnpj, nome, fantasia, cliente, fornecedor,' +
        ' usuario, obs FROM pessoa'
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
    Left = 949
    Top = 110
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
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
    Left = 949
    Top = 178
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
      end>
    object dse_telid: TIntegerField
      FieldName = 'id'
    end
    object dse_teltipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object dse_telnumero: TStringField
      FieldName = 'numero'
      Size = 11
    end
    object dse_teltem_whatsapp: TStringField
      FieldName = 'tem_whatsapp'
      FixedChar = True
      Size = 1
    end
    object dse_telid_pessoa: TIntegerField
      FieldName = 'id_pessoa'
    end
    object dse_teldescricao: TStringField
      FieldName = 'descricao'
      Size = 30
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
      end>
    object dse_emailid: TIntegerField
      FieldName = 'id'
    end
    object dse_emailid_pessoa: TIntegerField
      FieldName = 'id_pessoa'
    end
    object dse_emailtipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object dse_emailendereco: TStringField
      FieldName = 'endereco'
      Size = 120
    end
    object dse_emaildescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
end
