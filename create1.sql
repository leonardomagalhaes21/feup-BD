-- Tabela Pessoa
CREATE TABLE Pessoa (
    idPessoa           INTEGER NOT NULL PRIMARY KEY,
    nome               TEXT NOT NULL,
    dataNascimento     DATE,
    telemovel          INTEGER
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
    FOREIGN KEY (idMarca) REFERENCES Marca (idMarca)
);

-- Tabela Pagamento
CREATE TABLE Pagamento (
    idPagamento        INTEGER NOT NULL PRIMARY KEY,
    metodoPagamento    TEXT,
    data               DATE,
    valor              DECIMAL,
    idVenda            TEXT,
    FOREIGN KEY (idVenda) REFERENCES Venda (IdVenda)
);

-- Tabela Venda
CREATE TABLE Venda (
    idVenda            INTEGER NOT NULL PRIMARY KEY,
    data               DATE,
    comissao           DECIMAL,
    lucro              DECIMAL,
    idCliente          INTEGER,
    idVendedor         INTEGER,
    idVeiculo          INTEGER,
    idPagamento        INTEGER,
    FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente),
    FOREIGN KEY (idVendedor) REFERENCES Vendedor (idVendedor),
    FOREIGN KEY (idPagamento) REFERENCES Pagamento (idPagamento),
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo (idVeiculo)
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
