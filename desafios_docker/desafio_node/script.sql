-- Crie o banco de dados
CREATE DATABASE IF NOT EXISTS nodedb;

-- Use o banco de dados
USE nodedb;

-- Crie a tabela "pessoas"
CREATE TABLE IF NOT EXISTS pessoas (
  codigo INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255)
);

-- Insira cinco linhas de dados
INSERT INTO pessoas (codigo, nome) VALUES (1, 'Nome1');
INSERT INTO pessoas (codigo, nome) VALUES (2, 'Nome2');
INSERT INTO pessoas (codigo, nome) VALUES (3, 'Nome3');
INSERT INTO pessoas (codigo, nome) VALUES (4, 'Nome4');
INSERT INTO pessoas (codigo, nome) VALUES (5, 'Nome5');
