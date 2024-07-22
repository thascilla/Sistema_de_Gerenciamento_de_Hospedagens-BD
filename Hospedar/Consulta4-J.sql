SELECT
    h.nome AS nome_hotel,
    q.tipo AS tipo_quarto,
    AVG(q.preco_diaria) AS media_preco_diaria
FROM
    Quarto q
JOIN
    Hotel h ON q.hotel_id = h.hotel_id
GROUP BY
    h.nome, q.tipo;
