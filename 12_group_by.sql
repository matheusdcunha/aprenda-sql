SELECT IdProduto, 
       count(*)

FROM transacao_produto

GROUP BY IdProduto;

SELECT 
  strftime('%d',datetime(DtCriacao)) AS data_criacao,
  count(idCliente) AS clientes_criados
FROM transacoes

GROUP BY data_criacao
HAVING clientes_criados > 10000
ORDER BY clientes_criados DESC; 

SELECT IdCliente AS id_cliente,
       sum(qtdePontos) AS cliente_total_pontos,
       count(IdTransacao) AS cliente_total_qtd_transacao
FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY IdCliente

ORDER BY cliente_total_pontos DESC

LIMIT 10;