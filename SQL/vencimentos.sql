select 
    cast('Licença' as char) as tipo,
    p.id,
    p.cnpj,
    p.nome,
    l.numero,
    null as condicionante,
    l.descricao,
    l.dt_venc,    
    l.dt_venc - 30 as dt_aviso
from pessoa p
    left join licenca l
        on l.id_cliente = p.id
where p.cliente = 'S'
    and p.situacao = 'A'
    and l.dt_venc <= (current_date - 30)

union

select 
    'Condicionante' as tipo,
    p.id,
    p.cnpj,
    p.nome,
    l.numero,
    c.numero as condicionante,
    c.descricao,
    c.dt_venc,
    c.dt_aviso
from pessoa p
	left join licenca l
		on l.id_cliente = p.id
	left join condicionante c
		on c.id_licenca = l.id
where p.cliente = 'S'
	and p.situacao = 'A'
	and c.dt_aviso < current_date() 
    and c.cumprida = 'N'

union

select 
    'ANP' as tipo,
    p.id,
    p.cnpj,
    p.nome,
    null as numero,
    null as condicionante,
    'Vencimento ANP' as descricao,
    p.dt_venc_anp as dt_vencimento,
    p.dt_venc_anp - 30 as dt_aviso
    
from pessoa p
where p.cliente = 'S'
	and p.situacao = 'A'
	and p.dt_venc_anp <= current_date() 
    
union

select 
    'Modal Rod.' as tipo,
    p.id,
    p.cnpj,
    p.nome,
    null as numero,
    null as condicionante,
    'Vencimento Modal Rodoviário' as descricao,
    p.dt_venc_modal_rod as dt_vencimento,
    p.dt_venc_modal_rod - 30 as dt_aviso
    
from pessoa p
where p.cliente = 'S'
	and p.situacao = 'A'
	and p.dt_venc_modal_rod <= current_date() 
    
union

select 
    'Cert. Regularidade' as tipo,
    p.id,
    p.cnpj,
    p.nome,
    null as numero,
    null as condicionante,
    'Vencimento Cerficado de Regularidade' as descricao,
    p.dt_venc_cert_reg as dt_vencimento,
    p.dt_venc_cert_reg - 30 as dt_aviso
    
from pessoa p
where p.cliente = 'S'
	and p.situacao = 'A'
	and p.dt_venc_cert_reg <= current_date() 

order by nome, cnpj
