CREATE OR REPLACE PROCEDURE CalcularTotalHospedagem(
    IN p_hospedagem_id INT
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_diarias INTEGER;
    v_preco_diaria DECIMAL(10, 2);
    v_valor_total DECIMAL(10, 2);
BEGIN
    -- Obter as informações necessárias para o cálculo
    SELECT
        DATE_PART('day', age(h.dt_checkout, h.dt_checkin)) INTO v_diarias
    FROM
        Hospedagem h
    WHERE
        h.hospedagem_id = p_hospedagem_id;

    -- Obter o preço da diária do quarto
    SELECT
        q.preco_diaria INTO v_preco_diaria
    FROM
        Quarto q
    JOIN
        Hospedagem h ON h.quarto_id = q.quarto_id
    WHERE
        h.hospedagem_id = p_hospedagem_id;

    -- Calcular o valor total da hospedagem
    v_valor_total := v_diarias * v_preco_diaria;

    -- Atualizar o valor_total_hosp na tabela Hospedagem
    UPDATE Hospedagem
    SET valor_total_hosp = v_valor_total
    WHERE hospedagem_id = p_hospedagem_id;

END $$;


CALL CalcularTotalHospedagem(5);


