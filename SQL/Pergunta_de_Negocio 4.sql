-- Quais clientes geram mais receitas?
create or replace view vw_cliente_receita as
select  
	month(p.order_date) as mes,
    c.client_id,
    c.client_name,
	sum(p.total_value) as faturamento
from pedidos p
join clientes_recorrentes c
	on p.client_id = c.client_id
group by 
	month(p.order_date),
    c.client_id,
    c.client_name