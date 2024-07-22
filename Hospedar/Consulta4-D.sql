SELECT
    c.cliente_id,
    c.nome AS nome_cliente,
    COUNT(*) AS total_hospedagens
FROM
    Cliente c
JOIN
    Hospedagem hosp ON c.cliente_id = hosp.cliente_id
GROUP BY
    c.cliente_id, c.nome
ORDER BY
    total_hospedagens DESC
LIMIT 1;


