inherited frm_uf: Tfrm_uf
  Caption = 'Unidades Federativas'
  ClientHeight = 399
  ClientWidth = 763
  ExplicitWidth = 779
  ExplicitHeight = 438
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlTitulo: TPanel
    Width = 763
    Caption = ' UNIDADES DA FEDERA'#199#195'O'
    ExplicitWidth = 763
  end
  inherited pnlClient: TPanel
    Width = 763
    Height = 369
    ExplicitWidth = 458
    ExplicitHeight = 378
    inherited grd: TwwDBGrid
      Width = 761
      Height = 326
      Selected.Strings = (
        'id'#9'4'#9'ID'
        'nome'#9'42'#9'NOME'
        'sigla'#9'5'#9'SIGLA')
      ReadOnly = True
      ExplicitWidth = 761
      ExplicitHeight = 326
    end
    inherited Panel1: TPanel
      Top = 326
      Width = 761
      ExplicitTop = 335
      ExplicitWidth = 456
      inherited btnOK: TSpeedButton
        Left = 662
        ExplicitLeft = 357
      end
      inherited btnCancelar: TSpeedButton
        Left = 710
        ExplicitLeft = 405
      end
    end
  end
  inherited dse: TUniQuery
    SQL.Strings = (
      'select *'
      'from uf'
      'order by sigla')
  end
end
