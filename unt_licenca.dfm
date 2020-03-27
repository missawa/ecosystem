object frm_licenca: Tfrm_licenca
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Licen'#231'a'
  ClientHeight = 571
  ClientWidth = 1308
  Color = clWhite
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTotal: TPanel
    Left = 0
    Top = 0
    Width = 1308
    Height = 70
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 3
    Padding.Right = 3
    TabOrder = 0
    object pnl_tit_geral: TPanel
      Left = 3
      Top = 0
      Width = 1302
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' CLIENTE / ATIVIDADE'
      Color = 12159842
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnMouseDown = pnl_tit_geralMouseDown
    end
    object pnl_geral: TPanel
      Left = 3
      Top = 18
      Width = 1302
      Height = 52
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 10
        Top = 10
        Width = 11
        Height = 13
        Caption = 'ID'
      end
      object lbl_cnpj_cpf: TLabel
        Left = 75
        Top = 10
        Width = 54
        Height = 13
        Caption = 'CNPJ / CPF'
      end
      object Label4: TLabel
        Left = 210
        Top = 10
        Width = 97
        Height = 13
        Caption = 'Nome / Raz'#227'o Social'
      end
      object Label5: TLabel
        Left = 490
        Top = 10
        Width = 41
        Height = 13
        Caption = 'Fantasia'
      end
      object Label2: TLabel
        Left = 770
        Top = 10
        Width = 45
        Height = 13
        Caption = 'Atividade'
      end
      object edt_id: TwwDBEdit
        Left = 10
        Top = 25
        Width = 60
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'id'
        DataSource = dts_cliente
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
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        Color = clBtnFace
        DataField = 'cnpj'
        DataSource = dts_cliente
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
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'nome'
        DataSource = dts_cliente
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
        Left = 491
        Top = 25
        Width = 274
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'fantasia'
        DataSource = dts_cliente
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
      object edt_atividade: TwwDBEdit
        Left = 770
        Top = 25
        Width = 274
        Height = 19
        TabStop = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBtnFace
        DataField = 'atividade'
        DataSource = dts_cliente
        Frame.Enabled = True
        Frame.NonFocusBorders = [efLeftBorder, efTopBorder, efRightBorder, efBottomBorder]
        Frame.FocusStyle = efsFrameEtched
        Frame.NonFocusStyle = efsFrameEtched
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 70
    Width = 1308
    Height = 143
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 2
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 3
      Top = 3
      Width = 1303
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' LICEN'#199'A'
      Color = 12159842
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Padding.Right = 1
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object grd: TwwDBGrid
      Left = 3
      Top = 21
      Width = 959
      Height = 119
      ControlType.Strings = (
        'id_tipo_licenca;CustomEdit;cmb_tipo;T'
        'id_orgao;CustomEdit;cmb_orgao;T'
        'assinatura;CustomEdit;edt_assinou;F'
        'id_municipio;CustomEdit;cmb_municipio;T')
      Selected.Strings = (
        'id_tipo_licenca'#9'9'#9'TIPO'#9'F'
        'id_orgao'#9'10'#9#211'RG'#195'O'#9'F'
        'numero'#9'38'#9'N'#218'MERO'#9'F'
        'dt_ini'#9'12'#9'IN'#205'CIO'#9'F'
        'dt_venc'#9'12'#9'VENCIMENTO'#9'F'
        'assinatura'#9'35'#9'ASSINOU'#9'F'
        'id_municipio'#9'35'#9'MUNIC'#205'PIO'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dts_licenca
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      UseTFields = False
    end
    object pnl_desc_licenca: TPanel
      Left = 962
      Top = 21
      Width = 344
      Height = 119
      Align = alRight
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 2
      object pnl_tit_desc_licenca: TPanel
        Left = 0
        Top = 0
        Width = 342
        Height = 21
        Align = alTop
        BevelOuter = bvNone
        Caption = 'DESCRI'#199#195'O'
        ParentBackground = False
        TabOrder = 0
      end
      object mmo_desc_licenca: TDBMemo
        Left = 0
        Top = 21
        Width = 342
        Height = 96
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'descricao'
        DataSource = dts_licenca
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object cmb_tipo: TwwDBLookupCombo
      Left = 16
      Top = 40
      Width = 67
      Height = 19
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'sigla'#9'8'#9'TIPO'#9'F')
      DataField = 'id_tipo_licenca'
      DataSource = dts_licenca
      LookupTable = qry_tipo
      LookupField = 'id'
      Style = csDropDownList
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object cmb_orgao: TwwDBLookupCombo
      Left = 84
      Top = 40
      Width = 64
      Height = 19
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'sigla'#9'8'#9#211'RG'#195'O'#9'F')
      DataField = 'id_orgao'
      DataSource = dts_licenca
      LookupTable = qry_orgao
      LookupField = 'id'
      Style = csDropDownList
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object cmb_municipio: TwwDBLookupCombo
      Left = 741
      Top = 41
      Width = 214
      Height = 19
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'nome'#9'100'#9'MUNIC'#205'PIO'#9'F')
      DataField = 'id_municipio'
      DataSource = dts_licenca
      LookupTable = qry_municipio
      LookupField = 'id'
      Style = csDropDownList
      TabOrder = 5
      AutoDropDown = True
      ShowButton = True
      UseTFields = False
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
    end
    object edt_assinou: TwwDBEdit
      Left = 528
      Top = 40
      Width = 213
      Height = 19
      CharCase = ecUpperCase
      DataSource = dts_licenca
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 213
    Width = 1308
    Height = 321
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Padding.Left = 3
    Padding.Right = 3
    Padding.Bottom = 3
    ParentBackground = False
    TabOrder = 2
    object grd_condicionante: TwwDBGrid
      Left = 3
      Top = 18
      Width = 712
      Height = 300
      ControlType.Strings = (
        'id_pressoa_responsavel;CustomEdit;cmb_responsavel;T'
        'id_pessoa_executor;CustomEdit;cmb_executor;T'
        'id_responsavel;CustomEdit;cmb_responsavel;F'
        'id_executor;CustomEdit;cmb_executor;F'
        'cumprida;CheckBox;S;N')
      Selected.Strings = (
        'dt_venc'#9'15'#9'VENCIMENTO'
        'dt_aviso'#9'15'#9'AVISO'
        'id_responsavel'#9'30'#9'RESPONS'#193'VEL'
        'id_executor'#9'30'#9'EXECUTOR'
        'dt_cumprimento'#9'15'#9'CUMPRIMENTO'#9'F'
        'cumprida'#9'3'#9'OK')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = dts_condicionante
      TabOrder = 3
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object pnl_tit_detalhe: TPanel
      Left = 3
      Top = 0
      Width = 1302
      Height = 18
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = ' CONDICIONANTE'
      Color = 12159842
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object Panel4: TPanel
      Left = 715
      Top = 18
      Width = 590
      Height = 300
      Align = alRight
      BevelOuter = bvNone
      BorderStyle = bsSingle
      TabOrder = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 588
        Height = 21
        Align = alTop
        BevelOuter = bvNone
        Caption = 'DESCRI'#199#195'O'
        TabOrder = 0
      end
      object mmo_desc_condicionante: TDBMemo
        Left = 0
        Top = 21
        Width = 588
        Height = 277
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Ctl3D = False
        DataField = 'descricao'
        DataSource = dts_condicionante
        ParentCtl3D = False
        TabOrder = 1
      end
    end
    object cmb_executor: TwwDBComboBox
      Left = 250
      Top = 60
      Width = 190
      Height = 19
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DataField = 'id_executor'
      DataSource = dts_condicionante
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'PEDRO'#9'3')
      Sorted = False
      TabOrder = 2
      UnboundDataType = wwDefault
    end
    object cmb_responsavel: TwwDBComboBox
      Left = 27
      Top = 60
      Width = 121
      Height = 19
      ShowButton = True
      Style = csDropDown
      MapList = True
      AllowClearKey = False
      DataField = 'id_responsavel'
      DataSource = dts_condicionante
      DropDownCount = 8
      ItemHeight = 0
      Items.Strings = (
        'PEDRO MISSAWA'#9'3'
        'LUIZ ALBERTO'#9'4')
      Sorted = False
      TabOrder = 4
      UnboundDataType = wwDefault
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 534
    Width = 1308
    Height = 37
    Align = alBottom
    TabOrder = 3
    object btn_ok: TSpeedButton
      Left = 1251
      Top = -1
      Width = 56
      Height = 36
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFEFEFEFAFAFAFCFCFCFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEEDEFEECED3D09DADA3C5CAC6E9EBEAFBFBFBFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEF4F5F4B5C1B90A7E38357F51B7C3BBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF61A47D0B8E4208863A0D7E3975A788E9F1ECFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC8E2D5129F531797500E8E4508873C07833822884A9AC5
        AAFAFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFDFC48B67F23AC6522A55F1A9C550F9248098A4009853B077F
        353F945FBDD7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA8D9C225BB7337BA7A2DB16E25A9641EA15B0F964C0A8F440A89
        3F088339077D3562A47BDAE7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFEFF8F439C58749CB9044C5883ABD7E31B67429AE6B21A660119A500B93
        470B8D4309883E06823716813F86B899F0F6F2FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF8CDBBA49D59A5FD5A251CE9647C88D3EC28436BB7A2EB47124AB66129F
        540B974B0C92470B8C4208863C0680362D8D52A6CBB4FDFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E0F4EC43D89E77E1B76BDCAD61D7A557D19C4DCC9344C68A3BBF8133B97828B0
        6C14A3590C9C4F0D974B0B90450A8B4008853A067E35489867C6DCCEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        77E1B977E9BE88E8C37AE3BA70DFB266DAA95FD6A33BC98A2FC2803BC2843ABD
        7F2DB57217A85F0DA0530E9B4F0C95490B8F440A893F078439087D356EAA85E2
        EDE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9F1E2
        61EAB9A3F1D593EDCB89EAC57FE6BE79E2B85FDBA935C38630B97B29BF7C36C4
        833CC08335BA7A1BAD650EA4580E9F530D994D0C94480B8E4209883D0682361C
        86448EBEA0F4F9F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFC6CECC1
        A7F6DBADF5DCA1F2D598EFCF8FECC988EAC441D49AA1DFC3E6F6EF68CB9D20B7
        732EC17F38C3833ABE8023B26D10A85C0FA3570E9E520D984C0B91460A8C4108
        863C068036339156AFCFBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0F4DE88F9D5
        CEFAEBB8F7E2AEF5DDA6F3D8A3F1D575EBC048C992FBFEFCFFFFFFFFFFFFC5EB
        D94EC28D22B97531C18038BF802AB77414AC6210A65B10A1560E9C500C964A0B
        90450A8A4007853A067F35519D6ED1E1D7FFFFFFFFFFFFFFFFFF58CE9C58E9B7
        94F9D9BCF9E5C3F8E7B6F7E1A7F6DB40D99FBEE8D5FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA5E0C43AC3882FC78736C18128B97619B16912AA5F11A55A0FA0540D
        9A4E0C94490B8F4409893F0684380E813A77B28DE8F1EBFFFFFFE4F5ED74D9B0
        72F1C995FADAA4FADFC9FBEB7BF3CB60D0A0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFF0FAF68BE4C25AE1B15DD29F29BC781AB36C15AD6413A95E10
        A4580F9E520D994D0C93470A8D4209883C0682371E8846A0C6AEFFFFFFFFFFFF
        E5FAF3C8F9EA49E7B173F7CE44DAA2DBF2E7FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE5FAF3DAFCF2B3EBD547C99021B77117B16815
        AC6313A75D10A2570E9D510C974B0B92460A8C4109843A33A86BFFFFFFFFFFFF
        FFFFFFFFFFFFB1EBD43FC58B83D6B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFEF991EFCF37CF9229BD7B1A
        B46D17AF6715AB6112A65B10A1550E9B4F0B954813974EA0DEC2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF3FBF7F7FCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEA4E9CE38C78B27
        BC7A22BA7519B36B17AE6514A96011A459139F5545BB83FCFEFDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF9F379
        D1A927B77629BD7B1FB87318B16917AC641CAC67C6EBDAFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD2EFE25CC79523B77527BC7921B7726BCCA0FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFB5E5CF3DBD832EB97BE2F5ECFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE2F5ECB0E4CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btn_okClick
    end
  end
  object dts_licenca: TDataSource
    DataSet = dse_licenca
    Left = 1249
    Top = 180
  end
  object dts_cliente: TDataSource
    AutoEdit = False
    DataSet = qry_cliente
    Left = 1059
    Top = 33
  end
  object dts_condicionante: TDataSource
    DataSet = dse_condicionante
    Left = 1247
    Top = 499
  end
  object qry_cliente: TUniQuery
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select '
      '    p.id,'
      '    p.cnpj,'
      '    p.cpf,'
      '    p.nome,'
      '    p.fantasia,'
      '    a.nome as atividade,'
      '    a.id as id_atividade'
      'from pessoa p'
      '    left join cliente_atividade ca'
      '        on ca.id_cliente = p.id'
      '    left join atividade a'
      '        on a.id = ca.id_atividade'
      'where p.id = :id_cliente'
      '    and a.id = :id_atividade')
    Left = 1087
    Top = 33
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cliente'
      end
      item
        DataType = ftUnknown
        Name = 'id_atividade'
      end>
  end
  object dse_licenca: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO licenca'
      
        '  (id, id_tipo_licenca, id_atividade, id_orgao, numero, dt_ini, ' +
        'dt_venc, assinatura, id_cliente, id_municipio, descricao)'
      'VALUES'
      
        '  (:id, :id_tipo_licenca, :id_atividade, :id_orgao, :numero, :dt' +
        '_ini, :dt_venc, :assinatura, :id_cliente, :id_municipio, :descri' +
        'cao)')
    SQLDelete.Strings = (
      'DELETE FROM licenca'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE licenca'
      'SET'
      
        '  id = :id, id_tipo_licenca = :id_tipo_licenca, id_atividade = :' +
        'id_atividade, id_orgao = :id_orgao, numero = :numero, dt_ini = :' +
        'dt_ini, dt_venc = :dt_venc, assinatura = :assinatura, id_cliente' +
        ' = :id_cliente, id_municipio = :id_municipio, descricao = :descr' +
        'icao'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, id_tipo_licenca, id_atividade, id_orgao, numero, dt_i' +
        'ni, dt_venc, assinatura, id_cliente, id_municipio, descricao FRO' +
        'M licenca'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM licenca'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select * '
      'from licenca '
      'where id_cliente = :id_cliente'
      '    and id_atividade = :id_atividade')
    Options.StrictUpdate = False
    OnNewRecord = dse_licencaNewRecord
    Left = 1277
    Top = 180
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_cliente'
      end
      item
        DataType = ftUnknown
        Name = 'id_atividade'
      end>
  end
  object qry_tipo: TUniQuery
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select id, sigla '
      'from tipo_licenca'
      'order by nome')
    Left = 56
    Top = 130
  end
  object qry_orgao: TUniQuery
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select id, sigla'
      'from orgao_ambiental'
      'order by nome ')
    Left = 120
    Top = 130
  end
  object qry_municipio: TUniQuery
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select id, nome'
      'from municipio'
      'order by nome')
    Left = 927
    Top = 130
  end
  object dse_condicionante: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO condicionante'
      
        '  (id, id_licenca, descricao, cumprida, dt_venc, dt_cumprimento,' +
        ' dt_aviso, id_responsavel, id_executor)'
      'VALUES'
      
        '  (:id, :id_licenca, :descricao, :cumprida, :dt_venc, :dt_cumpri' +
        'mento, :dt_aviso, :id_responsavel, :id_executor)')
    SQLDelete.Strings = (
      'DELETE FROM condicionante'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE condicionante'
      'SET'
      
        '  id = :id, id_licenca = :id_licenca, descricao = :descricao, cu' +
        'mprida = :cumprida, dt_venc = :dt_venc, dt_cumprimento = :dt_cum' +
        'primento, dt_aviso = :dt_aviso, id_responsavel = :id_responsavel' +
        ', id_executor = :id_executor'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id, id_licenca, descricao, cumprida, dt_venc, dt_cumprime' +
        'nto, dt_aviso, id_responsavel, id_executor FROM condicionante'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM condicionante'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select *'
      'from condicionante'
      'where id_licenca = :id')
    MasterSource = dts_licenca
    BeforeOpen = dse_condicionanteBeforeOpen
    OnNewRecord = dse_condicionanteNewRecord
    Left = 1275
    Top = 500
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = Null
      end>
  end
end
