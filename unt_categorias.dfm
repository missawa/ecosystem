inherited frm_categorias: Tfrm_categorias
  Caption = 'Categorias'
  ClientWidth = 1171
  ExplicitWidth = 1187
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlTitulo: TPanel
    Width = 1171
    Caption = ' CATEGORIAS'
    ExplicitWidth = 563
  end
  inherited pnlClient: TPanel
    Width = 1171
    ExplicitWidth = 563
    inherited grd: TwwDBGrid
      Width = 1169
      Selected.Strings = (
        'id'#9'10'#9'ID'
        'nome'#9'45'#9'CATEGORIA'#9'F')
      ExplicitWidth = 561
    end
  end
  inherited Panel1: TPanel
    Width = 1171
    ExplicitTop = 30
    ExplicitWidth = 563
    inherited btnOK: TSpeedButton
      Left = 1083
      Top = 0
      ExplicitLeft = 1083
      ExplicitTop = 0
    end
    inherited btnCancelar: TSpeedButton
      Left = 1127
      Top = 0
      ExplicitLeft = 1127
      ExplicitTop = 0
    end
  end
  inherited dse: TUniQuery
    SQL.Strings = (
      'select *'
      'from categoria'
      'order by id')
  end
end
