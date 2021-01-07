declare @data datetime

set @data = (select MAX(inclusao_susep) from usuario)

select p.codigo_susep cdPlanoANS, u.codigo_completo, u.nome, @data data from usuario u, contratante c, plano p where u.inclusao_susep = @data
and c.codigo = u.contratante_titular
and p.codigo = c.plano
and 
p.codigo_susep in
(410056995,
 462938108,
 410058991,
 462937100,
410055997,
 410057993
 )
order by 1

/*
union

select top 10 p.codigo_susep cdPlanoANS, u.codigo_completo, u.nome 
from usuario u, contratante c, plano p where u.alteracao_susep = @data
and c.codigo = u.contratante_titular
and p.codigo = c.plano

union
select top 10 p.codigo_susep cdPlanoANS, u.codigo_completo, u.nome 
from usuario u, contratante c, plano p where u.alteracao_susep = @data
and c.codigo = u.contratante_titular
and p.codigo = c.plano
*/