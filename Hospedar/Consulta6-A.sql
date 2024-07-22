CREATE OR REPLACE FUNCTION TotalHospedagensHotel(
    IN p_hotel_id INT
)
RETURNS INTEGER  -- Define o tipo de retorno como INTEGER
LANGUAGE plpgsql
AS $$
DECLARE
    v_total_hospedagens INTEGER;
BEGIN
    -- Contar o número de hospedagens para o hotel específico
    SELECT COUNT(*)
    INTO v_total_hospedagens
    FROM Hospedagem h
    WHERE h.hotel_id = p_hotel_id;

    -- Retornar o total de hospedagens encontradas
    RETURN v_total_hospedagens;
END $$;


SELECT TotalHospedagensHotel(1);
