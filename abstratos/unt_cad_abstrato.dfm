object frm_cad_abstrato: Tfrm_cad_abstrato
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadastro Abstrato'
  ClientHeight = 341
  ClientWidth = 990
  Color = clWindow
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  object toolbar: TToolBar
    Left = 0
    Top = 30
    Width = 990
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
    ExplicitWidth = 782
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
    end
    object btn_excluir: TToolButton
      Left = 116
      Top = 0
      Caption = 'Excluir'
      ImageIndex = 3
      OnClick = btn_excluirClick
    end
    object btn_atualizar: TToolButton
      Left = 174
      Top = 0
      Caption = 'Atualizar'
      ImageIndex = 17
      OnClick = btn_atualizarClick
    end
    object btn_salvar: TToolButton
      Left = 232
      Top = 0
      Caption = 'Salvar'
      ImageIndex = 5
      OnClick = btn_salvarClick
    end
    object sep_1: TToolButton
      Left = 290
      Top = 0
      Width = 8
      Caption = 'sep_1'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_cancelar: TToolButton
      Left = 298
      Top = 0
      Caption = 'Cancelar'
      ImageIndex = 6
      OnClick = btn_cancelarClick
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
      OnClick = btn_localizarClick
    end
    object btn_primeiro: TToolButton
      Left = 422
      Top = 0
      Caption = 'Primeiro'
      ImageIndex = 9
      OnClick = btn_primeiroClick
    end
    object btn_anterior: TToolButton
      Left = 480
      Top = 0
      Caption = 'Anterior'
      ImageIndex = 10
      OnClick = btn_anteriorClick
    end
    object btn_proximo: TToolButton
      Left = 538
      Top = 0
      Caption = 'Pr'#243'ximo'
      ImageIndex = 11
      OnClick = btn_proximoClick
    end
    object btn_ultimo: TToolButton
      Left = 596
      Top = 0
      Caption = #218'ltimo'
      ImageIndex = 12
      OnClick = btn_ultimoClick
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
      OnClick = btn_fecharClick
    end
  end
  object pnlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 990
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = ' CADASTRO ABSTRATO'
    Color = 12159842
    Ctl3D = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    OnMouseDown = pnlTituloMouseDown
    ExplicitWidth = 782
  end
  object pnlTotal: TPanel
    Left = 0
    Top = 94
    Width = 990
    Height = 247
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 75
    ExplicitWidth = 782
    ExplicitHeight = 224
    object pnl_tit_geral: TPanel
      Left = 0
      Top = 0
      Width = 990
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
      Width = 990
      Height = 227
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      TabOrder = 1
      ExplicitTop = 18
      ExplicitWidth = 782
      ExplicitHeight = 206
    end
  end
  object dts: TDataSource
    AutoEdit = False
    OnStateChange = dtsStateChange
    Left = 72
    Top = 104
  end
  object qry: TUniQuery
    Connection = dtm_dados.mysql_conn
    Left = 720
    Top = 40
  end
  object dse: TUniQuery
    Connection = dtm_dados.mysql_conn
    Left = 100
    Top = 104
  end
end
