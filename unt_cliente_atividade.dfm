inherited frm_cliente_atividade: Tfrm_cliente_atividade
  Caption = 'Atividades do Cliente'
  ClientWidth = 893
  OnShow = FormShow
  ExplicitWidth = 909
  PixelsPerInch = 96
  TextHeight = 15
  inherited toolbar: TToolBar
    Width = 893
    TabOrder = 1
    ExplicitWidth = 893
    object btn_licencas: TToolButton
      Left = 708
      Top = 0
      Caption = 'Licen'#231'as'
      ImageIndex = 43
      OnClick = btn_licencasClick
    end
    object sep_4: TToolButton
      Left = 765
      Top = 0
      Width = 8
      Caption = 'sep_4'
      ImageIndex = 31
      Style = tbsSeparator
    end
  end
  inherited pnlTitulo: TPanel
    Width = 893
    Caption = ' ATIVIDADES DO CLIENTE'
    TabOrder = 2
    ExplicitWidth = 893
  end
  inherited pnlTotal: TPanel
    Width = 893
    Height = 70
    TabOrder = 3
    ExplicitWidth = 893
    ExplicitHeight = 70
    inherited pnl_tit_geral: TPanel
      Width = 887
      Caption = ' CLIENTE'
      ExplicitWidth = 887
    end
    inherited pnl_geral: TPanel
      Width = 887
      Height = 52
      ExplicitWidth = 887
      ExplicitHeight = 52
      object Label1: TLabel
        Left = 10
        Top = 10
        Width = 12
        Height = 15
        Caption = 'ID'
      end
      object lbl_cnpj_cpf: TLabel
        Left = 75
        Top = 10
        Width = 56
        Height = 15
        Caption = 'CNPJ / CPF'
      end
      object Label4: TLabel
        Left = 210
        Top = 10
        Width = 112
        Height = 15
        Caption = 'Nome / Raz'#227'o Social'
      end
      object Label5: TLabel
        Left = 490
        Top = 10
        Width = 48
        Height = 15
        Caption = 'Fantasia'
      end
      object edt_id: TwwDBEdit
        Left = 10
        Top = 25
        Width = 60
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'id'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_cnpj_cpf: TwwDBEdit
        Left = 75
        Top = 25
        Width = 130
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'cnpj'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_nome: TwwDBEdit
        Left = 210
        Top = 25
        Width = 275
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'nome'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edt_fantasia: TwwDBEdit
        Left = 490
        Top = 25
        Width = 274
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'fantasia'
        DataSource = dts
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  inherited Panel1: TPanel
    Top = 145
    Width = 893
    Height = 258
    TabOrder = 0
    ExplicitTop = 145
    ExplicitWidth = 893
    ExplicitHeight = 258
    inherited pnl_tit_detalhe: TPanel
      Width = 887
      Caption = ' ATIVIDADES'
      ExplicitWidth = 887
    end
    inherited grd_detalhe: TwwDBGrid
      Width = 887
      Height = 234
      ControlType.Strings = (
        'id_atividade;CustomEdit;cmb_atividade;F')
      Selected.Strings = (
        'id_atividade'#9'105'#9'ATIVIDADE'#9'F')
      UseTFields = False
      ExplicitWidth = 887
      ExplicitHeight = 234
    end
    object cmb_atividade: TwwDBComboBox
      Left = 13
      Top = 41
      Width = 743
      Height = 21
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DataField = 'id_atividade'
      DataSource = dts_detalhe
      DropDownCount = 8
      ItemHeight = 0
      Sorted = False
      TabOrder = 2
      UnboundDataType = wwDefault
    end
  end
  inherited dse: TADODataSet
    CursorType = ctStatic
    AfterOpen = dseAfterOpen
    CommandText = 
      'select '#13#10'    c.id, '#13#10'    p.tipo,'#13#10'    p.cnpj,'#13#10'    p.cpf,'#13#10'    p' +
      '.nome,'#13#10'    c.fantasia'#13#10'from cliente c'#13#10'    left join pessoa p '#13 +
      #10'        on p.id = c.id_pessoa'#13#10'where c.id = :key_field'#13#10'order b' +
      'y p.nome'
    Parameters = <
      item
        Name = 'key_field'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
  end
  inherited qry: TADOQuery
    Left = 788
    Top = 47
  end
  inherited dse_detalhe: TADODataSet
    Active = True
    CursorType = ctStatic
    AfterOpen = dse_detalheAfterOpen
    OnNewRecord = dse_detalheNewRecord
    CommandText = 
      'select * '#13#10'from cliente_atividade '#13#10'where id_cliente = :key_fiel' +
      'd'
    Parameters = <
      item
        Name = 'key_field'
        DataType = ftInteger
        Size = 1
        Value = 0
      end>
    Left = 722
    Top = 219
  end
  inherited dts_detalhe: TDataSource
    Left = 694
    Top = 219
  end
end
