inherited frm_tipo_licenca: Tfrm_tipo_licenca
  Caption = 'Tipo de Licen'#231'a'
  ClientWidth = 564
  ExplicitWidth = 580
  ExplicitHeight = 386
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Width = 564
    Caption = ' TIPO DE LICEN'#199'A'
    ExplicitWidth = 564
  end
  inherited pnlClient: TPanel
    Width = 564
    ExplicitWidth = 564
    inherited grd: TwwDBGrid
      Width = 562
      ControlType.Strings = (
        'nome;CustomEdit;edt_nome;F')
      Selected.Strings = (
        'id'#9'6'#9'ID'#9#9
        'nome'#9'60'#9'NOME'#9#9
        'sigla'#9'8'#9'SIGLA'#9#9)
      FixedCols = 1
      ExplicitWidth = 562
    end
    inherited Panel1: TPanel
      Width = 562
      ExplicitWidth = 562
      inherited btnOK: TSpeedButton
        Left = 475
        ExplicitLeft = 475
      end
      inherited btnCancelar: TSpeedButton
        Left = 517
        ExplicitLeft = 517
      end
      inherited Bevel1: TBevel
        Width = 562
        ExplicitWidth = 562
      end
    end
    object edt_nome: TwwDBEdit
      Left = 58
      Top = 18
      Width = 426
      Height = 21
      CharCase = ecUpperCase
      DataField = 'nome'
      DataSource = dts
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  inherited dts: TDataSource
    Left = 425
    Top = 276
  end
  inherited dse: TUniQuery
    Left = 453
    Top = 276
  end
end
