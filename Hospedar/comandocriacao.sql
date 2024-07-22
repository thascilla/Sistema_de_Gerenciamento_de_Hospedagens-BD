--Criação do banco

CREATE DATABASE hospedar_db;


-- Criação da tabela "Hotel"
CREATE TABLE Hotel (
    hotel_id SERIAL PRIMARY KEY,
    nome VARCHAR NOT NULL,
    cidade VARCHAR NOT NULL,
    uf CHAR(2) NOT NULL,
    classificacao INT NOT NULL CHECK (classificacao BETWEEN 1 AND 5)
);

-- Criação da tabela "Quarto"
CREATE TABLE Quarto (
    quarto_id SERIAL PRIMARY KEY,
    hotel_id INT NOT NULL,
    numero INT NOT NULL,
    tipo VARCHAR NOT NULL,
    preco_diaria DECIMAL NOT NULL,
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

-- Criação da tabela "Cliente"
CREATE TABLE Cliente (
    cliente_id SERIAL PRIMARY KEY,
    nome VARCHAR NOT NULL,
    email VARCHAR NOT NULL UNIQUE,
    telefone VARCHAR NOT NULL,
    cpf VARCHAR NOT NULL UNIQUE
);

-- Criação da tabela "Hospedagem"
CREATE TABLE Hospedagem (
    hospedagem_id SERIAL PRIMARY KEY,
	hotel_id int not null,
    cliente_id INT NOT NULL,
    quarto_id INT NOT NULL,
    dt_checkin DATE NOT NULL,
    dt_checkout DATE NOT NULL,
    valor_total_hosp FLOAT NOT NULL,
    status_hosp VARCHAR NOT NULL CHECK (status_hosp IN ('reserva', 'finalizada', 'hospedado', 'cancelada')),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(cliente_id),
    FOREIGN KEY (quarto_id) REFERENCES Quarto(quarto_id)
);