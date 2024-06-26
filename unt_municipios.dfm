object frm_municipios: Tfrm_municipios
  Left = 0
  Top = 0
  Caption = 'Municipios'
  ClientHeight = 477
  ClientWidth = 852
  Color = clWindow
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 17
  object toolbar: TToolBar
    Left = 0
    Top = 30
    Width = 852
    Height = 64
    AutoSize = True
    ButtonHeight = 64
    ButtonWidth = 58
    Caption = 'Novo'
    DisabledImages = dtm_images.img_40
    Images = dtm_images.img_40
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    object btn_novo: TToolButton
      Left = 0
      Top = 0
      Caption = 'Novo'
      ImageIndex = 2
    end
    object btn_editar: TToolButton
      Left = 58
      Top = 0
      Caption = 'Editar'
      ImageIndex = 4
    end
    object btn_excluir: TToolButton
      Left = 116
      Top = 0
      Caption = 'Excluir'
      ImageIndex = 3
    end
    object btn_atualizar: TToolButton
      Left = 174
      Top = 0
      Caption = 'Atualizar'
      ImageIndex = 17
    end
    object sep_1: TToolButton
      Left = 232
      Top = 0
      Width = 8
      Caption = 'sep_1'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_salvar: TToolButton
      Left = 240
      Top = 0
      Caption = 'Salvar'
      ImageIndex = 5
    end
    object btn_cancelar: TToolButton
      Left = 298
      Top = 0
      Caption = 'Cancelar'
      ImageIndex = 6
    end
    object sep_2: TToolButton
      Left = 356
      Top = 0
      Width = 8
      Caption = 'sep_2'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_localizar: TToolButton
      Left = 364
      Top = 0
      Caption = 'Localizar'
      ImageIndex = 8
    end
    object btn_primeiro: TToolButton
      Left = 422
      Top = 0
      Caption = 'Primeiro'
      ImageIndex = 9
    end
    object btn_anterior: TToolButton
      Left = 480
      Top = 0
      Caption = 'Anterior'
      ImageIndex = 10
    end
    object btn_proximo: TToolButton
      Left = 538
      Top = 0
      Caption = 'Pr'#243'ximo'
      ImageIndex = 11
    end
    object btn_ultimo: TToolButton
      Left = 596
      Top = 0
      Caption = #218'ltimo'
      ImageIndex = 12
    end
    object sep_3: TToolButton
      Left = 654
      Top = 0
      Width = 8
      Caption = 'sep_3'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_fechar: TToolButton
      Left = 662
      Top = 0
      Hint = 'Fechar Tela'
      Caption = 'Fechar'
      ImageIndex = 1
    end
  end
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = ' MUNIC'#205'PIOS'
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
    TabOrder = 1
  end
  object pnlTotal: TPanel
    Left = 0
    Top = 94
    Width = 852
    Height = 74
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 3
    Padding.Right = 3
    TabOrder = 2
    object pnl_tit_geral: TPanel
      Left = 3
      Top = 0
      Width = 846
      Height = 20
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' DADOS DO MUNIC'#205'PIO'
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
      Width = 846
      Height = 54
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 10
        Top = 5
        Width = 12
        Height = 17
        Caption = 'ID'
      end
      object Label2: TLabel
        Left = 65
        Top = 5
        Width = 15
        Height = 17
        Caption = 'UF'
      end
      object Label3: TLabel
        Left = 120
        Top = 5
        Width = 26
        Height = 17
        Caption = 'IBGE'
      end
      object Label4: TLabel
        Left = 195
        Top = 5
        Width = 65
        Height = 17
        Caption = 'MUNIC'#205'PIO'
      end
      object edt_id: TwwDBEdit
        Left = 10
        Top = 22
        Width = 50
        Height = 23
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
        Top = 22
        Width = 70
        Height = 23
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
        Top = 22
        Width = 300
        Height = 23
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
        Top = 22
        Width = 50
        Height = 23
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
    Top = 168
    Width = 852
    Height = 309
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
      Width = 846
      Height = 20
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' BAIRROS'
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
    object grd_detalhe: TwwDBGrid
      Left = 3
      Top = 23
      Width = 846
      Height = 283
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
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
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
