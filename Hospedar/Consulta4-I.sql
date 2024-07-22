SELECT
    q.quarto_id,
    q.numero,
    q.tipo,
    q.preco_diaria,
    q.hotel_id,
    hosp.status_hosp
FROM
    Quarto q
JOIN
    Hospedagem hosp ON q.quarto_id = hosp.quarto_id
WHERE
    hosp.status_hosp IN ('reserva', 'cancelada');
