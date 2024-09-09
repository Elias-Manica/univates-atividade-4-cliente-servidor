
CREATE TABLE pessoa (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(50) NOT NULL,
    telefone VARCHAR(15),
    data_nascimento DATE
);

CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    senha VARCHAR(200) NOT NULL
);

INSERT INTO usuario (nome, senha) VALUES 
('admin', 'admin'),
('juca', 'bala');
