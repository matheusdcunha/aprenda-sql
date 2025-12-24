-- Selecione todos os clientes com email cadastrado
SELECT *
FROM clientes
WHERE flEmail = 1;

-- Selecione todas as transações de 50 pontos (exatos)
SELECT *
FROM transacoes
WHERE QtdePontos = 50;

-- Selecione todos os clientes com mais de 500 pontos
SELECT *
FROM clientes
WHERE QtdePontos > 500;

-- Selecione produtos que contêm 'churn' no nome

SELECT *
FROM produtos
WHERE DescCategoriaProduto
LIKE '%churn%'
-- IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp');