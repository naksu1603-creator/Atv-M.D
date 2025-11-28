CREATE DATABASE IF NOT EXISTS amor_empatas;
USE amor_empatas;

-- Tabela de animais
CREATE TABLE Animal (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    especie VARCHAR(30),
    idade INT,
    status VARCHAR(20) DEFAULT 'Disponível'
);

-- Tabela de adotantes
CREATE TABLE Adotante (
    id_adotante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    cidade VARCHAR(50)
);

-- Tabela de adoções
CREATE TABLE Adocao (
    id_adocao INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT,
    id_adotante INT,
    data_adocao DATE,
    FOREIGN KEY (id_animal) REFERENCES Animal(id_animal),
    FOREIGN KEY (id_adotante) REFERENCES Adotante(id_adotante)
);
