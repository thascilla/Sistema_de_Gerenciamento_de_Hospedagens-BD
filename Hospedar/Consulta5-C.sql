CREATE OR REPLACE PROCEDURE RegistrarCheckout(
    IN p_hospedagem_id INT,
    IN p_data_checkout DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Atualizar a data de check-out e o status da hospedagem
    UPDATE Hospedagem
    SET 
        dt_checkout = p_data_checkout,
        status_hosp = 'finalizada'
    WHERE
        hospedagem_id = p_hospedagem_id;

END $$;


CALL RegistrarCheckout(1, '2024-07-15');
