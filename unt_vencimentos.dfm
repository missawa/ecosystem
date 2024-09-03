object frm_vencimentos: Tfrm_vencimentos
  Left = 0
  Top = 0
  Caption = 'Vencimentos de Licen'#231'as e Condicionantes'
  ClientHeight = 616
  ClientWidth = 1267
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
    Width = 1267
    Height = 560
    Selected.Strings = (
      'id'#9'4'#9'ID'
      'cnpj'#9'20'#9'CNPJ'
      'nome'#9'40'#9'CLIENTE'
      'tipo'#9'17'#9'TIPO'
      'condicionante'#9'11'#9'COND.'
      'numero'#9'18'#9'N'#218'MERO'
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
    Width = 1267
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
    object btn_email: TToolButton
      Left = 63
      Top = 0
      Caption = 'E-mail'
      ImageIndex = 92
      Visible = False
    end
    object btn_fechar: TToolButton
      Left = 118
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
      '    cast('#39'Licen'#231'a'#39' as char) as tipo,'
      '    p.id,'
      '    p.cnpj,'
      '    p.nome,'
      '    l.numero,'
      '    null as condicionante,'
      '    l.descricao,'
      '    l.dt_venc,    '
      '    l.dt_venc - 30 as dt_aviso'
      'from pessoa p'
      '    left join licenca l'
      '        on l.id_cliente = p.id'
      'where p.cliente = '#39'S'#39
      '    and p.situacao = '#39'A'#39
      '    and l.dt_venc <= (current_date - 30)'
      ''
      'union'
      ''
      'select '
      '    '#39'Condicionante'#39' as tipo,'
      '    p.id,'
      '    p.cnpj,'
      '    p.nome,'
      '    l.numero,'
      '    c.numero as condicionante,'
      '    c.descricao,'
      '    c.dt_venc,'
      '    c.dt_aviso'
      'from pessoa p'
      #9'left join licenca l'
      #9#9'on l.id_cliente = p.id'
      #9'left join condicionante c'
      #9#9'on c.id_licenca = l.id'
      'where p.cliente = '#39'S'#39
      #9'and p.situacao = '#39'A'#39
      #9'and c.dt_aviso < current_date() '
      '    and c.cumprida = '#39'N'#39
      ''
      'union'
      ''
      'select '
      '    '#39'ANP'#39' as tipo,'
      '    p.id,'
      '    p.cnpj,'
      '    p.nome,'
      '    null as numero,'
      '    null as condicionante,'
      '    '#39'Vencimento ANP'#39' as descricao,'
      '    p.dt_venc_anp as dt_vencimento,'
      '    p.dt_venc_anp - 30 as dt_aviso'
      '    '
      'from pessoa p'
      'where p.cliente = '#39'S'#39
      #9'and p.situacao = '#39'A'#39
      #9'and p.dt_venc_anp <= current_date() '
      '    '
      'union'
      ''
      'select '
      '    '#39'Modal Rod.'#39' as tipo,'
      '    p.id,'
      '    p.cnpj,'
      '    p.nome,'
      '    null as numero,'
      '    null as condicionante,'
      '    '#39'Vencimento Modal Rodovi'#225'rio'#39' as descricao,'
      '    p.dt_venc_modal_rod as dt_vencimento,'
      '    p.dt_venc_modal_rod - 30 as dt_aviso'
      '    '
      'from pessoa p'
      'where p.cliente = '#39'S'#39
      #9'and p.situacao = '#39'A'#39
      #9'and p.dt_venc_modal_rod <= current_date() '
      '    '
      'union'
      ''
      'select '
      '    '#39'Cert. Regularidade'#39' as tipo,'
      '    p.id,'
      '    p.cnpj,'
      '    p.nome,'
      '    null as numero,'
      '    null as condicionante,'
      '    '#39'Vencimento Cerficado de Regularidade'#39' as descricao,'
      '    p.dt_venc_cert_reg as dt_vencimento,'
      '    p.dt_venc_cert_reg - 30 as dt_aviso'
      '    '
      'from pessoa p'
      'where p.cliente = '#39'S'#39
      #9'and p.situacao = '#39'A'#39
      #9'and p.dt_venc_cert_reg <= current_date() '
      ''
      'order by nome, cnpj')
    Active = True
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
