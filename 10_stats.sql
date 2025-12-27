SELECT round(AVG(qtdePontos), 2) AS media_pontos_cliente, 
       SUM(flEmail) AS clientes_email

FROM clientes