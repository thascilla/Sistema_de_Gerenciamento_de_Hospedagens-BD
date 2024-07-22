SELECT
    c.cliente_id,
    c.nome AS nome_cliente,
    SUM(hosp.valor_total_hosp) AS total_gasto,
    'finalizada' AS status_hosp
FROM
    Cliente c
JOIN
    Hospedagem hosp ON c.cliente_id = hosp.cliente_id
WHERE
    hosp.status_hosp = 'finalizada'
GROUP BY
    c.cliente_id, c.nome, hosp.status_hosp
ORDER BY
    total_gasto DESC;
