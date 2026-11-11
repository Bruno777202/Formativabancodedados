CREATE DATABASE Academia_movimento_Bruno;
GO

USE Academia_movimento_Bruno;

CREATE TABLE Clientes(
    IDClientes int PRIMARY KEY IDENTITY,
    Nome VARCHAR(100) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Telefone VARCHAR(200) NOT NULL,
    DataNAscimento DATE NULL,
    Ativo bit NOT NULL
);

CREATE TABLE Intrutores(
    IDintrutores int PRIMARY KEY IDENTITY,
    Nome VARCHAR(100) not NULL,
    CPF VARCHAR(20) NOT NULL UNIQUE,
    Especialidade VARCHAR(80) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Ativo bit NOT NULL CONSTRAINT DK_aluno_ativo DEFAULT 'ativo'
);

CREATE TABLE Modalidade(
    IDmodalidade int PRIMARY key IDENTITY,
    Nomemodalidade VARCHAR(80) NOT NULL,
    Nivel VARCHAR(20) not NULL,
    duracaoMin int NOT NULL CHECK(duracaoMin > 1 and duracaoMin <= 24 ),
    decricao VARCHAR(200) NULL
);

CREATE TABLE Planos34(
    IDPlano int PRIMARY KEY IDENTITY,
    NomePlano VARCHAR(80) NOT NULL UNIQUE,
    ValorMansal DECIMAL(10,2) NOT NULL check(ValorMansal > 0  ),
    DuracaoMansal int NOT NULL CHECK(DuracaoMansal > 0  and DuracaoMansal <= 100),
    Acessolivre bit 
);

CREATE TABLE Matriculas(
    IDmatricula int PRIMARY KEY IDENTITY,
    IDClientes int NOT NULL,
    IDplano int not NULL,
    DAtaInicio DATE NOT NULL,
    StatusMatricula VARCHAR(15) not NULL,
    Desconto  INT NOT NULL CHECK(Desconto > 0 and Desconto <= 100),

   
);

CREATE TABLE Aulas77(
    IDAulas int PRIMARY KEY IDENTITY,
    IDModalidade int NOT NULL ,
    IDInstrutores int not NULL ,
    DataAula DATE NOT NULL,
    Horario TIME NOT NULL,
    Vagas int not null CHECK(Vagas > 1 AND Vagas <= 50),
    Sala VARCHAR(50) NOT NULL
);

INSERT INTO Intrutores(IDintrutores, Nome, CPF, Especialidade, Email)
VALUES
(1,'André Silva', 'CREF-SP-1001', 'Musculação','andre.silva@movimentomais.com'),
(2,'Beatriz Costas', 'CREF-SP-1002', 'Pilates','beatriz.costa@movimentomais.com'),
(3,'Caio Mendes', 'CREF-SP-1003', 'Cross Training','caio.mendes@movimentomais.com'),
(4,'Daniela Reis', 'CREF-SP-1004', 'Dança','daniela.reis@movimentomais.com'),
(5,'Eduardo Lima', 'CREF-SP-1005', 'Natação','eduardo.lima@movimentomais.com'),
(6,'Gabriel Rocha', 'CREF-SP-1006', 'Yoga','fernanda.alves@movimentomais.com'),
(7,'Helena Souza', 'CREF-SP-1008', 'Corrida','helena.souza@movimentomais.com'),
(8,'Igor Martins', 'CREF-SP-1009', 'Funcional','gabriel.rocha@movimentomais.com'),
(9,'Juliana Nunes', 'CREF-SP-1007', 'Funcional','gabriel.rocha@movimentomais.com');
(8,'Igor fina', 'CREF-SP-1007', 'Funcional','gabriel.rocha@movimentomais.com'),

SELECT * FROM Intrutores;






