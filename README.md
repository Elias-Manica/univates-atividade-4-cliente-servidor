CREATE TABLE pessoa (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    email TEXT NOT NULL,
    telefone TEXT,
    data_nascimento DATE
);

CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome TEXT NOT NULL,
    senha TEXT NOT NULL
);

INSERT INTO usuario (nome, senha) VALUES 
('admin', 'admin'),
('juca', 'bala');
