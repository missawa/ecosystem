inherited frm_atividade: Tfrm_atividade
  Caption = 'Atividades'
  ClientWidth = 902
  ExplicitWidth = 918
  ExplicitHeight = 386
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Width = 902
    Caption = ' ATIVIDADES'
    ExplicitWidth = 902
  end
  inherited pnlClient: TPanel
    Width = 902
    ExplicitWidth = 902
    inherited grd: TwwDBGrid
      Width = 900
      Selected.Strings = (
        'id'#9'5'#9'ID'
        'nome'#9'118'#9'NOME')
      FixedCols = 1
      ExplicitWidth = 900
    end
    inherited Panel1: TPanel
      Width = 900
      ExplicitWidth = 900
      inherited btnOK: TSpeedButton
        Left = 813
        ExplicitLeft = 813
      end
      inherited btnCancelar: TSpeedButton
        Left = 855
        ExplicitLeft = 855
      end
      inherited Bevel1: TBevel
        Width = 900
        ExplicitWidth = 900
      end
    end
  end
  inherited dts: TDataSource
    Top = 226
  end
  inherited dse: TUniQuery
    Top = 226
  end
end
