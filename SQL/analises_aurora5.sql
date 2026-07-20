SELECT
clientes.segmento,
round(sum(pedidos.valor_total), 2) as faturamento,
round(100 * sum(pedidos.valor_total - pedidos.custo_produto_total - pedidos.frete_real) / sum(pedidos.valor_total), 1) as margem_pct
FROM pedidos
JOIN clientes ON clientes.cliente_codigo = pedidos.cliente_codigo
GROUP by clientes.segmento
order by faturamento desc;

--Onde está o lucro por segmento ? (faturamento x margem)