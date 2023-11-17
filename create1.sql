-- Tabela Pessoa
CREATE TABLE Pessoa (
    idPessoa           INTEGER NOT NULL PRIMARY KEY,
    nome               TEXT NOT NULL,
    dataNascimento     DATE,
    telemovel          INTEGER,
    CONSTRAINT IdPessoa_UNIQUE UNIQUE (idPessoa),
    CONSTRAINT Telemovel_UNIQUE UNIQUE (telemovel),
    CONSTRAINT num_Telemovel CHECK (telemovel >= 100000000 AND telemovel <= 999999999)
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
    numVendas          INTEGER,
    salario            DECIMAL,
    idPessoa           INTEGER,
    FOREIGN KEY (idPessoa) REFERENCES Pessoa (idPessoa)
);

-- Tabela Veiculo
CREATE TABLE Veiculo (
    matricula          TEXT NOT NULL PRIMARY KEY,
    ano                INTEGER,
    condicao           TEXT,
    garantia           INTEGER,
    modelo             TEXT,
    idMarca            INTEGER,
    FOREIGN KEY (idMarca) REFERENCES Marca (idMarca),
    CONSTRAINT Matricula_UNIQUE UNIQUE (matricula),
    CONSTRAINT rest_Matricula CHECK (matricula GLOB '[A-Z][A-Z]-[0-9][0-9]-[A-Z][A-Z]' OR matricula GLOB '[0-9][0-9]-[A-Z][A-Z]-[0-9][0-9]' OR matricula GLOB '[0-9][0-9]-[0-9][0-9]-[A-Z][A-Z]' OR matricula GLOB '[A-Z][A-Z]-[0-9][0-9]-[0-9][0-9]')
);

-- Tabela Pagamento
CREATE TABLE Pagamento (
    idPagamento        INTEGER NOT NULL PRIMARY KEY,
    metodoPagamento    TEXT,
    data               DATE,
    valor              DECIMAL,
    CONSTRAINT IdPagamento_UNIQUE UNIQUE (idPagamento)
);

-- Tabela Venda
CREATE TABLE Venda (
    idVenda            INTEGER NOT NULL PRIMARY KEY,
    data               DATE,
    comissao           DECIMAL,
    lucro              DECIMAL,
    idCliente          INTEGER,
    idVendedor         INTEGER,
    matricula          INTEGER,
    idPagamento        INTEGER,
    FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente),
    FOREIGN KEY (idVendedor) REFERENCES Vendedor (idVendedor),
    FOREIGN KEY (idPagamento) REFERENCES Pagamento (idPagamento),
    FOREIGN KEY (matricula) REFERENCES Veiculo (matricula),
    CONSTRAINT IdVenda_UNIQUE UNIQUE (idVenda)
);

--Tabela Marca
CREATE TABLE Marca (
    idMarca            INTEGER PRIMARY KEY,
    nomeMarca          TEXT NOT NULL,
    pais               INTEGER,
    ano                INTEGER
);

--Tabela Representante
CREATE TABLE Representante (
    idRepresentante    INTEGER PRIMARY KEY,
    nomeRepresentante  TEXT,
    dataInicio         DATE
);

-- Associação entre Representante e Marca
CREATE TABLE RepresentanteMarca (
    idRepresentante    INTEGER,
    idMarca            INTEGER,
    PRIMARY KEY (idRepresentante, idMarca),
    FOREIGN KEY (idRepresentante) REFERENCES Representante (idRepresentante),
    FOREIGN KEY (idMarca) REFERENCES Marca (idMarca)
);

-- Tabela RepresentanteVendedor
CREATE TABLE RepresentanteVendedor (
    idRepresentante    INTEGER,
    idVendedor         INTEGER,
    PRIMARY KEY (idRepresentante, idVendedor),
    FOREIGN KEY (idRepresentante) REFERENCES Representante (idRepresentante),
    FOREIGN KEY (idVendedor) REFERENCES Vendedor (idVendedor)
);









    



