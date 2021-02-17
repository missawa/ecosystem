object frm_vencimentos: Tfrm_vencimentos
  Left = 0
  Top = 0
  Caption = 'Vencimentos de Licen'#231'as e Condicionantes'
  ClientHeight = 616
  ClientWidth = 1116
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grd_venc: TwwDBGrid
    Left = 0
    Top = 52
    Width = 1116
    Height = 564
    Selected.Strings = (
      'tipo'#9'7'#9'TIPO'
      'nome'#9'72'#9'CLIENTE'
      'cnpj'#9'20'#9'CNPJ'
      'numero'#9'20'#9'N'#218'MERO'
      'dt_aviso'#9'10'#9'AVISO'
      'dt_venc'#9'10'#9'VENCIMENTO'
      'desc_str'#9'100'#9'DESCRI'#199#195'O')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dts_venc
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object toolbar: TToolBar
    Left = 0
    Top = 0
    Width = 1116
    Height = 52
    AutoSize = True
    ButtonHeight = 52
    ButtonWidth = 47
    Caption = 'Novo'
    DisabledImages = dtm_images.img_32
    Images = dtm_images.img_32
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    ExplicitTop = 21
    ExplicitWidth = 980
    object btn_licencas: TToolButton
      Left = 0
      Top = 0
      Caption = 'Licen'#231'as'
      ImageIndex = 43
      OnClick = btn_licencasClick
    end
    object sep_3: TToolButton
      Left = 47
      Top = 0
      Width = 8
      Caption = 'sep_3'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_fechar: TToolButton
      Left = 55
      Top = 0
      Hint = 'Fechar Tela'
      Caption = 'Fechar'
      ImageIndex = 30
      OnClick = btn_fecharClick
    end
  end
  object qry_venc: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO licenca'
      '  (id_atividade, numero, dt_venc, descricao)'
      'VALUES'
      '  (:id_atividade, :numero, :dt_venc, :descricao)')
    SQLDelete.Strings = (
      'DELETE FROM licenca'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE licenca'
      'SET'
      
        '  id_atividade = :id_atividade, numero = :numero, dt_venc = :dt_' +
        'venc, descricao = :descricao'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      'SELECT id_atividade, numero, dt_venc, descricao FROM licenca'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM (SELECT * FROM licenca'
      ')')
    Connection = dtm_dados.mysql_conn
    SQL.Strings = (
      'select '
      '    '#39'LICEN'#199'A'#39' as tipo,'
      '    p.id,'
      '    p.cnpj,'
      '    p.nome,'
      '    p.fantasia,'
      '    l.id_atividade,'
      '    l.numero,'
      '    l.descricao,'
      '    l.dt_venc,    '
      '    null as dt_aviso'
      'from pessoa p'
      '    left join licenca l'
      '        on l.id_cliente = p.id'
      'where cliente = '#39'S'#39
      '    and p.situacao = '#39'A'#39
      '    and l.dt_venc <= (current_date - 30)'
      'union'
      ''
      'select '
      '    '#39'CONDIC.'#39' as tipo,'
      '    p.id,'
      '    p.cnpj,'
      '    p.nome,'
      '    p.fantasia,'
      '    l.id_atividade,'
      '    c.numero,'
      '    c.descricao,'
      '    c.dt_venc,'
      '    c.dt_aviso'
      'from pessoa p'
      #9'left join licenca l'
      #9#9'on l.id_cliente = p.id'
      #9'left join condicionante c'
      #9#9'on c.id_licenca = l.id'
      'where p.cliente = '#39'S'#39
      '    and c.cumprida <> '#39'S'#39
      '    and p.situacao = '#39'A'#39
      '    and (c.dt_venc <= (current_date - 30)'
      '        or c.dt_aviso <= (current_date - 30))'
      'order by dt_venc, dt_aviso')
    Active = True
    OnCalcFields = qry_vencCalcFields
    Left = 255
    Top = 185
    object qry_venctipo: TStringField
      DisplayLabel = 'TIPO'
      DisplayWidth = 7
      FieldName = 'tipo'
      ReadOnly = True
      Required = True
      Size = 7
    end
    object qry_vencnome: TStringField
      DisplayLabel = 'CLIENTE'
      DisplayWidth = 72
      FieldName = 'nome'
      ReadOnly = True
      Size = 120
    end
    object qry_venccnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 20
      FieldName = 'cnpj'
      ReadOnly = True
      EditMask = '00\.000\.000\/0000\-000;0;_'
      Size = 14
    end
    object qry_vencnumero: TStringField
      DisplayLabel = 'N'#218'MERO'
      DisplayWidth = 20
      FieldName = 'numero'
      ReadOnly = True
      Size = 60
    end
    object qry_vencdt_aviso: TDateField
      DisplayLabel = 'AVISO'
      DisplayWidth = 10
      FieldName = 'dt_aviso'
      ReadOnly = True
    end
    object qry_vencdt_venc: TDateField
      DisplayLabel = 'VENCIMENTO'
      DisplayWidth = 10
      FieldName = 'dt_venc'
      ReadOnly = True
    end
    object qry_vencdesc_str: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      DisplayWidth = 100
      FieldKind = fkCalculated
      FieldName = 'desc_str'
      Size = 400
      Calculated = True
    end
    object qry_vencid_atividade: TIntegerField
      FieldName = 'id_atividade'
      ReadOnly = True
      Visible = False
    end
    object qry_vencid: TIntegerField
      DisplayWidth = 10
      FieldName = 'id'
      ReadOnly = True
      Required = True
      Visible = False
    end
    object qry_vencfantasia: TStringField
      DisplayWidth = 100
      FieldName = 'fantasia'
      ReadOnly = True
      Visible = False
      Size = 100
    end
    object qry_vencdescricao: TMemoField
      DisplayWidth = 10
      FieldName = 'descricao'
      ReadOnly = True
      Visible = False
      BlobType = ftMemo
    end
  end
  object dts_venc: TDataSource
    DataSet = qry_venc
    Left = 283
    Top = 185
  end
end
