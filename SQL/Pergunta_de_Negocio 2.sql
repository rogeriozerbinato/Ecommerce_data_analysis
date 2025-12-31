-- Qual é o Faturamento por Fornecedor ?
create or replace view vw_faturamento_fornecedor as
select  
	month(p.order_date) as mes,
    f.supplier_id,
    f.supplier_name,
	sum(p.total_value) as faturamento
from pedidos p
join produtos pr
	on p.product_id = pr.product_id
join fornecedores f
	on f.supplier_id = pr.supplier_id
group by 
	MONTH(p.order_date),
    f.supplier_id