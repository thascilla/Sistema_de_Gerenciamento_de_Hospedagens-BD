SELECT
    c.cliente_id,
    c.nome AS nome_cliente,
    h.nome AS nome_hotel,
    hosp.dt_checkin,
    hosp.dt_checkout,
    hosp.status_hosp
FROM
    Cliente c
JOIN
    Hospedagem hosp ON c.cliente_id = hosp.cliente_id
JOIN
    Hotel h ON hosp.hotel_id = h.hotel_id
WHERE
    hosp.status_hosp = 'reserva'
    AND h.nome = 'Hotel Primavera'
