# Dashboard de vendas no Excel (ou Google Sheets)

O dado bruto está em [`../dados/pedidos.csv`](../dados/pedidos.csv). Aqui você monta, do
zero, um painel que responde três perguntas: **quanto vendemos por mês**, **quais os
maiores clientes** e **onde está a margem**. É o mesmo raciocínio da tabela dinâmica que
você fez na imersão, agora no seu próprio arquivo.

> **Dica de importação.** O CSV usa vírgula como separador e ponto no decimal (padrão
> internacional). No **Google Sheets** (grátis, recomendado) é só `Arquivo → Importar →
> Enviar` e ele entende sozinho. No **Excel**, use `Dados → Obter Dados → De Texto/CSV`,
> escolha separador **Vírgula** e confira se as colunas de valor vieram como número.

## Passo 1 — Uma coluna de mês e uma de margem líquida

Com os dados numa aba (digamos que começam na linha 2), crie duas colunas novas à direita:

- **Mês** (ex. coluna N): `=ESQUERDA(B2;7)` — pega o `AAAA-MM` da data do pedido.
- **Margem líquida** (ex. coluna O): `=H2-I2-K2` — valor menos custo do produto menos frete.

Arraste as duas fórmulas até a última linha.

## Passo 2 — Tabela dinâmica de faturamento por mês

1. Selecione os dados (com cabeçalho) e insira uma **Tabela Dinâmica**.
2. Arraste **Mês** para *Linhas* e **valor_total** para *Valores* (como *Soma*).
3. Você vê o vale de abril e a recuperação de junho na hora.
4. Clique na tabela e insira um **Gráfico de Colunas**: é o primeiro quadro do painel.

## Passo 3 — Top 10 clientes

Numa nova tabela dinâmica:

1. **cliente_codigo** em *Linhas*, **valor_total** (Soma) em *Valores*.
2. Ordene do maior pro menor e deixe os 10 primeiros.
3. Para mostrar o nome em vez do código, traga o nome com `PROCV` a partir de
   `clientes.csv`, ou importe a tabela de clientes e cruze.

## Passo 4 — Margem por segmento (o quadro que revela o lucro)

1. Traga o **segmento** de cada pedido com `PROCV` (busca o `cliente_codigo` do pedido na
   tabela de clientes e devolve o segmento).
2. Tabela dinâmica: **segmento** em *Linhas*; em *Valores*, **Soma de valor_total** e
   **Soma da margem líquida**.
3. Crie uma coluna calculada `margem % = margem / faturamento`.
4. Ordene por faturamento. Fica claro que faturar muito (ecommerce, varejo) não é o
   mesmo que lucrar: a margem % conta a outra metade da história.

## Passo 5 — Monte o painel

Numa aba **Dashboard**, junte os três gráficos (faturamento por mês, top clientes,
margem por segmento) lado a lado, com um título e a data. Esse print é o que entra no
seu portfólio: salve como imagem (`Ctrl+C` no gráfico → colar como imagem) e coloque na
pasta do repositório, ou tire um print da aba inteira.

> Salve o arquivo final como `dashboard-aurora.xlsx` dentro desta pasta `excel/` antes de
> subir pro GitHub. Assim quem abrir seu repositório vê o painel pronto, além do passo a
> passo.
