select 	
a.mesAno, d.TipoPessoa,  sum(a.valor) as valor,
case d.TipoPessoa when 'PF' then (sum(a.valor) * e.percent_inss /100) 
                  when 'PJ' then case when sum(a.valor) > e.VrBaseCobr_Ir then sum(a.valor) * (e.Percent_IR / 100) end end 'imposto'
from 
	Itens_PagDentista a, orcamento b, dentista c, clinicas d, Preferencia e
where substring(a.MesAno,4,4) + SUBSTRING(a.mesAno,1,2)  between '201401' and '201409'
and a.Orcamento = b.numero
and c.codigo  = b.dentis .Codigo
and b.Dentista = 1002

group by
    a.mesAno,d.TipoPessoa, e.Percent_Inss, e.VrBaseCobr_Ir, e.Percent_IR

order by

substring(a.MesAno,4,4) + SUBSTRING(a.mesAno,1,2)
--select percent_ir, VrBaseCobr_Ir,Percent_Inss from Preferencia

