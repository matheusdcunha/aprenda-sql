SELECT idCliente,
       DtCriacao,
       datetime(DtCriacao) AS DtCriacaoFmt,
       strftime('%w',datetime(DtCriacao)) AS DiaDaSemana
FROM clientes