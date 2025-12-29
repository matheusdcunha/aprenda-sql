-- Quantos clientes tem email cadastrado?

SELECT sum(flEmail) AS qtd_clientes_email
FROM clientes;

-- Qual cliente juntou mais pontos positivos em 2025-05?

SELECT idCliente,
       sum(QtdePontos) as qtd_pontos

FROM transacoes

WHERE DtCriacao >= '2025-05-01'
AND DtCriacao < '2025-06-01'
AND QtdePontos > 0

GROUP BY idCliente

ORDER BY qtd_pontos DESC
LIMIT 1;


-- Qual cliente fez mais transações no ano de 2024?

SELECT IdCliente AS id_cliente, count(*) AS total_transacoes
FROM transacoes

WHERE DtCriacao >= '2024-01-01'
AND DtCriacao < '2025-01-01'

GROUP BY IdCliente
ORDER BY total_transacoes DESC;

-- Quantos produtos são de rpg?

SELECT count(*) AS qtd_produtos_rpg
FROM produtos

WHERE DescCategoriaProduto = 'rpg';

-- Qual o valor médio de pontos positivos por dia?

SELECT 
      sum(QtdePontos) AS totalPontos,
      count(DISTINCT substr(DtCriacao, 1,10)) AS qtdeDiasUnicos,
      sum(QtdePontos) / count(DISTINCT substr(DtCriacao, 1,10)) AS avgPontosDia

FROM transacoes
WHERE QtdePontos > 0


-- Qual dia da semana quem mais pedidos em 2025?

SELECT 
      date(DtCriacao) AS dia,
      CASE
      WHEN strftime('%w', date(DtCriacao)) = '0' THEN 'DOMINGO'
      WHEN strftime('%w', date(DtCriacao)) = '1' THEN 'SEGUNDA'
      WHEN strftime('%w', date(DtCriacao)) = '2' THEN 'TERCA'
      WHEN strftime('%w', date(DtCriacao)) = '3' THEN 'QUARTA'
      WHEN strftime('%w', date(DtCriacao)) = '4' THEN 'QUINTA'
      WHEN strftime('%w', date(DtCriacao)) = '5' THEN 'SEXTA'
      ELSE 'SABADO'
      
      END AS dia_semana,
      count (1) AS pedido

FROM transacoes

WHERE dia >= '2025-01-01'
AND dia < '2025-12-31'
GROUP BY dia_semana
ORDER BY pedido DESC
LIMIT 1

-- Qual o produto mais transacionado?

SELECT
      IdProduto,
      count(1) AS qtd_transacoes
      

FROM transacao_produto
GROUP BY IdProduto
ORDER BY qtd_transacoes DESC
LIMIT 1

-- Qual o produto com mais pontos transacionados?
SELECT
      IdProduto,
      sum (vlProduto) AS pontos_tranascionado
FROM transacao_produto
GROUP BY IdProduto
ORDER BY pontos_tranascionado DESC
LIMIT 1