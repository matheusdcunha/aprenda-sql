SELECT count(1) AS total_transacoes_julho,
       count (DISTINCT idCliente) AS total_clientes_julho

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY DtCriacao DESC