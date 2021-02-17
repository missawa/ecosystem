object frm_orgao_ambiental: Tfrm_orgao_ambiental
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #211'rg'#227'o Ambiental'
  ClientHeight = 183
  ClientWidth = 613
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
    Width = 613
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
      OnClick = btn_excluirClick
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
      OnClick = btn_salvarClick
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
    Width = 613
    Height = 21
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = ' '#211'RG'#195'OS AMBIENTAIS'
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
    ExplicitWidth = 838
  end
  object pnlTotal: TPanel
    Left = 0
    Top = 73
    Width = 613
    Height = 91
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 75
    ExplicitWidth = 838
    ExplicitHeight = 85
    object pnl_tit_geral: TPanel
      Left = 0
      Top = 0
      Width = 613
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' GERAL'
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
      ExplicitLeft = 3
      ExplicitWidth = 832
    end
    object pnl_geral: TPanel
      Left = 0
      Top = 18
      Width = 613
      Height = 73
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 3
      ExplicitWidth = 642
      ExplicitHeight = 196
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
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object Label3: TLabel
        Left = 445
        Top = 10
        Width = 22
        Height = 13
        Caption = 'Sigla'
      end
      object Label7: TLabel
        Left = 500
        Top = 10
        Width = 13
        Height = 13
        Caption = 'UF'
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
        Top = 25
        Width = 375
        Height = 19
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
        Left = 445
        Top = 25
        Width = 50
        Height = 19
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
        Left = 500
        Top = 25
        Width = 55
        Height = 19
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
    Top = 164
    Width = 613
    Height = 19
    Panels = <>
    ExplicitLeft = 315
    ExplicitTop = 120
    ExplicitWidth = 0
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
