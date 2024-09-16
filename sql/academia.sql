/*Criando um banco de dados - em SQL*/

/* tudo que for sql é em letra MAIUSCULA e o que for nosso é minuscula*/

CREATE DATABASE sistemadeacademia;

/* Exibir se o banco de dados foi criado */

show databases;


/* Deletar um Banco de Dados */

DROP DATABASE sistemadeacademia;


/* Usar o Banco de Dados que vou criar tabelas e dados na sequência */
USE DATABASE sistemadeacademia; /* No modelo Maria DB descontinuou*/

/* Criando tabela no Banco de Dados */
CREATE TABLE cadastrocliente(
    cpf CHAR(15) primary key NOT NULL,
    nomecompleto VARCHAR(200) NOT NULL,
    datadenascimento DATE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    celular INT(15) NOT NULL,
    cep INT(8) NOT NULL,
    rua VARCHAR(50) NOT NULL,
    numero CHAR(8) NOT NULL,
    complemento VARCHAR(50),
    bairro CHAR(20) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(20) NOT NULL
);


/* Adicionando um atributo na tabela com ALTER */
ALTER TABLE cadastrocliente
ADD instagram VARCHAR(50);


/* Excluindo um atributo da tabela com ALTER */
ALTER TABLE cadastrocliente
DROP COLUMN instagram;


/* Renomeando a coluna/atributo da tabela com ALTER */
ALTER TABLE cadastrocliente
CHANGE COLUMN nomecompleto nome_sobrenome VARCHAR(200) NOT NULL;

/* Alterando o datatype de uma coluna */
ALTER TABLE cadastrocliente
MODIFY COLUMN nome_sobrenome VARCHAR(250) NOT NULL;


/* Deletando a tabela toda */
DROP TABLE cadastrocliente;