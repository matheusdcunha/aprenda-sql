WITH tabela_nova AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
)


SELECT count(distinct idCliente)

FROM transacoes as t1

WHERE t1.idCliente IN tabela_nova

AND substr(DtCriacao, 1, 10) = '2025-08-29'