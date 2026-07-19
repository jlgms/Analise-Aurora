# Dicionário de dados — Embalagens Aurora

Base real usada na imersão do Primeiro Crachá. São 3 meses de operação (abr, mai e jun
de 2026) de uma indústria de embalagens do interior do Paraná: 100 clientes, 696 pedidos,
9 produtos, 8 vendedores. Os nomes de cliente são fictícios; os números são coerentes
entre si (dá pra cruzar as tabelas e as contas fecham).

## `pedidos.csv` (696 linhas)
Um pedido por linha. É a tabela central.

| Coluna | O que é |
|---|---|
| `pedido_id` | Código único do pedido (ex `P-2026-04-0001`) |
| `data_pedido` | Data em que o pedido entrou (AAAA-MM-DD) |
| `data_entrega_prometida` | Prazo combinado com o cliente |
| `data_entrega_real` | Quando entregou de fato (vazio se ainda não entregou) |
| `cliente_codigo` | Liga com `clientes.csv` |
| `vendedor_codigo` | Liga com `vendedores.csv` |
| `qtd_linhas` | Quantos itens diferentes o pedido tem |
| `valor_total` | Faturamento do pedido, em reais |
| `custo_produto_total` | Custo do que foi produzido |
| `margem_bruta` | `valor_total - custo_produto_total` |
| `frete_real` | Frete que a Aurora pagou pra entregar |
| `status` | `entregue`, `em-producao`, `atrasado`, `cancelado` ou `perdido` |

> Margem **líquida** de um pedido = `valor_total - custo_produto_total - frete_real`.
> O frete morde a margem, então um cliente longe pode faturar bem e dar pouco lucro.

## `itens_pedido.csv` (1.382 linhas)
O detalhe de cada pedido, um produto por linha. Liga com `pedidos.csv` por `pedido_id`.

| Coluna | O que é |
|---|---|
| `item_id` | Código da linha |
| `pedido_id` | De qual pedido essa linha faz parte |
| `sku` | Liga com `produtos.csv` |
| `qtd` | Quantas unidades |
| `preco_unitario` / `custo_unitario` | Preço e custo por unidade |
| `valor_linha` / `custo_linha` / `margem_linha` | Totais da linha |

## `clientes.csv` (100 linhas)

| Coluna | O que é |
|---|---|
| `cliente_codigo` | Chave (liga com `pedidos.csv`) |
| `nome` | Nome fantasia (fictício) |
| `segmento` | Ramo (alimentício, cosmético, distribuidor, farmacêutico, varejo, ecommerce...) |
| `porte` | PP, P, M (porte da empresa) |
| `cidade` / `uf` | Onde fica |
| `vendedor_codigo` | Quem atende |
| `canal` | `interno` ou `externo` |
| `ticket_medio_mensal` | Quanto costuma comprar por mês |
| `margem_bandeira` | Semáforo de margem: `verde`, `amarela` ou `vermelha` |

## `produtos.csv` (9 linhas)
3 categorias (pequena, média, grande) × 3 variantes (padrão, customizada, premium).

| Coluna | O que é |
|---|---|
| `sku` | Chave (liga com `itens_pedido.csv`) |
| `nome` / `categoria` / `variante` | Descrição |
| `preco_unitario` / `custo_unitario` / `margem_unitaria` / `margem_pct` | Preço, custo e margem |

## `vendedores.csv` (8 linhas)
| Coluna | O que é |
|---|---|
| `vendedor_codigo` | Chave (liga com `clientes.csv` e `pedidos.csv`) |
| `nome_completo` / `apelido` | Nome |
| `tipo` | `interno` ou `externo` |
| `regiao_atendimento` | Área que cobre |
| `ano_admissao` / `num_clientes_carteira` | Tempo de casa e tamanho da carteira |
