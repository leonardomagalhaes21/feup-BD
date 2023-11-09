PRAGMA	foreign_keys=ON;

-- Popular
-- Inserir dados na tabela Pessoa
INSERT INTO Pessoa (nome, dataNascimento, telemovel) VALUES
('Ana Silva', '1990-05-15', 987654321),
('Carlos Santos', '1985-12-03', 123456789),
('Mariana Oliveira', '1993-08-20', 876543210),
('Rafael Pereira', '1987-04-10', 234567890),
('Patrícia Lima', '1991-02-28', 765432109),
('Felipe Costa', '1984-11-15', 345678901),
('Catarina Silva', '1995-09-05', 654321098),
('Daniel Oliveira', '1989-07-22', 456789012),
('Luana Santos', '1992-06-18', 543210987),
('José Pereira', '1986-03-08', 789012345),
('Leticia Rocha', '1990-09-15', 876123456),
('Lucas Almeida', '1983-12-07', 123987456),
('Juliana Oliveira', '1994-06-02', 567890123),
('Fernando Santos', '1988-04-18', 890123456),
('Aline Lima', '1993-11-25', 234567890),
('Bruno Costa', '1985-08-12', 901234567),
('Mariano Silva', '1996-07-28', 345678901),
('Isabela Oliveira', '1987-05-22', 678901234),
('Pedro Santos', '1991-03-05', 456789012),
('Camila Pereira', '1984-10-30', 789012345),
('Ricardo Lima', '1992-08-10', 123456789),
('Vanessa Silva', '1986-01-22', 987654321),
('Hugo Pereira', '1995-04-15', 567890123),
('Carla Oliveira', '1989-12-03', 234567890),
('Alexandre Santos', '1984-09-28', 890123456),
('Laura Costa', '1993-06-18', 345678901),
('Vinicius Silva', '1987-03-08', 678901234),
('Patricia Costa', '1990-10-25', 456789012),
('Marcos Santos', '1981-07-12', 789012345),
('Beatriz Lima', '1994-02-28', 901234567),
('Eduardo Oliveira', '1988-09-15', 876123456),
('Larissa Santos', '1991-12-07', 123987456),
('Roberto Pereira', '1994-06-02', 567890123),
('Carolina Lima', '1987-04-18', 890123456),
('Guilherme Silva', '1993-11-25', 234567890),
('Helena Costa', '1985-08-12', 901234567),
('Felipe Silva', '1996-07-28', 345678901),
('Mariana Oliveira', '1987-05-22', 678901234),
('Rafael Santos', '1991-03-05', 456789012),
('Tatiane Pereira', '1984-10-30', 789012345),
('Rodrigo Costa', '1990-09-10', 876123456),
('Mariana Santos', '1983-12-22', 123987456),
('Lucas Pereira', '1995-04-15', 567890123),
('Ana Lima', '1989-12-03', 890123456),
('Gabriel Silva', '1993-11-25', 234567890),
('Amanda Costa', '1985-08-12', 901234567),
('Roberto Silva', '1996-07-28', 345678901),
('Fernanda Oliveira', '1987-05-22', 678901234),
('Ricardo Santos', '1991-03-05', 456789012),
('Larissa Pereira', '1984-10-30', 789012345);

-- Inserir dados na tabela Cliente
INSERT INTO Cliente (idPessoa) VALUES
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50); 

-- Inserir dados na tabela Vendedor
INSERT INTO Vendedor (dataInicio, salario, idPessoa) VALUES
('2020-01-10', 5000.00, 1),
('2018-05-20', 4500.50, 2),
('2019-08-15', 4800.75, 3),
('2021-03-02', 5200.00, 4),
('2022-06-18', 4700.50, 5);

-- Inserir dados na tabela Venda
INSERT INTO Venda (data, comissao, lucro, idCliente, idVendedor) VALUES
    ('2022-05-20', 100.50, 450.25, 1, 1),
    ('2022-06-10', 75.25, 350.75, 2, 1);

-- Inserir dados na tabela Veiculo
INSERT INTO Veiculo (matricula, ano, condicao, garantia, modelo) VALUES
    ('AB-13-CD', 2019, 'Usado', '1 ano', 'Sedan'),
    ('XY-98-ZW', 2020, 'Novo', '2 anos', 'SUV');

-- Inserir dados na tabela VeiculoVendedor
INSERT INTO VeiculoVendedor (matricula, idVendedor) VALUES
    ('AB-13-CD', 1),
    ('XY-98-ZW', 1);

-- Inserir dados na tabela Manutencao
INSERT INTO Manutencao (matricula, idCliente, data, oficina) VALUES
    ('AB-13-CD', 2, '2022-07-15', 'Oficina A'),
    ('XY-98-ZW', 1, '2022-08-20', 'Oficina B');
