inherited frm_categorias: Tfrm_categorias
  Caption = 'Categorias'
  ClientWidth = 563
  ExplicitWidth = 579
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlTitulo: TPanel
    Width = 563
    Caption = ' CATEGORIAS'
  end
  inherited pnlClient: TPanel
    Width = 563
    inherited grd: TwwDBGrid
      Width = 561
      Selected.Strings = (
        'id'#9'10'#9'ID'
        'nome'#9'45'#9'CATEGORIA'#9'F')
      ExplicitWidth = 561
      ExplicitHeight = 464
    end
    inherited Panel1: TPanel
      Width = 561
      inherited btnOK: TSpeedButton
        Left = 474
      end
      inherited btnCancelar: TSpeedButton
        Left = 516
      end
    end
  end
  inherited dse: TUniQuery
    SQL.Strings = (
      'select *'
      'from categoria'
      'order by id')
    Active = True
  end
end
