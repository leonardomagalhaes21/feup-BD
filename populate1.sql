PRAGMA	foreign_keys=ON;

-- Popular
-- Inserir dados na tabela Pessoa
INSERT INTO Pessoa (idPessoa, nome, dataNascimento, telemovel)
VALUES 
    (1, 'Ana Silva', '1990-05-15', 919876543),
    (2, 'Carlos Santos', '1985-12-03', 919122345),
    (3, 'Mariana Oliveira', '1993-08-20', 919806543),
    (4, 'Rafael Pereira', '1987-04-10', 919345658),
    (5, 'Patrícia Lima', '1991-02-28', 919654321),
    (6, 'Filipe Costa', '1984-11-15', 919456780),
    (7, 'Catarina Silva', '1995-09-05', 919542210),
    (8, 'Daniel Oliveira', '1989-07-22', 919560890),
    (9, 'Luana Santos', '1992-06-18', 919243210),
    (10, 'José Pereira', '1986-03-08', 919890023),
    (11, 'Letícia Rocha', '1990-09-15', 919276103),
    (12, 'Lucas Almeida', '1983-12-07', 919239074),
    (13, 'Júlia Oliveira', '1994-06-02', 919907901),
    (14, 'Fernando Santos', '1988-04-18', 919512340),
    (15, 'Aline Lima', '1993-11-25', 919345677);

-- Inserir dados na tabela Cliente
INSERT INTO Cliente (idCliente, idPessoa)
VALUES
    (1, 6),
    (2, 7),
    (3, 8),
    (4, 9),
    (5, 10),
    (6, 11),
    (7, 12),
    (8, 13),
    (9, 14),
    (10, 15);

-- Inserir dados na tabela Vendedor
INSERT INTO Vendedor (idVendedor, dataInicio, numVendas, salario, idPessoa)
VALUES
    (1, '2023-01-10', 10, 5000.00, 1),
    (2, '2023-05-20', 10, 4500.50, 2),
    (3, '2023-08-15', 10, 4800.75, 3),
    (4, '2023-03-02', 10, 5200.00, 4),
    (5, '2023-06-18', 10, 4700.50, 5);

-- Inserir dados na tabela Marca
INSERT INTO Marca (idMarca, nomeMarca, pais, ano)
VALUES
    (1, 'Ferrari', 'Itália', 1929),
    (2, 'Porsche', 'Alemanha', 1931),
    (3, 'Lamborghini', 'Itália', 1963),
    (4, 'Chevrolet', 'EUA', 1911),
    (5, 'Jaguar', 'Reino Unido', 1922),
    (6, 'Mercedes-Benz', 'Alemanha', 1924),
    (7, 'Aston Martin', 'Reino Unido', 1913),
    (8, 'Rolls-Royce', 'Reino Unido', 1904),
    (9, 'Ford', 'EUA', 1903),
    (10, 'Toyota', 'Japão', 1937),
    (11, 'Honda', 'Japão', 1948),
    (12, 'Volkswagen', 'Alemanha', 1937),
    (13, 'BMW', 'Alemanha', 1916),
    (14, 'Nissan', 'Japão',1933),
    (15, 'Audi', 'Alemanha', 1909),
    (16, 'Lexus', 'Japão', 1989),
    (17, 'Tesla', 'EUA', 2003),
    (18, 'Mini', 'Alemanha', 1959),
    (19, 'Land Rover', 'Reino Unido', 1978);

-- Inserir dados na tabela Veiculo
INSERT INTO Veiculo (matricula, ano, condicao, garantia, modelo, idMarca)
VALUES
    ('09-UU-20', 2009, 'Usado', 12, 'Malibu', 4),
    ('14-VV-18', 2014, 'Semi-Novo', 15, 'X5', 13),
    ('16-WW-11', 2016, 'Semi-Novo', 18, 'Focus', 9),
    ('07-XX-09', 2007, 'Usado', 12, 'Altima', 14),
    ('21-YY-17', 2021, 'Novo', 24, 'Q5', 15),
    ('10-ZZ-14', 2010, 'Usado', 12, 'Prius', 10),
    ('11-AA-06', 2011, 'Usado', 12, 'A3', 15),
    ('15-BB-08', 2015, 'Semi-Novo', 24, 'RX', 16),
    ('20-CC-16', 2020, 'Novo', 24, 'Model 3', 17),
    ('19-DD-17', 2019, 'Semi-Novo', 18, 'Accord', 11);

    -- Inserir dados na tabela Pagamento
INSERT INTO Pagamento (idPagamento, metodoPagamento, data, valor)
VALUES
    (1, 'Cartão', '2023-11-05', 10000.00),
    (2, 'Transferência', '2023-11-20', 32000.00),
    (3, 'Dinheiro', '2023-11-03', 11000.00),
    (4, 'Cartão', '2023-11-15', 7500.00),
    (5, 'Transferência', '2023-11-10', 35000.00),
    (6, 'Dinheiro', '2023-11-25', 8000.00),
    (7, 'Cartão', '2023-11-10', 13000.00),
    (8, 'Transferência', '2023-11-22', 22000.00),
    (9, 'Dinheiro', '2023-11-10', 40000.00),
    (10, 'Cartão', '2023-11-25', 15000.00);

-- Inserir dados na tabela Venda
INSERT INTO Venda (idVenda, data, comissao, lucro, idCliente, idVendedor, matricula, idPagamento)
VALUES
    (1, '2023-11-05', 2000.00, 3000.00, 1, 1, '09-UU-20', 1),
    (2, '2023-11-20', 2500.00, 4500.00, 2, 2, '14-VV-18', 2),
    (3, '2023-11-03', 1800.00, 4200.00, 3, 3, '16-WW-11', 3),
    (4, '2023-11-15', 2200.00, 5300.00, 4, 4, '07-XX-09', 4),
    (5, '2023-11-10', 2700.00, 5500.00, 5, 5, '21-YY-17', 5),
    (6, '2023-11-25', 2000.00, 4800.00, 6, 1, '10-ZZ-14', 6),
    (7, '2023-11-10', 1500.00, 3800.00, 7, 2, '11-AA-06', 7),
    (8, '2023-11-22', 2000.00, 4900.00, 8, 3, '15-BB-08', 8),
    (9, '2023-11-10', 1800.00, 4100.00, 9, 4, '20-CC-16', 9),
    (10, '2023-11-25', 2500.00, 4800.00, 10, 5, '19-DD-17', 10);

-- Inserir dados na tabela Representante
INSERT INTO Representante (idRepresentante, nomeRepresentante, dataInicio)
VALUES
    (1, 'FBO Motor Sports', '2015-01-10'),
    (2, 'Porsche Ibérica', '2018-04-22'),
    (3, 'Lamborghini Lisboa', '2016-09-15'),
    (4, 'Chevrolet Portugal', '2014-12-05'),
    (5, 'Jaguar Land Rover Portugal', '2014-02-28'),
    (6, 'Caetano Star', '2014-07-20'),
    (7, 'Aston Martin Lisbon', '2013-11-10'),
    (8, 'BMcar', '2012-08-01'),
    (9, 'MCoutinho Ford', '2011-05-15'),
    (10, 'Caetano Auto', '2010-03-08'),
    (11, 'Honda Motor Europe', '2012-03-15'),
    (12, 'Caetano Drive', '2019-06-22'),
    (13, 'Caetano Baviera', '2020-01-05'),
    (14, 'Caetano Power', '2021-07-18'),
    (15, 'Caetano Sport', '2015-04-12'),
    (16, 'Tesla Portugal', '2016-09-28');

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
    (10, 10),
    (11, 11),
    (12, 12),
    (13, 13),
    (14, 14),
    (15, 15),
    (16, 17),
    (8, 13),
    (8,18),
    (10,16),
    (5,19),
    (13, 18);



-- Inserir dados na tabela RepresentanteVendedor
INSERT INTO RepresentanteVendedor (idRepresentante, idVendedor)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 1),
    (7, 2),
    (8, 3),
    (9, 4),
    (10, 5),
    (11, 1),
    (12, 2),
    (13, 3),
    (14, 4),
    (15, 5),
    (16, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 5),
    (5, 1),
    (6, 2),
    (7, 3),
    (8, 4),
    (9, 5),
    (10, 1),
    (11, 2),
    (12, 3),
    (13, 4),
    (14, 5),
    (15, 1),
    (16, 2);
