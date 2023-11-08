PRAGMA	foreign_keys=ON;

--Popular
-- Inserir dados na tabela Pessoa
INSERT INTO Pessoa (nome, dataNascimento, telemovel) VALUES
    ('Maria', '1990-03-15', 912345678),
    ('João', '1985-07-22', 935678901),
    ('Ana', '2000-01-10', 918765432);

-- Inserir dados na tabela Cliente
INSERT INTO Cliente (idPessoa) VALUES
    (1),
    (2);

-- Inserir dados na tabela Vendedor
INSERT INTO Vendedor (numVendas, dataInicio, salario, idPessoa) VALUES
    (10, '2022-01-05', 2500.00, 3);

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
