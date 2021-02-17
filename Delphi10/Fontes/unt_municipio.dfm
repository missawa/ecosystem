object frm_municipio: Tfrm_municipio
  Left = 0
  Top = 0
  Caption = 'Munic'#237'pio'
  ClientHeight = 397
  ClientWidth = 645
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
  PixelsPerInch = 96
  TextHeight = 13
  object toolbar: TToolBar
    Left = 0
    Top = 21
    Width = 645
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
    TabOrder = 0
    ExplicitWidth = 826
    object btn_novo: TToolButton
      Left = 0
      Top = 0
      Caption = 'Novo'
      ImageIndex = 25
      OnClick = btn_novoClick
    end
    object btn_editar: TToolButton
      Left = 49
      Top = 0
      Caption = 'Editar'
      ImageIndex = 7
      OnClick = btn_editarClick
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
      OnClick = btn_atualizarClick
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
      OnClick = btn_cancelarClick
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
      OnClick = btn_localizarClick
    end
    object btn_primeiro: TToolButton
      Left = 359
      Top = 0
      Caption = 'Primeiro'
      ImageIndex = 96
      OnClick = btn_primeiroClick
    end
    object btn_anterior: TToolButton
      Left = 408
      Top = 0
      Caption = 'Anterior'
      ImageIndex = 97
      OnClick = btn_anteriorClick
    end
    object btn_proximo: TToolButton
      Left = 457
      Top = 0
      Caption = 'Pr'#243'ximo'
      ImageIndex = 98
      OnClick = btn_proximoClick
    end
    object btn_ultimo: TToolButton
      Left = 506
      Top = 0
      Caption = #218'ltimo'
      ImageIndex = 99
      OnClick = btn_ultimoClick
    end
    object sep_3: TToolButton
      Left = 555
      Top = 0
      Width = 8
      Caption = 'sep_3'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_fechar: TToolButton
      Left = 563
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
    Width = 645
    Height = 21
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = ' MUNIC'#205'PIOS'
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
    TabOrder = 1
    OnMouseDown = pnlTituloMouseDown
    ExplicitWidth = 826
  end
  object pnlTotal: TPanel
    Left = 0
    Top = 73
    Width = 645
    Height = 78
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 3
    Padding.Right = 3
    TabOrder = 2
    ExplicitWidth = 826
    object pnl_tit_geral: TPanel
      Left = 3
      Top = 0
      Width = 639
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' DADOS DO MUNIC'#205'PIO'
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
      ExplicitWidth = 820
    end
    object pnl_geral: TPanel
      Left = 3
      Top = 18
      Width = 639
      Height = 60
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      TabOrder = 1
      ExplicitWidth = 820
      object Label1: TLabel
        Left = 10
        Top = 10
        Width = 11
        Height = 13
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 65
        Top = 10
        Width = 13
        Height = 13
        Caption = 'UF'
      end
      object Label3: TLabel
        Left = 120
        Top = 10
        Width = 23
        Height = 13
        Caption = 'IBGE'
      end
      object Label4: TLabel
        Left = 195
        Top = 10
        Width = 55
        Height = 13
        Caption = 'MUNIC'#205'PIO'
      end
      object edt_id: TwwDBEdit
        Left = 10
        Top = 25
        Width = 50
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'id'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_ibge: TwwDBEdit
        Left = 120
        Top = 25
        Width = 70
        Height = 19
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'ibge'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_municipio: TwwDBEdit
        Left = 195
        Top = 25
        Width = 300
        Height = 19
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'nome'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object wwDBLookupCombo1: TwwDBLookupCombo
        Left = 65
        Top = 25
        Width = 50
        Height = 19
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'sigla'#9'2'#9'UF'#9'F')
        DataField = 'id_uf'
        DataSource = dts
        LookupTable = dtm_dados.qry_uf
        LookupField = 'id'
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 151
    Width = 645
    Height = 246
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 3
    ExplicitWidth = 826
    object pnl_tit_detalhe: TPanel
      Left = 3
      Top = 3
      Width = 639
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' BAIRROS'
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
      ExplicitWidth = 820
    end
    object grd_detalhe: TwwDBGrid
      Left = 3
      Top = 21
      Width = 639
      Height = 222
      Selected.Strings = (
        'nome'#9'100'#9'BAIRRO')
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
      ExplicitWidth = 820
    end
  end
  object dts: TDataSource
    AutoEdit = False
    DataSet = dse
    Left = 551
    Top = 104
  end
  object qry: TUniQuery
    Connection = dtm_dados.mysql_conn
    Left = 512
    Top = 105
  end
  object dse: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO municipio'
      '  (id, id_uf, ibge, nome)'
      'VALUES'
      '  (:id, :id_uf, :ibge, :nome)')
    SQLDelete.Strings = (
      'DELETE FROM municipio'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE municipio'
      'SET'
      '  id = :id, id_uf = :id_uf, ibge = :ibge, nome = :nome'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, id_uf, ibge, nome FROM municipio'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM municipio'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select *'
      'from municipio')
    Left = 579
    Top = 104
  end
  object dts_detalhe: TDataSource
    DataSet = dse_detalhe
    Left = 551
    Top = 184
  end
  object dse_detalhe: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO bairro'
      '  (id, id_municipio, nome)'
      'VALUES'
      '  (:id, :id_municipio, :nome)')
    SQLDelete.Strings = (
      'DELETE FROM bairro'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE bairro'
      'SET'
      '  id = :id, id_municipio = :id_municipio, nome = :nome'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, id_municipio, nome FROM bairro'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM bairro'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select * '
      'from bairro '
      'where id_municipio = :id')
    MasterSource = dts
    OnNewRecord = dse_detalheNewRecord
    Left = 579
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = Null
      end>
  end
end
