object frm_cliente_atividade: Tfrm_cliente_atividade
  Left = 0
  Top = 0
  Caption = 'frm_cliente_atividade'
  ClientHeight = 372
  ClientWidth = 879
  Color = clWindow
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 879
    Height = 21
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = ' ATIVIDADES DO CLIENTE'
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
    OnMouseDown = pnlTituloMouseDown
  end
  object toolbar: TToolBar
    Left = 0
    Top = 21
    Width = 879
    Height = 52
    AutoSize = True
    ButtonHeight = 52
    ButtonWidth = 49
    Caption = 'Novo'
    DisabledImages = dtm_images.img_32
    Images = dtm_images.img_32
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    object btn_novo: TToolButton
      Left = 0
      Top = 0
      Caption = 'Novo'
      ImageIndex = 25
    end
    object btn_editar: TToolButton
      Left = 49
      Top = 0
      Caption = 'Editar'
      ImageIndex = 7
    end
    object btn_excluir: TToolButton
      Left = 98
      Top = 0
      Caption = 'Excluir'
      ImageIndex = 1
    end
    object btn_atualizar: TToolButton
      Left = 147
      Top = 0
      Caption = 'Atualizar'
      ImageIndex = 13
    end
    object sep_1: TToolButton
      Left = 196
      Top = 0
      Width = 8
      Caption = 'sep_1'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_salvar: TToolButton
      Left = 204
      Top = 0
      Caption = 'Salvar'
      ImageIndex = 32
    end
    object btn_cancelar: TToolButton
      Left = 253
      Top = 0
      Caption = 'Cancelar'
      ImageIndex = 19
    end
    object sep_2: TToolButton
      Left = 302
      Top = 0
      Width = 8
      Caption = 'sep_2'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_localizar: TToolButton
      Left = 310
      Top = 0
      Caption = 'Localizar'
      ImageIndex = 14
    end
    object btn_primeiro: TToolButton
      Left = 359
      Top = 0
      Caption = 'Primeiro'
      ImageIndex = 96
    end
    object btn_anterior: TToolButton
      Left = 408
      Top = 0
      Caption = 'Anterior'
      ImageIndex = 97
    end
    object btn_proximo: TToolButton
      Left = 457
      Top = 0
      Caption = 'Pr'#243'ximo'
      ImageIndex = 98
    end
    object btn_ultimo: TToolButton
      Left = 506
      Top = 0
      Caption = #218'ltimo'
      ImageIndex = 99
    end
    object sep_4: TToolButton
      Left = 555
      Top = 0
      Width = 8
      Caption = 'sep_4'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_licencas: TToolButton
      Left = 563
      Top = 0
      Caption = 'Licen'#231'as'
      ImageIndex = 43
      OnClick = btn_licencasClick
    end
    object sep_3: TToolButton
      Left = 612
      Top = 0
      Width = 8
      Caption = 'sep_3'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_fechar: TToolButton
      Left = 620
      Top = 0
      Hint = 'Fechar Tela'
      Caption = 'Fechar'
      ImageIndex = 30
      OnClick = btn_fecharClick
    end
  end
  object pnlTotal: TPanel
    Left = 0
    Top = 73
    Width = 879
    Height = 70
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 3
    Padding.Right = 3
    TabOrder = 2
    object pnl_tit_geral: TPanel
      Left = 3
      Top = 0
      Width = 873
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' CLIENTE'
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
      Width = 873
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
      object edt_id: TwwDBEdit
        Left = 10
        Top = 25
        Width = 60
        Height = 19
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
        Height = 19
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
        Height = 19
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
        Height = 19
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
  object Panel1: TPanel
    Left = 0
    Top = 143
    Width = 879
    Height = 229
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 3
    object pnl_tit_detalhe: TPanel
      Left = 3
      Top = 3
      Width = 873
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' ATIVIDADES'
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
      Top = 21
      Width = 873
      Height = 205
      ControlType.Strings = (
        'id_atividade;CustomEdit;cmb_atividade;F')
      Selected.Strings = (
        'id_atividade'#9'105'#9'ATIVIDADE'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dts_detalhe
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
    object cmb_atividade: TwwDBComboBox
      Left = 13
      Top = 41
      Width = 743
      Height = 19
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DataField = 'id_atividade'
      DataSource = dts_detalhe
      DropDownCount = 8
      ItemHeight = 0
      ItemIndex = 0
      Sorted = False
      TabOrder = 2
      UnboundDataType = wwDefault
    end
  end
  object qry: TUniQuery
    Connection = dtm_dados.mysql_conn
    Left = 788
    Top = 47
  end
  object dts: TDataSource
    AutoEdit = False
    DataSet = dse
    Left = 704
    Top = 104
  end
  object dse: TUniQuery
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select *'
      'from pessoa'
      'where id = :key_field'
      '  and cliente = '#39'S'#39)
    ReadOnly = True
    AfterOpen = dseAfterOpen
    AfterScroll = dseAfterScroll
    Left = 732
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'key_field'
        ParamType = ptInput
      end>
    object dseid: TIntegerField
      FieldName = 'id'
    end
    object dsetipo: TStringField
      FieldName = 'tipo'
      FixedChar = True
      Size = 1
    end
    object dsecpf: TStringField
      FieldName = 'cpf'
      Size = 11
    end
    object dsecnpj: TStringField
      FieldName = 'cnpj'
      Size = 14
    end
    object dsenome: TStringField
      FieldName = 'nome'
      Size = 120
    end
    object dsefantasia: TStringField
      FieldName = 'fantasia'
      Size = 100
    end
    object dsecliente: TStringField
      FieldName = 'cliente'
      FixedChar = True
      Size = 1
    end
    object dsefornecedor: TStringField
      FieldName = 'fornecedor'
      FixedChar = True
      Size = 1
    end
    object dseusuario: TStringField
      FieldName = 'usuario'
      FixedChar = True
      Size = 1
    end
    object dseobs: TMemoField
      FieldName = 'obs'
      BlobType = ftMemo
    end
  end
  object dts_detalhe: TDataSource
    DataSet = dse_detalhe
    Left = 698
    Top = 208
  end
  object dse_detalhe: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO cliente_atividade'
      '  (id, id_cliente, id_atividade)'
      'VALUES'
      '  (:id, :id_cliente, :id_atividade)')
    SQLDelete.Strings = (
      'DELETE FROM cliente_atividade'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE cliente_atividade'
      'SET'
      
        '  id = :id, id_cliente = :id_cliente, id_atividade = :id_ativida' +
        'de'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, id_cliente, id_atividade FROM cliente_atividade'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM cliente_atividade'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select *'
      'from cliente_atividade'
      'where id_cliente = :id')
    MasterSource = dts
    Options.StrictUpdate = False
    AfterOpen = dse_detalheAfterOpen
    OnNewRecord = dse_detalheNewRecord
    Left = 726
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
      end>
  end
end
