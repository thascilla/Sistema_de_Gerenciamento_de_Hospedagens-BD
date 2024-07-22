SELECT
    h.nome AS nome_hotel,
    h.cidade,
    q.tipo AS tipo_quarto,
    q.preco_diaria
FROM
    Hotel h
JOIN
    Quarto q ON h.hotel_id = q.hotel_id
ORDER BY
    h.nome, q.tipo;
