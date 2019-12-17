object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  Caption = 'Ecoplan'
  ClientHeight = 358
  ClientWidth = 734
  Color = clAppWorkSpace
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 734
    Height = 68
    AutoSize = True
    ButtonHeight = 68
    ButtonWidth = 55
    Caption = 'tol_principal'
    Color = clWhite
    DrawingStyle = dsGradient
    Images = dtm_images.img_48
    ParentColor = False
    ShowCaptions = True
    TabOrder = 0
    object btn_cliente: TToolButton
      Left = 0
      Top = 0
      Caption = 'Cliente'
      ImageIndex = 25
    end
    object btn_usuario: TToolButton
      Left = 55
      Top = 0
      Caption = 'Usu'#225'rio'
      ImageIndex = 24
      Style = tbsTextButton
      OnClick = btn_usuarioClick
    end
    object btn_cadastro: TToolButton
      Left = 110
      Top = 0
      Caption = 'Cadastro'
      DropdownMenu = mnu_cadastro
      ImageIndex = 1
    end
    object btn_relatorio: TToolButton
      Left = 165
      Top = 0
      Caption = 'Relat'#243'rio'
      ImageIndex = 12
    end
    object btn_config: TToolButton
      Left = 220
      Top = 0
      Caption = 'Config.'
      ImageIndex = 0
    end
    object ToolButton3: TToolButton
      Left = 275
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 27
      Style = tbsSeparator
    end
    object btn_fechar: TToolButton
      Left = 283
      Top = 0
      Caption = 'Fechar'
      ImageIndex = 30
      OnClick = btn_fecharClick
    end
  end
  object mnu_cadastro: TPopupMenu
    Left = 128
    Top = 72
    object mnu_uf: TMenuItem
      Caption = 'UF'
      OnClick = mnu_ufClick
    end
    object mnu_municipio: TMenuItem
      Caption = 'Municipio'
      OnClick = mnu_municipioClick
    end
  end
end
