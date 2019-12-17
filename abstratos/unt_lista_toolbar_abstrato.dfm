inherited frm_lista_toolbar_abstrato: Tfrm_lista_toolbar_abstrato
  Caption = 'Lista com Barra de Ferramentas Abstrato'
  ClientHeight = 472
  ClientWidth = 1117
  ExplicitWidth = 1133
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Width = 1117
    ExplicitWidth = 1117
  end
  inherited pnlClient: TPanel
    Width = 1117
    Height = 451
    ExplicitWidth = 1117
    ExplicitHeight = 451
    inherited grd: TwwDBGrid
      Top = 129
      Width = 1115
      Height = 279
      TitleButtons = True
      OnTitleButtonClick = grdTitleButtonClick
      ExplicitTop = 129
      ExplicitWidth = 1115
      ExplicitHeight = 279
    end
    inherited Panel1: TPanel
      Top = 408
      Width = 1115
      ExplicitTop = 408
      ExplicitWidth = 1115
      DesignSize = (
        1115
        41)
      inherited btnOK: TSpeedButton
        Left = 1028
        ExplicitLeft = 1028
      end
      inherited btnCancelar: TSpeedButton
        Left = 1070
        ExplicitLeft = 1070
      end
      inherited Bevel1: TBevel
        Width = 1115
        ExplicitWidth = 1115
      end
    end
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 1115
      Height = 54
      AutoSize = True
      ButtonHeight = 54
      ButtonWidth = 64
      Caption = 'Novo'
      DisabledImages = dtm_images.img_32
      Images = dtm_images.img_32
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 2
      object btnAtualizar: TToolButton
        Left = 0
        Top = 0
        Hint = 'Atualizar Dados'
        Caption = 'Atualizar'
        ImageIndex = 13
        OnClick = btnAtualizarClick
      end
      object btnLocalizar: TToolButton
        Left = 64
        Top = 0
        Hint = 'Localizar Cliente'
        Caption = 'Localizar'
        ImageIndex = 14
      end
      object btnExportar: TToolButton
        Left = 128
        Top = 0
        Hint = 'Exportar para Excel'
        Caption = 'Exportar'
        ImageIndex = 65
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
      object ToolButton2: TToolButton
        Left = 192
        Top = 0
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 31
        Style = tbsSeparator
      end
      object ToolButton1: TToolButton
        Left = 200
        Top = 0
        Caption = 'Associado'
        ImageIndex = 50
        OnClick = ToolButton1Click
      end
      object btnContrato: TToolButton
        Left = 264
        Top = 0
        Hint = 'Abrir Contrato do Cliente'
        Caption = 'Contrato'
        ImageIndex = 2
        OnClick = btnContratoClick
      end
      object btnFinanceiro: TToolButton
        Left = 328
        Top = 0
        Hint = 'Abrir Financeiro do Cliente'
        Caption = 'Financ.'
        ImageIndex = 51
        OnClick = btnFinanceiroClick
      end
      object btnHistorico: TToolButton
        Left = 392
        Top = 0
        Hint = 'Visualizar Hist'#243'rico'
        Caption = 'Hist'#243'rico '
        ImageIndex = 38
        OnClick = btnHistoricoClick
      end
      object sep5: TToolButton
        Left = 456
        Top = 0
        Width = 8
        Caption = 'sep5'
        Enabled = False
        ImageIndex = 33
        Style = tbsSeparator
        Visible = False
      end
      object btnFechar: TToolButton
        Left = 464
        Top = 0
        Hint = 'Fechar Tela'
        Caption = 'Fechar'
        ImageIndex = 30
        OnClick = btnFecharClick
      end
    end
    object pnlFiltros: TPanel
      Left = 0
      Top = 54
      Width = 1115
      Height = 75
      Align = alTop
      BevelOuter = bvNone
      ParentBackground = False
      TabOrder = 3
      Visible = False
      object Bevel2: TBevel
        Left = 0
        Top = 65
        Width = 1115
        Height = 10
        Align = alBottom
        Shape = bsBottomLine
        ExplicitTop = 64
      end
    end
  end
  object popExportar: TPopupMenu
    Left = 136
    Top = 24
    object mnuExportar_Excel: TMenuItem
      Caption = 'Microsoft Excel'
      OnClick = mnuExportar_ExcelClick
    end
    object mnuExportar_CSV: TMenuItem
      Caption = 'Arquivo CSV'
      OnClick = mnuExportar_CSVClick
    end
  end
end
