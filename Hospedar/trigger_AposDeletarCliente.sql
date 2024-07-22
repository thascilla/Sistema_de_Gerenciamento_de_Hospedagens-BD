
---Criar a Tabela de log primeiro

CREATE TABLE ClienteLog (
    log_id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    nome VARCHAR NOT NULL,
    data_exclusao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--------------------------Agora, vamos criar o trigger que será acionado após a exclusão de um cliente na tabela Cliente 

CREATE OR REPLACE FUNCTION AposDeletarCliente()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO ClienteLog (cliente_id, nome)
    VALUES (OLD.cliente_id, OLD.nome);

    RETURN OLD;
END $$;

CREATE TRIGGER AposDeletarCliente
AFTER DELETE ON Cliente
FOR EACH ROW
EXECUTE FUNCTION AposDeletarCliente();


