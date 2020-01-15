inherited frm_cliente: Tfrm_cliente
  Caption = 'Clientes'
  ClientHeight = 630
  ClientWidth = 1131
  OnShow = FormShow
  ExplicitLeft = -386
  ExplicitWidth = 1147
  ExplicitHeight = 669
  PixelsPerInch = 96
  TextHeight = 15
  inherited toolbar: TToolBar
    Width = 1131
    ButtonWidth = 64
    TabOrder = 3
    ExplicitWidth = 1131
    inherited btn_novo: TToolButton
      ExplicitWidth = 64
    end
    inherited btn_editar: TToolButton
      Left = 64
      ExplicitLeft = 64
      ExplicitWidth = 64
    end
    inherited btn_excluir: TToolButton
      Left = 128
      ExplicitLeft = 128
      ExplicitWidth = 64
    end
    inherited btn_atualizar: TToolButton
      Left = 192
      ExplicitLeft = 192
      ExplicitWidth = 64
    end
    inherited sep_1: TToolButton
      Left = 256
      ExplicitLeft = 256
    end
    inherited btn_salvar: TToolButton
      Left = 264
      ExplicitLeft = 264
      ExplicitWidth = 64
    end
    inherited btn_cancelar: TToolButton
      Left = 328
      ExplicitLeft = 328
      ExplicitWidth = 64
    end
    inherited sep_2: TToolButton
      Left = 392
      ExplicitLeft = 392
    end
    inherited btn_localizar: TToolButton
      Left = 400
      ExplicitLeft = 400
      ExplicitWidth = 64
    end
    inherited btn_primeiro: TToolButton
      Left = 464
      ExplicitLeft = 464
      ExplicitWidth = 64
    end
    inherited btn_anterior: TToolButton
      Left = 528
      ExplicitLeft = 528
      ExplicitWidth = 64
    end
    inherited btn_proximo: TToolButton
      Left = 592
      ExplicitLeft = 592
      ExplicitWidth = 64
    end
    inherited btn_ultimo: TToolButton
      Left = 656
      ExplicitLeft = 656
      ExplicitWidth = 64
    end
    inherited sep_3: TToolButton
      Left = 720
      ExplicitLeft = 720
    end
    inherited btn_fechar: TToolButton
      Left = 728
      ExplicitLeft = 728
      ExplicitWidth = 64
    end
    object btn_atividades: TToolButton
      Left = 792
      Top = 0
      Caption = 'Atividades'
      ImageIndex = 103
      OnClick = btn_atividadesClick
    end
    object sep_4: TToolButton
      Left = 856
      Top = 0
      Width = 8
      Caption = 'sep_4'
      ImageIndex = 31
      Style = tbsSeparator
    end
  end
  inherited pnlTitulo: TPanel
    Width = 1131
    Caption = ' CLIENTES'
    TabOrder = 4
    ExplicitWidth = 1131
  end
  inherited pnlTotal: TPanel
    Width = 1131
    Height = 75
    Align = alTop
    Padding.Left = 3
    Padding.Right = 3
    TabOrder = 0
    ExplicitWidth = 1131
    ExplicitHeight = 75
    inherited pnl_tit_geral: TPanel
      Left = 3
      Width = 1125
      Caption = ' DADOS GERAIS'
      ExplicitLeft = 3
      ExplicitWidth = 1125
    end
    inherited pnl_geral: TPanel
      Left = 3
      Width = 1125
      Height = 57
      ExplicitLeft = 3
      ExplicitWidth = 1125
      ExplicitHeight = 57
      object Label1: TLabel
        Left = 10
        Top = 10
        Width = 12
        Height = 15
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 75
        Top = 10
        Width = 24
        Height = 15
        Caption = 'Tipo'
      end
      object lbl_cnpj_cpf: TLabel
        Left = 180
        Top = 10
        Width = 65
        Height = 15
        Caption = 'CNPJ ou CPF'
      end
      object Label4: TLabel
        Left = 315
        Top = 10
        Width = 112
        Height = 15
        Caption = 'Nome / Raz'#227'o Social'
      end
      object Label5: TLabel
        Left = 595
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
        Left = 180
        Top = 25
        Width = 130
        Height = 21
        BorderStyle = bsNone
        DataField = 'cnpj'
        DataSource = dts
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
        Left = 315
        Top = 25
        Width = 275
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'nome'
        DataSource = dts
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
        Left = 75
        Top = 25
        Width = 100
        Height = 21
        ShowButton = True
        Style = csDropDown
        MapList = True
        AllowClearKey = False
        BorderStyle = bsNone
        DataField = 'tipo'
        DataSource = dts
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
        Left = 595
        Top = 25
        Width = 274
        Height = 21
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fantasia'
        DataSource = dts
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
  object pnl_endereco: TPanel [3]
    Left = 0
    Top = 150
    Width = 1131
    Height = 78
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    TabOrder = 1
    object pnl_tit_endereco: TPanel
      Left = 3
      Top = 3
      Width = 1125
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' ENDERE'#199'O'
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
    object Panel3: TPanel
      Left = 3
      Top = 21
      Width = 1125
      Height = 57
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      TabOrder = 1
      object Label6: TLabel
        Left = 945
        Top = 10
        Width = 75
        Height = 15
        Caption = 'Complemento'
      end
      object Label7: TLabel
        Left = 115
        Top = 10
        Width = 14
        Height = 15
        Caption = 'UF'
      end
      object Label8: TLabel
        Left = 10
        Top = 10
        Width = 20
        Height = 15
        Caption = 'CEP'
      end
      object Label9: TLabel
        Left = 585
        Top = 10
        Width = 63
        Height = 15
        Caption = 'Logradouro'
      end
      object Label10: TLabel
        Left = 890
        Top = 10
        Width = 13
        Height = 15
        Caption = 'N'#186
      end
      object Label11: TLabel
        Left = 175
        Top = 10
        Width = 56
        Height = 15
        Caption = 'Munic'#237'pio'
      end
      object Label12: TLabel
        Left = 380
        Top = 10
        Width = 35
        Height = 15
        Caption = 'Bairro'
      end
      object edt_complemento: TwwDBEdit
        Left = 945
        Top = 25
        Width = 170
        Height = 21
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
        Left = 10
        Top = 25
        Width = 100
        Height = 21
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
        Left = 585
        Top = 25
        Width = 300
        Height = 21
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
        Left = 890
        Top = 25
        Width = 50
        Height = 21
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
        Left = 115
        Top = 25
        Width = 55
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'sigla'#9'2'#9'UF'#9'F')
        DataField = 'id_uf'
        DataSource = dts_endereco
        LookupTable = qry_uf
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
        Left = 175
        Top = 25
        Width = 200
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'60'#9'MUNIC'#205'PIO'#9'F')
        DataField = 'id_municipio'
        DataSource = dts_endereco
        LookupTable = qry_municipio
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
        Left = 380
        Top = 25
        Width = 200
        Height = 21
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'nome'#9'60'#9'BAIRRO'#9'F')
        DataField = 'id_bairro'
        DataSource = dts_endereco
        LookupTable = qry_bairro
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
  object pnl_contato: TPanel [4]
    Left = 0
    Top = 228
    Width = 1131
    Height = 191
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
      Width = 453
      Height = 185
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object pnl_tit_telefone: TPanel
        Left = 0
        Top = 0
        Width = 453
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Caption = ' TELEFONES'
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
      object grd_tel: TwwDBGrid
        Left = 0
        Top = 18
        Width = 453
        Height = 167
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
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object cmb_tipo_tel: TwwDBComboBox
        Left = 178
        Top = 38
        Width = 104
        Height = 21
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
        Left = 12
        Top = 38
        Width = 167
        Height = 21
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
      Left = 456
      Top = 3
      Width = 672
      Height = 185
      Align = alClient
      BevelOuter = bvNone
      Padding.Left = 3
      TabOrder = 1
      object Panel2: TPanel
        Left = 3
        Top = 0
        Width = 669
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Caption = ' E-MAILS'
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
      object grd_email: TwwDBGrid
        Left = 3
        Top = 18
        Width = 669
        Height = 167
        ControlType.Strings = (
          'descricao;CustomEdit;cmb_desc_email;F'
          'tipo;CustomEdit;cmb_tipo_email;F'
          'tem_whatsapp;CheckBox;S;N')
        Selected.Strings = (
          'descricao'#9'23'#9'DESCRI'#199#195'O'
          'tipo'#9'14'#9'TIPO'
          'endereco'#9'52'#9'E-MAIL')
        IniAttributes.Delimiter = ';;'
        TitleColor = clBtnFace
        FixedCols = 0
        ShowHorzScrollBar = True
        Align = alClient
        DataSource = dts_email
        TabOrder = 1
        TitleAlignment = taLeftJustify
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
        TitleLines = 1
        TitleButtons = False
      end
      object cmb_tipo_email: TwwDBComboBox
        Left = 181
        Top = 37
        Width = 105
        Height = 21
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
        Left = 15
        Top = 37
        Width = 167
        Height = 21
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
  object pnl_obs: TPanel [5]
    Left = 0
    Top = 419
    Width = 1131
    Height = 211
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 5
    object pnl_tit_obs: TPanel
      Left = 3
      Top = 3
      Width = 1125
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' OBSERVA'#199#213'ES'
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
      Left = 3
      Top = 21
      Width = 1125
      Height = 187
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Padding.Left = 10
      Padding.Top = 10
      Padding.Right = 10
      Padding.Bottom = 10
      ParentBackground = False
      TabOrder = 1
      object Panel5: TPanel
        Left = 10
        Top = 10
        Width = 1103
        Height = 165
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object rce_obs: TwwDBRichEdit
          Left = 2
          Top = 2
          Width = 1099
          Height = 161
          Align = alClient
          AutoURLDetect = False
          BorderStyle = bsNone
          DataField = 'obs'
          DataSource = dts
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
            7F0000007B5C727466315C616E73695C616E7369637067313235325C64656666
            305C6465666C616E67313034367B5C666F6E7474626C7B5C66305C666E696C5C
            6663686172736574302043616C696272693B7D7D0D0A5C766965776B696E6434
            5C7563315C706172645C66305C66733230207263655F6F62735C7061720D0A7D
            0D0A00}
        end
      end
    end
  end
  inherited dts: TDataSource
    Left = 887
    Top = 110
  end
  inherited dse: TADODataSet
    CursorType = ctStatic
    AfterOpen = dseAfterOpen
    AfterClose = dseAfterClose
    AfterPost = dseAfterPost
    AfterCancel = dseAfterCancel
    AfterScroll = dseAfterScroll
    CommandText = 'select * '#13#10'from cliente '#13#10'where id = :key_field'
    Parameters = <
      item
        Name = 'key_field'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    Left = 915
    Top = 110
  end
  inherited qry: TADOQuery
    Left = 968
  end
  object qry_uf: TADOQuery
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    AfterScroll = qry_ufAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select id, sigla'
      'from uf'
      'order by sigla')
    Left = 133
    Top = 177
  end
  object qry_municipio: TADOQuery
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    BeforeOpen = qry_municipioBeforeOpen
    AfterScroll = qry_municipioAfterScroll
    Parameters = <
      item
        Name = 'id_uf'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'select id, nome'
      'from municipio'
      'where id_uf = :id_uf'
      'order by nome')
    Left = 238
    Top = 182
  end
  object qry_bairro: TADOQuery
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    BeforeOpen = qry_bairroBeforeOpen
    Parameters = <
      item
        Name = 'id_municipio'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'select * '
      'from bairro '
      'where id_municipio = :id_municipio')
    Left = 418
    Top = 182
  end
  object dts_uf: TDataSource
    DataSet = qry_uf
    Left = 145
    Top = 175
  end
  object dts_municipio: TDataSource
    DataSet = qry_municipio
    Left = 250
    Top = 180
  end
  object dts_bairro: TDataSource
    DataSet = qry_bairro
    Left = 430
    Top = 185
  end
  object dts_endereco: TDataSource
    DataSet = dse_endereco
    Left = 1085
    Top = 180
  end
  object dse_endereco: TADODataSet
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    BeforeOpen = dse_enderecoBeforeOpen
    OnNewRecord = dse_enderecoNewRecord
    CommandText = 'select * '#13#10'from endereco '#13#10'where id_pessoa = :id_pessoa'
    MasterFields = 'id'
    Parameters = <
      item
        Name = 'id_pessoa'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    Left = 1070
    Top = 180
  end
  object dts_tel: TDataSource
    DataSet = dse_tel
    Left = 330
    Top = 300
  end
  object dse_tel: TADODataSet
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    BeforeOpen = dse_telBeforeOpen
    AfterScroll = dse_telAfterScroll
    OnNewRecord = dse_telNewRecord
    CommandText = 
      'select *'#13#10'from telefone '#13#10'where id_pessoa = :id_pessoa'#13#10'order by' +
      ' descricao'
    Parameters = <
      item
        Name = 'id_pessoa'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    Left = 360
    Top = 300
  end
  object dts_email: TDataSource
    DataSet = dse_email
    Left = 530
    Top = 300
  end
  object dse_email: TADODataSet
    Connection = dtm_dados.con_mysql
    CursorType = ctStatic
    BeforeOpen = dse_emailBeforeOpen
    CommandText = 'select *'#13#10'from email'#13#10'where id_pessoa = :id_pessoa'
    Parameters = <
      item
        Name = 'id_pessoa'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    Left = 558
    Top = 300
  end
end
