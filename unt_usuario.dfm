inherited frm_usuario: Tfrm_usuario
  Caption = 'Usu'#225'rio'
  ClientWidth = 574
  ExplicitWidth = 590
  ExplicitHeight = 386
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlTitulo: TPanel
    Width = 574
    Caption = ' USU'#193'RIOS'
  end
  inherited pnlClient: TPanel
    Width = 574
    inherited grd: TwwDBGrid
      Width = 572
      Selected.Strings = (
        'id'#9'4'#9'ID'
        'id_pessoa'#9'10'#9'ID_PESSOA'
        'login'#9'13'#9'LOGIN'
        'senha'#9'9'#9'SENHA'
        'nome'#9'38'#9'NOME')
      ExplicitWidth = 827
    end
    inherited Panel1: TPanel
      Width = 572
      inherited btnOK: TSpeedButton
        Left = 485
      end
      inherited btnCancelar: TSpeedButton
        Left = 527
      end
      inherited Bevel1: TBevel
        Width = 572
      end
    end
  end
  inherited dts: TDataSource
    DataSet = dse
  end
  inherited dse: TADODataSet
    CursorType = ctStatic
    CommandText = 'select *'#13#10'from usuario'
  end
end
