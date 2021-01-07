select isnull(u.Nome,c.nome) nome, td.Descricao, sum(r.valor_Pago) as Valor_Pago
from  receber  r
left join usuario u
on u.Codigo_Completo  = r.Codigo_Usuario
left join TipoDocumento td
on td.Codigo = r.Tipo_Documento

left join contratante c
on c.Codigo = r.Codigo_Contratante
   
where r.codigo_contratante = 5290 --2810
and DATEPART(year, r.data_pagamento) = 2011
group by u.Nome, td.Descricao,c.nome

--order by mes

--select top 10 * from  receber  r where year(Data_Vencimento) = 2011 order by data_vencimento desc
