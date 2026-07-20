SELECT clientes.nome, sum(valor_total) as  faturamento, clientes.segmento
FROM pedidos
JOIN clientes ON pedidos.cliente_codigo = clientes.cliente_codigo
group by nome
order by faturamento desc 
limit 10

--Quem puxa o faturamento: top 10 clientes