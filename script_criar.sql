/*  SCRIPT CRIAR TABELAS */

/* Tabela Construtoras */

create table Construtoras ( 
    codConstrutora NUMBER(2) NOT NULL,
    nomeConstru VARCHAR2(50) NOT NULL,
    nomeFantasia VARCHAR2(50) NULL,
    CONSTRAINT PK_Construtoras PRIMARY KEY (codConstrutora) 
);

/* Tabela Obras */

create table Obras ( 
    codObra NUMBER(3) NOT NULL,
    nomeObra VARCHAR2(80) NOT NULL,
    obraLograd VARCHAR2(80) NOT NULL,
    obraNumero NUMBER(5) NOT NULL,
    obraComplemento VARCHAR2(20) NOT NULL,
    codConstrutora NUMBER(2) NOT NULL,
    CONSTRAINT PK_Obras PRIMARY KEY (codObra) 
);

/* Tabela Trabalhadores */

create table Trabalhadores ( 
    CPF CHAR(14) NOT NULL,
    nomeTrab VARCHAR2(50) NOT NULL,
    salario NUMBER (7) NOT NULL,
    codObra NUMBER(3) NOT NULL,
    CONSTRAINT PK_Trabalhores PRIMARY KEY (CPF) 
);

/* Tabela Categorias */

create table Categorias ( 
    codCategoria NUMBER(2),
    descricao VARCHAR2 (50),
    CONSTRAINT PK_Categorias PRIMARY KEY (codCategoria) 
);

/* Tabela Equipamentos */

create table Equipamentos ( 
    codEquipamento NUMBER (3),
    nomeEquip VARCHAR2(30),
    valorDiaria NUMBER(7),
    codCategoria NUMBER(2),
    CONSTRAINT PK_Equipamentos PRIMARY KEY (codEquipamento) 
);

/* Tabela telefones */

create table telefones (
    telefone VARCHAR2 (15) NOT NULL,
    codConstrutora NUMBER(2) NOT NULL,
    CONSTRAINT PK_telefones PRIMARY KEY (telefone, codConstrutora)
);

/* Tabela Obras_Equip */

create table Obras_Equip ( 
    codObra NUMBER(3) NOT NULL,
    codEquipamento NUMBER (3) NOT NULL,
    dataInicioUso DATE NOT NULL,
    dataFimUso DATE NOT NULL
);


/* Implementação Chaves Estrangeiras */

/* Relacionamento Trabalhadores x Obras */

ALTER TABLE Trabalhadores ADD (CONSTRAINT FK_trab_codObra FOREIGN KEY (codObra) REFERENCES Obras (codObra));

/* Relacionamento Equipamentos x Categorias */

ALTER TABLE Equipamentos ADD (CONSTRAINT FK_equip_codCat FOREIGN KEY (codCategoria) REFERENCES Categorias (codCategoria));

/* Relacionamento Telefones x Construtoras */
ALTER TABLE telefones ADD (CONSTRAINT FK_tel_codConst FOREIGN KEY (codConstrutora) REFERENCES Construtoras (codConstrutora));

/* Relacionamento Obras_Equip x Equipamentos */
ALTER TABLE Obras_Equip ADD (CONSTRAINT FK_oe_codEquip FOREIGN KEY (codEquipamento) REFERENCES Equipamentos (codEquipamento));

ALTER TABLE Obras_Equip ADD (CONSTRAINT FK_oe_codObra FOREIGN KEY (codObra) REFERENCES Obras (codObra));

/* Relacionamento Obras x Construtoras */
ALTER TABLE Obras ADD (CONSTRAINT FK_obra_codConst FOREIGN KEY (codConstrutora) REFERENCES Construtoras (codConstrutora));

