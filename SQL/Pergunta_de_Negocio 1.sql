-- Qual é o Faturamento Total ao longo do tempo?
create or replace view vw_evolucao_faturamento as
select 
	month(order_date) as mes,
    sum(total_value) as faturamento_total
from pedidos
group by 
	month(order_date)