inherited frm_tipo_licenca: Tfrm_tipo_licenca
  Caption = 'Tipo de Licen'#231'a'
  ClientWidth = 564
  ExplicitWidth = 580
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Width = 564
    Caption = ' TIPO DE LICEN'#199'A'
  end
  inherited pnlClient: TPanel
    Width = 564
    inherited grd: TwwDBGrid
      Width = 562
      ControlType.Strings = (
        'nome;CustomEdit;edt_nome;F')
      Selected.Strings = (
        'id'#9'6'#9'ID'#9#9
        'nome'#9'60'#9'NOME'#9#9
        'sigla'#9'8'#9'SIGLA'#9#9)
      FixedCols = 1
      ExplicitWidth = 533
    end
    inherited Panel1: TPanel
      Width = 562
      inherited btnOK: TSpeedButton
        Left = 475
      end
      inherited btnCancelar: TSpeedButton
        Left = 517
      end
      inherited Bevel1: TBevel
        Width = 562
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
  inherited dse: TADODataSet
    Active = True
    CursorType = ctStatic
    CommandText = 'select *'#13#10'from tipo_licenca'#13#10'order by nome'
  end
end
