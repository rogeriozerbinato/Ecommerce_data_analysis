-- Qual é a participação (%) de cada fornecedor no faturamento total?

create or replace view vw_participacao_fornecedor as
with faturamento_mensal as (
select 
	month(p.order_date) as mes,
	count(distinct p.order_id) as total_pedidos,
    f.supplier_id as id_fornecedor,
    f.supplier_name as nome_fornecedor,
    sum(p.total_value) as faturamento
from pedidos p
join produtos pr
	on p.product_id = pr.product_id
join fornecedores f
	on pr.supplier_id = f.supplier_id
group by 
	month(p.order_date),
    f.supplier_id,
    f.supplier_name
),
participacao_fornecedores as
(
select 
	mes,
    total_pedidos,
    id_fornecedor,
    nome_fornecedor,
    faturamento,
    faturamento/ SUM(faturamento) OVER (PARTITION BY mes) * 100 AS participacao_percentual
from faturamento_mensal
)
select 
	mes,
    total_pedidos,
    id_fornecedor,
    nome_fornecedor,
    faturamento,
	participacao_percentual
from participacao_fornecedores
