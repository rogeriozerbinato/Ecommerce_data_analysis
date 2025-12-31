-- Qual é o Ticket Médio por Cliente e por Período ?

create or replace view vw_ticket_cliente as
select 
	month(p.order_date) as mes,
    c.client_id,
    c.client_name,
	count(distinct p.order_id) as total_pedidos,
    sum(p.total_value) as faturamento,
    sum(p.total_value)/count(distinct p.order_id) as ticket_medio
from pedidos p
join clientes_recorrentes c
	on p.client_id = c.client_id
group by 
	month(p.order_date),
    c.client_id,
    c.client_name