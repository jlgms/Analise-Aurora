# Análise de dados — Embalagens Aurora

Portfólio de **João Lucas**, formado no Primeiro Crachá (Programa Imersão Aurora).

Análise de 3 meses de operação de uma indústria de embalagens do interior do Paraná:
**100 clientes, 696 pedidos, 9 produtos**. Uso SQL, Python (pandas) e Excel pra responder
perguntas de negócio a partir do dado bruto.

> Os dados são de uma empresa fictícia usada numa imersão de dados. Os números são reais
> no sentido de coerentes entre si: as tabelas cruzam e as contas fecham.

## O que tem neste repositório

- **Os CSVs (pedidos, itens, clientes, produtos, vendedores) + dicionário**
- **5 consultas no SQLite**
- **Notebook de análise em Python/pandas**
- **Dashboard no Excel**

---

## A pergunta

**Por que um mês despencou de faturamento, e onde o faturamento esconde pouca margem?**

---

## O que eu apliquei

- **SQL** — `SELECT`, `WHERE`, `GROUP BY`, agregações (`SUM`, `COUNT`, `AVG`), `HAVING`,
  `JOIN` entre tabelas, `ORDER BY`.
- **Python / pandas** — `read_csv`, `groupby`, `agg`, `merge`, colunas calculadas,
  gráfico com matplotlib.
- **Excel** — tabela dinâmica, `PROCV`, `SE`, `SOMASE`, coluna calculada, gráficos e
  montagem de dashboard.

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
