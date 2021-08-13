object frm_vencimentos: Tfrm_vencimentos
  Left = 0
  Top = 0
  Caption = 'Vencimentos de Licen'#231'as e Condicionantes'
  ClientHeight = 616
  ClientWidth = 1116
  Color = clWindow
  Ctl3D = False
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object grd_venc: TwwDBGrid
    Left = 0
    Top = 56
    Width = 1116
    Height = 560
    Selected.Strings = (
      'tipo'#9'9'#9'TIPO'
      'nome'#9'72'#9'CLIENTE'
      'cnpj'#9'20'#9'CNPJ'
      'numero'#9'20'#9'N'#218'MERO'
      'dt_aviso'#9'10'#9'AVISO'
      'dt_venc'#9'11'#9'VENCIMENTO')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dts_venc
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object toolbar: TToolBar
    Left = 0
    Top = 0
    Width = 1116
    Height = 56
    AutoSize = True
    ButtonHeight = 56
    ButtonWidth = 55
    Caption = 'Novo'
    DisabledImages = dtm_images.img_32
    Images = dtm_images.img_32
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    object btn_licencas: TToolButton
      Left = 0
      Top = 0
      Caption = 'Licen'#231'as'
      ImageIndex = 43
      OnClick = btn_licencasClick
    end
    object sep_3: TToolButton
      Left = 55
      Top = 0
      Width = 8
      Caption = 'sep_3'
      ImageIndex = 31
      Style = tbsSeparator
    end
    object btn_fechar: TToolButton
      Left = 63
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
      '    cast('#39'LICEN'#199'A'#39' as char) as tipo,'
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
      '    cast('#39'CONDIC.'#39' as char) as tipo,'
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
    OnCalcFields = qry_vencCalcFields
    Left = 255
    Top = 185
  end
  object dts_venc: TDataSource
    DataSet = qry_venc
    Left = 283
    Top = 185
  end
end
