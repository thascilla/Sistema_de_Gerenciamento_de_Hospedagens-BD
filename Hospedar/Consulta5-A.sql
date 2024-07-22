CREATE OR REPLACE PROCEDURE RegistrarCheckIn(
    IN p_hospedagem_id INT,
    IN p_data_checkin DATE
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Hospedagem
    SET dt_checkin = p_data_checkin,
        status_hosp = 'hospedado'
    WHERE hospedagem_id = p_hospedagem_id;
END $$;


CALL RegistrarCheckIn(1, '2024-07-15');

