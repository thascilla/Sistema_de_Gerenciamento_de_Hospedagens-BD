CREATE OR REPLACE FUNCTION ValorMedioDiariasHotel(
    IN p_hotel_id INT
)
RETURNS DECIMAL(10, 2)  -- Define o tipo de retorno como DECIMAL(10, 2)
LANGUAGE plpgsql
AS $$
DECLARE
    v_media_diarias DECIMAL(10, 2);
BEGIN
    -- Calcular o valor médio das diárias dos quartos do hotel específico
    SELECT AVG(q.preco_diaria)
    INTO v_media_diarias
    FROM Quarto q
    WHERE q.hotel_id = p_hotel_id;

    -- Retornar o valor médio das diárias
    RETURN v_media_diarias;
END $$;

SELECT ValorMedioDiariasHotel(1);
