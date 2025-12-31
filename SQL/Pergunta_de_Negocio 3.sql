-- Qual é o Faturamento por Produto ?
create or replace view vw_faturamento_produto as
select  
	month(p.order_date) as mes,
    pr.product_id,
    pr.product_name,
	sum(p.total_value) as faturamento
from pedidos p
join produtos pr
	on p.product_id = pr.product_id
group by 
	MONTH(p.order_date),
    pr.product_name,
    pr.product_id