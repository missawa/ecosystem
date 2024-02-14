object frm_orgao_ambiental: Tfrm_orgao_ambiental
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #211'rg'#227'o Ambiental'
  ClientHeight = 265
  ClientWidth = 678
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 2105376
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object toolbar: TToolBar
    Left = 0
    Top = 30
    Width = 678
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
      OnClick = btn_novoClick
    end
    object btn_editar: TToolButton
      Left = 58
      Top = 0
      Caption = 'Editar'
      ImageIndex = 4
      OnClick = btn_editarClick
    end
    object btn_excluir: TToolButton
      Left = 116
      Top = 0
      Caption = 'Excluir'
      ImageIndex = 3
      OnClick = btn_excluirClick
    end
    object sep_1: TToolButton
      Left = 174
      Top = 0
      Width = 8
      Caption = 'sep_1'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_salvar: TToolButton
      Left = 182
      Top = 0
      Caption = 'Salvar'
      ImageIndex = 5
      OnClick = btn_salvarClick
    end
    object btn_cancelar: TToolButton
      Left = 240
      Top = 0
      Caption = 'Cancelar'
      ImageIndex = 6
      OnClick = btn_cancelarClick
    end
    object sep_2: TToolButton
      Left = 298
      Top = 0
      Width = 8
      Caption = 'sep_2'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_localizar: TToolButton
      Left = 306
      Top = 0
      Caption = 'Localizar'
      ImageIndex = 8
      OnClick = btn_localizarClick
    end
    object btn_primeiro: TToolButton
      Left = 364
      Top = 0
      Caption = 'Primeiro'
      ImageIndex = 9
      OnClick = btn_primeiroClick
    end
    object btn_anterior: TToolButton
      Left = 422
      Top = 0
      Caption = 'Anterior'
      ImageIndex = 10
      OnClick = btn_anteriorClick
    end
    object btn_proximo: TToolButton
      Left = 480
      Top = 0
      Caption = 'Pr'#243'ximo'
      ImageIndex = 11
      OnClick = btn_proximoClick
    end
    object btn_ultimo: TToolButton
      Left = 538
      Top = 0
      Caption = #218'ltimo'
      ImageIndex = 12
    end
    object sep_3: TToolButton
      Left = 596
      Top = 0
      Width = 8
      Caption = 'sep_3'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_fechar: TToolButton
      Left = 604
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
    Width = 678
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = ' '#211'RG'#195'OS AMBIENTAIS'
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
    OnMouseDown = pnlTituloMouseDown
  end
  object pnlTotal: TPanel
    Left = 0
    Top = 94
    Width = 678
    Height = 152
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object pnl_tit_geral: TPanel
      Left = 0
      Top = 0
      Width = 678
      Height = 20
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' GERAL'
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
      Left = 0
      Top = 20
      Width = 678
      Height = 132
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 10
        Top = 10
        Width = 12
        Height = 17
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2105376
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 65
        Top = 10
        Width = 36
        Height = 17
        Caption = 'Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2105376
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 545
        Top = 10
        Width = 28
        Height = 17
        Caption = 'Sigla'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2105376
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 600
        Top = 10
        Width = 15
        Height = 17
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2105376
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edt_id: TwwDBEdit
        Left = 10
        Top = 27
        Width = 50
        Height = 23
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
      object edt_nome: TwwDBEdit
        Left = 65
        Top = 27
        Width = 475
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'nome'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_sigla: TwwDBEdit
        Left = 545
        Top = 27
        Width = 50
        Height = 23
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'sigla'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object cmb_uf: TwwDBLookupCombo
        Left = 600
        Top = 27
        Width = 55
        Height = 23
        CharCase = ecUpperCase
        BorderStyle = bsNone
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'sigla'#9'2'#9'UF'#9'F')
        DataField = 'id_uf'
        DataSource = dts
        LookupTable = dtm_dados.qry_uf
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 246
    Width = 678
    Height = 19
    Panels = <>
  end
  object dts: TDataSource
    AutoEdit = False
    DataSet = dse
    Left = 352
    Top = 98
  end
  object qry: TUniQuery
    Connection = dtm_dados.mysql_conn
    Left = 270
    Top = 100
  end
  object dse: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO orgao_ambiental'
      '  (id, nome, sigla, id_uf)'
      'VALUES'
      '  (:id, :nome, :sigla, :id_uf)')
    SQLDelete.Strings = (
      'DELETE FROM orgao_ambiental'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE orgao_ambiental'
      'SET'
      '  id = :id, nome = :nome, sigla = :sigla, id_uf = :id_uf'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id, nome, sigla, id_uf FROM orgao_ambiental'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM orgao_ambiental'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select *'
      'from orgao_ambiental')
    AfterPost = dseAfterPost
    Left = 380
    Top = 98
  end
end
