-- Tabela Pessoa
CREATE TABLE Pessoa (
    idPessoa           INTEGER NOT NULL PRIMARY KEY,
    nome               TEXT NOT NULL,
    dataNascimento     DATE,
    telemovel INTEGER 
);

-- Tabela Cliente
CREATE TABLE Cliente (
    idCliente          INTEGER NOT NULL PRIMARY KEY,
    idPessoa           INTEGER,
    FOREIGN KEY (idPessoa) REFERENCES Pessoa (idPessoa)
);

-- Tabela Vendedor
CREATE TABLE Vendedor (
    idVendedor         INTEGER NOT NULL PRIMARY KEY,
    dataInicio         DATE,
    salario            DECIMAL,
    idPessoa           INTEGER,
    FOREIGN KEY (idPessoa) REFERENCES Pessoa (idPessoa)
);

-- Tabela Venda
CREATE TABLE Venda (
    idVenda            INTEGER NOT NULL PRIMARY KEY,
    data               DATE,
    comissao           DECIMAL,
    lucro              DECIMAL,
    idCliente          INTEGER,
    idVendedor         INTEGER,
    FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente),
    FOREIGN KEY (idVendedor) REFERENCES Vendedor (idVendedor)
);

-- Tabela Veiculo
CREATE TABLE Veiculo (
    matricula          TEXT NOT NULL PRIMARY KEY,
    ano                INTEGER,
    condicao           TEXT,
    garantia           INTEGER,
    modelo             TEXT
);

-- Tabela VeiculoVendedor (Tabela de associação entre Veiculo e Vendedor)
CREATE TABLE VeiculoVendedor (
    matricula          TEXT,
    idVendedor         INTEGER,
    FOREIGN KEY (matricula) REFERENCES Veiculo (matricula),
    FOREIGN KEY (idVendedor) REFERENCES Vendedor (idVendedor)
);

-- Tabela Manutencao
CREATE TABLE Manutencao (
    idManutencao       INTEGER NOT NULL PRIMARY KEY,
    matricula          TEXT,
    idCliente          INTEGER,
    data               DATE,
    oficina            TEXT,
    FOREIGN KEY (matricula) REFERENCES Veiculo (matricula),
    FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente)
);

--RESTRICTIONS
    CONSTRAINT IdManuentacao_UNIQUE UNIQUE (idManutencao);
    CONSTRAINT IdVenda_UNIQUE UNIQUE (idVenda);
    CONSTRAINT IdVendedor_UNIQUE UNIQUE (idVendedor);
    CONSTRAINT IdCliente_UNIQUE UNIQUE (idCliente);
    CONSTRAINT IdPessoa_UNIQUE UNIQUE (idPessoa);
    CONSTRAINT rest_Matricula UNIQUE CHECK (matricula GLOB '[A-Z][A-Z]-[0-9][0-9]-[A-Z][A-Z]' OR matricula GLOB '[0-9][0-9]-[A-Z][A-Z]-[0-9][0-9]' OR matricula GLOB '[0-9][0-9]-[0-9][0-9]-[A-Z][A-Z]' OR matricula GLOB '[A-Z][A-Z]-[0-9][0-9]-[0-9][0-9]');
    CONSTRAINT num_Telemovel UNIQUE CHECK (telemovel >= 100000000 AND telemovel <= 999999999);


