-- Inserir dados na tabela Pessoa
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, telemovel)
VALUES 
    (1, 'João Silva', '1990-01-01', 963647906),
    (2, 'Maria Oliveira', '1985-05-15', 917654321),
    (3, 'Carlos Santos', '1995-03-20', 911249303),
    (4, 'Ana Pereira', '1988-08-10', 936008687),
    (5, 'Pedro Almeida', '1980-12-05', 914552231),
    (6, 'Catarina Mendes', '1993-06-25', 960572847),
    (7, 'Rui Costa', '1982-09-18', 932174091),
    (8, 'Sofia Ferreira', '1998-04-30', 917335899),
    (9, 'Miguel Oliveira', '1996-11-12', 914290570),
    (10, 'Inês Rodrigues', '1987-07-08', 918137000);
    (11, 'Joana Ferreira', '1990-08-15', 912345678),
    (12, 'António Silva', '1985-05-20', 966274609),
    (13, 'Carla Oliveira', '1978-11-30', 933456789),
    (14, 'Ricardo Santos', '1992-04-25', 918765432),
    (15, 'Margarida Costa', '1980-09-05', 965432109),
    (16, 'Hugo Martins', '1975-02-10', 934567890),
    (17, 'Sofia Pereira', '1987-07-22', 917654321),
    (18, 'Paulo Alves', '1983-12-18', 910123456),
    (19, 'Ana Sousa', '1995-03-08', 932109876),
    (20, 'Jorge Oliveira', '1972-06-14', 912708544);
    (21, 'Joana Silva', '1990-08-15', 917325278),
    (22, 'Hugo Santos', '1985-05-20', 965812187),
    (23, 'Catarina Ferreira', '1998-11-10', 912331698),
    (24, 'Ricardo Oliveira', '1979-03-25', 917688821),
    (25, 'Inês Martins', '1987-09-02', 968137532),
    (26, 'Carlos Almeida', '1995-07-14', 916003119),
    (27, 'Sofia Pereira', '1980-12-30', 911203997),
    (28, 'Miguel Costa', '1993-04-05', 967876543),
    (29, 'Ana Mendes', '1982-06-18', 933456789),
    (30, 'Diogo Santos', '1997-01-22', 918987654);

-- Inserir dados na tabela Cliente
INSERT INTO Cliente (idCliente, idPessoa)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);
    (21, 21),
    (22, 22),
    (23, 23),
    (24, 24),
    (25, 25),
    (26, 26),
    (27, 27),
    (28, 28),
    (29, 29),
    (30, 30);

-- Inserir dados na tabela Vendedor
INSERT INTO Vendedor (idVendedor, dataInicio, numVendas, salario, idPessoa)
VALUES
    (1, '2010-03-20', 100, 50000.00, 2),
    (2, '2015-06-12', 80, 45000.00, 3),
    (3, '2012-09-25', 120, 60000.00, 4),
    (4, '2018-01-10', 90, 52000.00, 5),
    (5, '2016-04-05', 110, 55000.00, 6),
    (6, '2014-08-18', 95, 48000.00, 7),
    (7, '2017-11-22', 88, 46000.00, 8),
    (8, '2019-02-28', 105, 58000.00, 9),
    (9, '2013-07-15', 75, 42000.00, 10),
    (10, '2011-10-30', 130, 62000.00, 1);
    (11, '2017-03-15', 120, 2500.00, 1),
    (12, '2016-06-22', 90, 2000.00, 2),
    (13, '2018-01-05', 150, 2800.00, 3),
    (14, '2015-07-18', 110, 2300.00, 4),
    (15, '2019-04-12', 135, 2600.00, 5),
    (16, '2014-09-28', 105, 2100.00, 6),
    (17, '2020-02-20', 130, 2700.00, 7),
    (18, '2013-11-25', 95, 1900.00, 8),
    (19, '2021-05-10', 140, 2900.00, 9),
    (20, '2012-08-08', 100, 2200.00, 10);
    (21, 150, '2015-02-10', 3000.00, 21),
    (22, 200, '2018-09-05', 3500.00, 22),
    (23, 180, '2017-05-20', 3200.00, 23),
    (24, 220, '2020-11-12', 3800.00, 24),
    (25, 190, '2016-07-28', 3300.00, 25),
    (26, 210, '2019-03-15', 3600.00, 26),
    (27, 170, '2018-08-30', 3100.00, 27),
    (28, 240, '2021-02-03', 4000.00, 28),
    (29, 200, '2016-10-18', 3500.00, 29),
    (30, 180, '2014-04-25', 3200.00, 30);

-- Inserir dados na tabela Veiculo
INSERT INTO Veiculo (matricula, ano, condicao, garantia, modelo, idMarca)
VALUES
    ('AB-12-CD', 2020, 'Novo', 1, 'Sedan', 1),
    ('34-XY-56', 2018, 'Usado', 0, 'SUV', 2),
    ('JK-78-LM', 2021, 'Novo', 1, 'Hatchback', 1),
    ('YZ-45-NP', 2019, 'Usado', 0, 'Crossover', 2),
    ('WX-90-QR', 2017, 'Usado', 0, 'SUV', 1),
    ('BC-23-FG', 2022, 'Novo', 1, 'Coupé', 2),
    ('DE-67-HI', 2016, 'Usado', 0, 'Sedan', 1),
    ('LM-89-OP', 2020, 'Novo', 1, 'SUV', 2),
    ('FG-12-JK', 2018, 'Usado', 0, 'Hatchback', 1),
    ('OP-34-WX', 2021, 'Novo', 1, 'Crossover', 2);
    ('FG-67-HI', 2021, 'Novo', 'Sim', 'Corolla', 1),
    ('OP-89-WX', 2020, 'Usado', 'Sim', 'Focus', 2),
    ('AB-34-CD', 2019, 'Usado', 'Não', 'Civic', 3),
    ('LM-12-NP', 2022, 'Novo', 'Sim', 'Malibu', 4),
    ('YZ-56-QR', 2018, 'Usado', 'Sim', 'Golf', 5),
    ('JK-90-LM', 2020, 'Usado', 'Não', 'Rogue', 6),
    ('WX-23-FG', 2021, 'Novo', 'Sim', 'Elantra', 7),
    ('DE-45-HI', 2017, 'Usado', 'Sim', 'X3', 8),
    ('BC-67-JK', 2019, 'Usado', 'Não', 'CLA', 9),
    ('YZ-89-NP', 2022, 'Novo', 'Sim', 'A4', 10);
    ('YZ-12-XW', 2021, 'Novo', 'Sim', 'Sedan', 11),
    ('WX-34-YZ', 2019, 'Usado', 'Não', 'Hatchback', 12),
    ('UV-56-AB', 2020, 'Semi-Novo', 'Sim', 'SUV', 13),
    ('CD-78-EF', 2018, 'Usado', 'Não', 'Coupé', 14),
    ('GH-90-IJ', 2022, 'Novo', 'Sim', 'Minivan', 15),
    ('KL-12-MN', 2017, 'Usado', 'Não', 'Crossover', 16),
    ('OP-34-QR', 2016, 'Semi-Novo', 'Sim', 'Pickup', 17),
    ('ST-56-UV', 2015, 'Usado', 'Não', 'Sedan', 18),
    ('AB-78-CD', 2019, 'Novo', 'Sim', 'Hatchback', 19),
    ('EF-90-GH', 2020, 'Semi-Novo', 'Sim', 'SUV', 20);

-- Inserir dados na tabela Pagamento
INSERT INTO Pagamento (idPagamento, metodoPagamento, data, valor, idVenda)
VALUES
    (1, 'Cartão', '2022-01-10', 5000.00, 1),
    (2, 'Transferência', '2022-01-15', 7000.00, 2),
    (3, 'Dinheiro', '2022-02-01', 6000.00, 3),
    (4, 'Cartão', '2022-02-12', 7500.00, 4),
    (5, 'Transferência', '2022-03-05', 8200.00, 5),
    (6, 'Dinheiro', '2022-03-18', 6800.00, 6),
    (7, 'Cartão', '2022-04-02', 5300.00, 7),
    (8, 'Transferência', '2022-04-20', 7700.00, 8),
    (9, 'Dinheiro', '2022-05-08', 5900.00, 9),
    (10,'Cartão', '2022-05-20', 6900.00, 10);
    (11, 'Cartão', '2022-06-10', 7000.00, 11),
    (12, 'Transferência', '2022-06-25', 7200.00, 12),
    (13, 'Numerário', '2022-07-10', 6900.00, 13),
    (14, 'Cheque', '2022-07-25', 7300.00, 14),
    (15, 'MBWay', '2022-08-10', 7500.00, 15),
    (16, 'Cartão', '2022-08-25', 7200.00, 16),
    (17, 'Transferência', '2022-09-10', 7100.00, 17),
    (18, 'Numerário', '2022-09-25', 7300.00, 18),
    (19, 'Cheque', '2022-10-10', 7000.00, 19),
    (20, 'MBWay', '2022-10-25', 7500.00, 20);
     (21, 'Cartão de Crédito', '2022-01-12', 4200.00, 21),
    (22, 'Transferência Bancária', '2022-02-18', 4600.00, 22),
    (23, 'Dinheiro', '2022-03-25', 5000.00, 23),
    (24, 'Cheque', '2022-04-30', 5400.00, 24),
    (25, 'Cartão de Débito', '2022-06-05', 4800.00, 25),
    (26, 'Transferência Bancária', '2022-07-12', 5200.00, 26),
    (27, 'Dinheiro', '2022-08-18', 4600.00, 27),
    (28, 'Cheque', '2022-09-25', 5000.00, 28),
    (29, 'Cartão de Débito', '2022-10-30', 5400.00, 29),
    (30, 'Transferência Bancária', '2022-12-05', 5800.00, 30);

-- Inserir dados na tabela Venda
INSERT INTO Venda (idVenda, data, comissao, lucro, idCliente, idVendedor, idVeiculo, idPagamento)
VALUES
    (1, '2022-01-05', 2000.00, 3000.00, 1, 1, 'AB-12-CD', 1),
    (2, '2022-01-20', 2500.00, 4500.00, 2, 2, '34-XY-56', 2),
    (3, '2022-02-03', 1800.00, 4200.00, 3, 3, 'JK-78-LM', 3),
    (4, '2022-02-15', 2200.00, 5300.00, 4, 4, 'YZ-45-NP', 4),
    (5, '2022-03-10', 2700.00, 5500.00, 5, 5, 'WX-90-QR', 5),
    (6, '2022-03-25', 2000.00, 4800.00, 6, 6, 'BC-23-FG', 6),
    (7, '2022-04-10', 1500.00, 3800.00, 7, 7, 'DE-67-HI', 7),
    (8, '2022-04-22', 2000.00, 4900.00, 8, 8, 'LM-89-OP', 8),
    (9, '2022-05-10', 1800.00, 4100.00, 9, 9, 'FG-12-JK', 9),
    (10, '2022-05-25', 2500.00, 4800.00, 10, 10, 'OP-34-WX', 10);
    (11, '2022-06-10', 2000.00, 3200.00, 11, 11, 'FG-67-HI', 11),
    (12, '2022-06-25', 2400.00, 4600.00, 12, 12, 'OP-89-WX', 12),
    (13, '2022-07-10', 1800.00, 4300.00, 13, 13, 'AB-34-CD', 13),
    (14, '2022-07-25', 2200.00, 5400.00, 14, 14, 'LM-12-NP', 14),
    (15, '2022-08-10', 2700.00, 5600.00, 15, 15, 'YZ-56-QR', 15),
    (16, '2022-08-25', 2000.00, 4900.00, 16, 16, 'JK-90-LM', 16),
    (17, '2022-09-10', 1500.00, 3900.00, 17, 17, 'WX-23-FG', 17),
    (18, '2022-09-25', 1900.00, 4800.00, 18, 18, 'DE-45-HI', 18),
    (19, '2022-10-10', 2200.00, 5200.00, 19, 19, 'BC-67-JK', 19),
    (20, '2022-10-25', 2500.00, 5800.00, 20, 20, 'YZ-89-NP', 20);
    (21, '2022-01-10', 1800.00, 4200.00, 21, 21, 'AB-12-CD', 21),
    (22, '2022-02-15', 2000.00, 4600.00, 22, 22, 'CD-34-EF', 22),
    (23, '2022-03-20', 2200.00, 5000.00, 23, 23, 'EF-56-GH', 23),
    (24, '2022-04-25', 2400.00, 5400.00, 24, 24, 'GH-78-IJ', 24),
    (25, '2022-05-30', 2100.00, 4800.00, 25, 25, 'IJ-90-KL', 25),
    (26, '2022-06-05', 2300.00, 5200.00, 26, 26, 'KL-12-MN', 26),
    (27, '2022-07-10', 1900.00, 4600.00, 27, 27, 'MN-34-OP', 27),
    (28, '2022-08-15', 2200.00, 5000.00, 28, 28, 'OP-56-QR', 28),
    (29, '2022-09-20', 2500.00, 5400.00, 29, 29, 'QR-78-ST', 29),
    (30, '2022-10-25', 2800.00, 5800.00, 30, 30, 'ST-90-UV', 30);

-- Inserir dados na tabela Marca
INSERT INTO Marca (idMarca, nomeMarca, pais, ano)
VALUES
    (1, 'Toyota', 'Japão', 1937),
    (2, 'Ford', 'Estados Unidos', 1903),
    (3, 'Honda', 'Japão', 1948),
    (4, 'Chevrolet', 'Estados Unidos', 1911),
    (5, 'Volkswagen', 'Alemanha', 1937),
    (6, 'Nissan', 'Japão', 1933),
    (7, 'Hyundai', 'Coreia do Sul', 1967),
    (8, 'BMW', 'Alemanha', 1916),
    (9, 'Mercedes-Benz', 'Alemanha', 1926),
    (10, 'Audi', 'Alemanha', 1909);
    

-- Inserir dados na tabela Representante
INSERT INTO Representante (idRepresentante, nomeRepresentante, dataInicio)
VALUES
    (1, 'Carlos Costa', '2015-01-10'),
    (2, 'Ana Silva', '2018-04-22'),
    (3, 'Miguel Durães', '2016-09-15'),
    (4, 'Sofia Silva', '2017-12-05'),
    (5, 'Rui Maia', '2019-02-28'),
    (6, 'Catarina Patrocínio', '2014-07-20'),
    (7, 'Pedro Neto', '2013-11-10'),
    (8, 'Inês Brandão', '2012-08-01'),
    (9, 'Luís Neves', '2011-05-15'),
    (10, 'Marta Costa', '2010-03-08');
    (11, 'João Pedro Pais', '2018-03-15'),
    (12, 'Maria Silva', '2019-06-22'),
    (13, 'António Almeida', '2020-01-05'),
    (14, 'Isabel Santos', '2021-07-18'),
    (15, 'Pedro Oliveira', '2015-04-12'),
    (16, 'Cátia Martins', '2016-09-28'),
    (17, 'Carlos Pereira', '2017-02-20'),
    (18, 'Sara Sousa', '2013-11-25'),
    (19, 'Luís Alves', '2022-05-10'),
    (20, 'Fátima Fernandes', '2012-08-08');
    (21, 'António Silva', '2015-05-10'),
    (22, 'Marta Pereira', '2018-08-15'),
    (23, 'José Santos', '2017-04-20'),
    (24, 'Inês Oliveira', '2020-10-25'),
    (25, 'Pedro Costa', '2016-06-28'),
    (26, 'Cátia Almeida', '2019-02-15'),
    (27, 'Manuel Pereira', '2018-07-30'),
    (28, 'Sara Rodrigues', '2021-01-03'),
    (29, 'Rui Martins', '2016-11-18'),
    (30, 'Carla Sousa', '2014-03-25');


-- Inserir dados na tabela RepresentanteMarca
INSERT INTO RepresentanteMarca (idRepresentante, idMarca)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);
    (21, 21),
    (22, 22),
    (23, 23),
    (24, 24),
    (25, 25),
    (26, 26),
    (27, 27),
    (28, 28),
    (29, 29),
    (30, 30);

-- Inserir dados na tabela RepresentanteVendedor
INSERT INTO RepresentanteVendedor (idRepresentante, idVendedor)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10);
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 16),
    (17, 17),
    (18, 18),
    (19, 19),
    (20, 20);
    (21, 21),
    (22, 22),
    (23, 23),
    (24, 24),
    (25, 25),
    (26, 26),
    (27, 27),
    (28, 28),
    (29, 29),
    (30, 30);

