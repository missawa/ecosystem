inherited frm_uf: Tfrm_uf
  Caption = 'frm_uf'
  ClientHeight = 352
  ClientWidth = 404
  ExplicitWidth = 420
  ExplicitHeight = 391
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Width = 404
    Caption = ' UF'
    ExplicitWidth = 404
  end
  inherited pnlClient: TPanel
    Width = 404
    Height = 331
    ExplicitWidth = 404
    ExplicitHeight = 331
    inherited grd: TwwDBGrid
      Width = 402
      Height = 288
      Selected.Strings = (
        'id'#9'4'#9'ID'
        'nome'#9'42'#9'NOME'
        'sigla'#9'5'#9'SIGLA')
      ExplicitWidth = 402
      ExplicitHeight = 288
    end
    inherited Panel1: TPanel
      Top = 288
      Width = 402
      ExplicitTop = 288
      ExplicitWidth = 402
      inherited btnOK: TSpeedButton
        Left = 315
        ExplicitLeft = 315
      end
      inherited btnCancelar: TSpeedButton
        Left = 357
        ExplicitLeft = 357
      end
      inherited Bevel1: TBevel
        Width = 402
        ExplicitWidth = 402
      end
    end
  end
  inherited dse: TADODataSet
    Active = True
    CursorType = ctStatic
    CommandText = 'select *'#13#10'from uf'
  end
end
