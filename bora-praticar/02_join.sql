-- Qual categoria tem mais produtos vendidos?

SELECT
      t2.DescCategoriaProduto AS categoria_produto,
      count(DISTINCT t1.IdTransacao) AS numero_transacoes
FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

GROUP BY t2.DescCategoriaProduto
ORDER BY numero_transacoes DESC
LIMIT 1;

 -- Em 2024, quantas transações de Lovers tivemos?

SELECT
      COUNT(1) AS qtd_transacoes_lovers_2024
FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t1.DtCriacao >= '2024-01-01'
AND t1.DtCriacao < '2024-12-31'
AND t3.DescCategoriaProduto = 'lovers';

-- Qual mês tivemos mais lista de presença assinada?

SELECT
      substr(t1.DtCriacao, 1, 7) AS anoMes,
      count(distinct t1.IdTransacao) AS qtdeTransacao
FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescNomeProduto = 'Lista de presença'

GROUP BY anoMes

ORDER BY qtdeTransacao DESC
LIMIT 1