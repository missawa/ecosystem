object frm_progresso: Tfrm_progresso
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Progresso'
  ClientHeight = 78
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblContagem: TLabel
    Left = 16
    Top = 13
    Width = 58
    Height = 16
    Caption = 'Contagem'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 15
    Top = 34
    Width = 386
    Height = 25
    TabOrder = 0
  end
end
