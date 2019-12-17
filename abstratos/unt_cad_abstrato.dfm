object frm_cad_abstrato: Tfrm_cad_abstrato
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Cadastro Abstrato'
  ClientHeight = 299
  ClientWidth = 782
  Color = clWindow
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object toolbar: TToolBar
    Left = 0
    Top = 21
    Width = 782
    Height = 54
    AutoSize = True
    ButtonHeight = 54
    ButtonWidth = 57
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
    object ToolButton2: TToolButton
      Left = 228
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
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
    object ToolButton3: TToolButton
      Left = 350
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
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
    object ToolButton1: TToolButton
      Left = 643
      Top = 0
      Width = 8
      Caption = 'ToolButton1'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_fechar: TToolButton
      Left = 651
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
    Width = 782
    Height = 21
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = ' CADASTRO ABSTRATO'
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
  end
  object pnlTotal: TPanel
    Left = 0
    Top = 75
    Width = 782
    Height = 224
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object pnl_tit_geral: TPanel
      Left = 0
      Top = 0
      Width = 782
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
    end
    object pnl_geral: TPanel
      Left = 0
      Top = 18
      Width = 782
      Height = 206
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      TabOrder = 1
    end
  end
  object dts: TDataSource
    OnStateChange = dtsStateChange
    Left = 72
    Top = 104
  end
  object dse: TADODataSet
    Connection = dtm_dados.con_mysql
    Parameters = <>
    Left = 100
    Top = 104
  end
  object qry: TADOQuery
    Connection = dtm_dados.con_mysql
    Parameters = <>
    Left = 728
    Top = 32
  end
end
