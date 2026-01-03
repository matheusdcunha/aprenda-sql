SELECT count(distinct idCliente)

FROM transacoes as t1

WHERE t1.idCliente IN(
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
)

AND substr(DtCriacao, 1, 10) = '2025-08-29'