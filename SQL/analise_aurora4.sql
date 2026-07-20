SELECT 
produtos.variante, 
round(sum(itens_pedido.valor_linha), 2) as faturamento, 
round(100 * sum(itens_pedido.margem_linha) / sum(itens_pedido.valor_linha),1) as margem_pct
FROM itens_pedido
JOIN produtos ON itens_pedido.sku = produtos.sku
GROUP by produtos.variante
ORDER by margem_pct DESC;

--qual variante rende mais margem?