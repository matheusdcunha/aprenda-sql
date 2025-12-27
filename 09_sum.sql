SELECT
       SUM(QtdePontos),
       SUM(CASE
          WHEN QtdePontos > 0 THEN QtdePontos
       END) AS qtdePontosPositivos,
       SUM(CASE
          WHEN QtdePontos < 0 THEN QtdePontos
       END) AS qtdePontosNegativos
FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY QtdePontos DESC