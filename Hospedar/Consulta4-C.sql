SELECT
    c.nome AS nome_cliente,
    h.nome AS nome_hotel,
    q.tipo AS tipo_quarto,
    hosp.dt_checkin,
    hosp.dt_checkout,
    hosp.status_hosp
FROM
    Cliente c
JOIN
    Hospedagem hosp ON c.cliente_id = hosp.cliente_id
JOIN
    Quarto q ON hosp.quarto_id = q.quarto_id
JOIN
    Hotel h ON q.hotel_id = h.hotel_id
WHERE
    c.cliente_id = 3
ORDER BY
    hosp.dt_checkin;


