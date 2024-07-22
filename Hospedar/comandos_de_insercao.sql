--Criação do banco

CREATE DATABASE hospedar_db;

-- Inserindo dados na tabela "Hotel"
INSERT INTO Hotel (hotel_id,nome, cidade, uf, classificacao)
VALUES 
    (1,'Hotel Primavera', 'São Paulo', 'SP', 5),
    (2,'Hotel Verão', 'Rio de Janeiro', 'RJ', 4);

-- Inserindo dados na tabela "Quarto"
INSERT INTO Quarto (hotel_id, numero, tipo, preco_diaria)
VALUES 
    (1, 101, 'Standard', 200.00),
    (1, 102, 'Standard', 200.00),
    (1, 103, 'Deluxe', 300.00),
    (1, 104, 'Suíte', 500.00),
    (1, 105, 'Suíte', 500.00),
    (2, 201, 'Standard', 180.00),
    (2, 202, 'Standard', 180.00),
    (2, 203, 'Deluxe', 280.00),
    (2, 204, 'Suíte', 450.00),
    (2, 205, 'Suíte', 450.00);

-- Inserindo dados na tabela "Cliente"
INSERT INTO Cliente (cliente_id,nome, email, telefone, cpf)
VALUES 
    (1,'João Silva', 'joao.silva@example.com', '11987654321', '123.456.789-00'),
    (2,'Maria Oliveira', 'maria.oliveira@example.com', '21987654321', '987.654.321-00'),
    (3,'Carlos Souza', 'carlos.souza@example.com', '31987654321', '456.789.123-00');

INSERT INTO Hospedagem (hotel_id, cliente_id, quarto_id, dt_checkin, dt_checkout, valor_total_hosp, status_hosp)
VALUES
    (1, 1, 31, '2024-07-01', '2024-07-05', 500.00, 'reserva'),
    (2, 2, 32, '2024-07-02', '2024-07-06', 550.00, 'reserva'),
    (1, 3, 33, '2024-07-03', '2024-07-07', 600.00, 'reserva'),
    (2, 1, 34, '2024-07-04', '2024-07-08', 620.00, 'reserva'),
    (1, 2, 35, '2024-07-05', '2024-07-09', 700.00, 'reserva');

-- Inserção de 5 registros com status 'finalizada'
INSERT INTO Hospedagem (hotel_id, cliente_id, quarto_id, dt_checkin, dt_checkout, valor_total_hosp, status_hosp)
VALUES
    (2, 3, 36, '2024-07-06', '2024-07-10', 520.00, 'finalizada'),
    (1, 1, 37, '2024-07-07', '2024-07-11', 580.00, 'finalizada'),
    (2, 2, 38, '2024-07-08', '2024-07-12', 630.00, 'finalizada'),
    (1, 3, 39, '2024-07-09', '2024-07-13', 640.00, 'finalizada'),
    (2, 1, 40, '2024-07-10', '2024-07-14', 720.00, 'finalizada');

-- Inserção de 5 registros com status 'hospedado'
INSERT INTO Hospedagem (hotel_id, cliente_id, quarto_id, dt_checkin, dt_checkout, valor_total_hosp, status_hosp)
VALUES
    (1, 2, 31, '2024-07-11', '2024-07-15', 550.00, 'hospedado'),
    (2, 3, 32, '2024-07-12', '2024-07-16', 600.00, 'hospedado'),
    (1, 1, 33, '2024-07-13', '2024-07-17', 650.00, 'hospedado'),
    (2, 2, 34, '2024-07-14', '2024-07-18', 670.00, 'hospedado'),
    (1, 3, 35, '2024-07-15', '2024-07-19', 750.00, 'hospedado');

-- Inserção de 5 registros com status 'cancelada'
INSERT INTO Hospedagem (hotel_id, cliente_id, quarto_id, dt_checkin, dt_checkout, valor_total_hosp, status_hosp)
VALUES
    (2, 1, 36, '2024-07-16', '2024-07-20', 530.00, 'cancelada'),
    (1, 2, 37, '2024-07-17', '2024-07-21', 590.00, 'cancelada'),
    (2, 3, 38, '2024-07-18', '2024-07-22', 640.00, 'cancelada'),
    (1, 1, 39, '2024-07-19', '2024-07-23', 660.00, 'cancelada'),
    (2, 2, 40, '2024-07-20', '2024-07-24', 730.00, 'cancelada');

