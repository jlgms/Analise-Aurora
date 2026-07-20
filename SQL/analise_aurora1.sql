SELECT substr(data_pedido, 1, 7) as mes, count(*) as pedidos, round (sum(valor_total), 2) as faturamento
FROM pedidos
group by mes
order by mes

--qual foi o vale de faturamento nesses 3 meses?
