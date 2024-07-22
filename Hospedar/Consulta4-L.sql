ALTER TABLE Hospedagem
ADD COLUMN checkin_realizado BOOLEAN;


UPDATE Hospedagem
SET checkin_realizado = 
    CASE 
        WHEN status_hosp IN ('finalizada', 'hospedado') THEN TRUE
        ELSE FALSE
    END;
