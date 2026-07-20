# Análise de dados — Embalagens Aurora

Portfólio de **João Lucas**, formado no Primeiro Crachá (Programa Imersão Aurora).

Análise de 3 meses de operação de uma indústria de embalagens do interior do Paraná:
**100 clientes, 696 pedidos, 9 produtos**. Uso SQL, Python (pandas) e Excel pra responder
perguntas de negócio a partir do dado bruto.

> Os dados são de uma empresa fictícia usada numa imersão de dados. Os números são reais
> no sentido de coerentes entre si: as tabelas cruzam e as contas fecham.

## O que tem neste repositório

```
.
├── dados/        CSVs (pedidos, itens, clientes, produtos, vendedores) + dicionário
├── sql/          5 consultas feitas no SQLite
├── python/       Notebook de análise em pandas 
└── excel/        Planilha e Dashboard 
```

## A pergunta

**Por que um mês despencou de faturamento, e onde o faturamento esconde pouca margem?**

--

## Desafios

- **Achar o mês que despencou** — Qual foi o vale? De quanto pra quanto ele
recuperou até junho?
- **Os maiores clientes** — Quais são os 10 clientes que mais faturam? De que segmentos eles são? O faturamento está concentrado em poucos clientes ou espalhado?
- **O faturamento que engana** — Entre os que faturam mais de R$ 300 mil, quem tem a **pior**
margem? Algum dá prejuízo? O que isso sugere fazer com esse cliente?
- **O mix de produto** — Qual variante (padrão, customizada, premium) rende a maior margem %? Se a Aurora quisesse melhorar a margem sem vender mais volume, o que ela deveria empurrar?
- **Onde está o lucro** — Qual segmento fatura muito mas lucra pouco? Qual é o contrário?

---

## O que eu apliquei

- **SQL** — `SELECT`, `WHERE`, `GROUP BY`, agregações (`SUM`, `COUNT`, `AVG`), `HAVING`,
  `JOIN` entre tabelas, `ORDER BY`.
- **Python / pandas** — `read_csv`, `groupby`, `agg`, `merge`, colunas calculadas,
  gráfico com matplotlib.
- **Excel** — tabela dinâmica, `PROCV`, `SE`, `SOMASE`, coluna calculada, gráficos.

---

## O que a análise mostra:

- **Abril foi o vale** (~R$ 6,56 mi) e junho recuperou forte (~R$ 9,85 mi).
- **Faturar não é lucrar.** Há clientes que faturam alto e mesmo assim dão margem
  espremida, alguns até negativa, quando se desconta custo e frete. É onde mora a decisão
  de repensar preço ou frequência de atendimento.
- **O mix de produto importa.** A linha Premium rende bem mais margem % que a Padrão:
  dá pra melhorar o lucro mudando o que se vende, sem vender mais volume.
- **Volume ≠ lucro por segmento.** Alimentício fatura muito e ainda mantém boa margem;
  ecommerce e varejo faturam pouco e com margem apertada.

---


*Formado no Primeiro Crachá — Programa Imersão Aurora (simulação de uma indústria real).*
