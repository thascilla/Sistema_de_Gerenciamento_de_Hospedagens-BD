CREATE OR REPLACE FUNCTION VerificarDisponibilidadeQuarto(
    IN p_quarto_id INT,
    IN p_data DATE
)
RETURNS BOOLEAN  -- Define o tipo de retorno como BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
    v_disponivel BOOLEAN;
BEGIN
    -- Verificar se existe alguma hospedagem que ocupe o quarto na data especificada
    SELECT EXISTS (
        SELECT 1
        FROM Hospedagem h
        WHERE h.quarto_id = p_quarto_id
          AND p_data BETWEEN h.dt_checkin AND h.dt_checkout
          AND h.status_hosp IN ('reserva', 'hospedado')
    )
    INTO v_disponivel;

    -- Retornar o valor booleano indicando a disponibilidade
    RETURN NOT v_disponivel;  -- Retorna TRUE se estiver disponível, FALSE se ocupado
END $$;


SELECT VerificarDisponibilidadeQuarto(1, '2024-07-15');
