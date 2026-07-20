SELECT 
clientes.nome,
clientes.segmento,
sum(pedidos.valor_total) as faturamento, 
round(sum(pedidos.valor_total - pedidos.custo_produto_total - pedidos.frete_real), 2) as margem_liquida, 
round(100 * sum(pedidos.valor_total - pedidos.custo_produto_total - pedidos.frete_real) / sum(pedidos.valor_total), 1) as margem_pct
FROM pedidos
JOIN clientes ON pedidos.cliente_codigo = clientes.cliente_codigo
group by nome
having sum(pedidos.valor_total) > 300000
order by margem_pct ASC
limit 10

--O faturamento engana: quem fatura bem mas dá pouca margem