inherited frm_cad_abstrato_mestre_detalhe: Tfrm_cad_abstrato_mestre_detalhe
  Caption = 'Cadastro Abstrato Mestre / Detalhe'
  ClientHeight = 403
  ExplicitHeight = 442
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Caption = ' CADASTRO ABSTRATO MESTRE / DETALHE'
  end
  inherited pnlTotal: TPanel
    Height = 78
    Align = alTop
    ExplicitHeight = 78
    inherited pnl_geral: TPanel
      Height = 60
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 153
    Width = 782
    Height = 250
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Top = 3
    ParentBackground = False
    TabOrder = 3
    ExplicitTop = 155
    ExplicitHeight = 199
    object pnl_tit_detalhe: TPanel
      Left = 0
      Top = 3
      Width = 782
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' DETALHE'
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
      Left = 0
      Top = 21
      Width = 782
      Height = 229
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
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      ExplicitHeight = 178
    end
  end
  inherited dts: TDataSource
    Left = 704
  end
  inherited dse: TADODataSet
    AfterScroll = dseAfterScroll
    Left = 732
  end
  object dse_detalhe: TADODataSet
    Connection = dtm_dados.con_mysql
    Parameters = <>
    Left = 732
    Top = 184
  end
  object dts_detalhe: TDataSource
    DataSet = dse_detalhe
    Left = 704
    Top = 184
  end
end
