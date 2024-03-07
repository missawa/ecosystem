inherited frm_categorias: Tfrm_categorias
  Caption = 'Categorias'
  ClientWidth = 1171
  ExplicitWidth = 1187
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 17
  inherited pnlTitulo: TPanel
    Width = 1171
    Caption = ' CATEGORIAS'
    ExplicitWidth = 1171
  end
  inherited pnlClient: TPanel
    Width = 1171
    ExplicitTop = 71
    ExplicitWidth = 1171
    ExplicitHeight = 466
    inherited grd: TwwDBGrid
      Width = 1169
      Selected.Strings = (
        'id'#9'10'#9'ID'
        'nome'#9'45'#9'CATEGORIA'
        'dias_recorrencia'#9'6'#9'DIAS')
      ExplicitWidth = 1169
    end
  end
  inherited Panel1: TPanel
    Width = 1171
    ExplicitWidth = 1171
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
    Active = True
  end
end
