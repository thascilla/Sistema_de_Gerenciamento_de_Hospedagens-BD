SELECT
    h.hotel_id,
    h.nome AS nome_hotel,
    SUM(hosp.valor_total_hosp) AS receita_total,
    'finalizada' AS status_hosp
FROM
    Hotel h
inner JOIN
    Quarto q ON h.hotel_id = q.hotel_id
inner JOIN
    Hospedagem hosp ON q.quarto_id = hosp.quarto_id
WHERE   
    hosp.status_hosp = 'finalizada'
GROUP BY
    h.hotel_id, h.nome
ORDER BY
    receita_total DESC;

