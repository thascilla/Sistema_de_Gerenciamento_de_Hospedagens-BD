-- Criar o trigger AntesDeInserirHospedagem
CREATE OR REPLACE FUNCTION AntesDeInserirHospedagem()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    -- Verificar se o quarto está disponível na data de check-in da nova hospedagem
    IF NOT VerificarDisponibilidadeQuarto(NEW.quarto_id, NEW.dt_checkin) THEN
        RAISE EXCEPTION 'Quarto não está disponível na data de check-in. Inserção cancelada.';
    END IF;

    RETURN NEW;
END $$;

-- Associar o trigger à tabela Hospedagem
CREATE TRIGGER AntesDeInserirHospedagem
BEFORE INSERT ON Hospedagem
FOR EACH ROW
EXECUTE FUNCTION AntesDeInserirHospedagem();

