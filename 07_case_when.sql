SELECT idCliente,
       QtdePontos,
      CASE 
        WHEN QtdePontos <= 500 THEN 'Ponei'
        WHEN QtdePontos > 500 THEN 'Mestre'
        ELSE 'Mago Supremo'
      END AS Categoria
FROM clientes

ORDER BY QtdePontos ASC


