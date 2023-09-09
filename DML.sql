CREATE DATABASE escola;
USE escola
-- Criação da tabela Alunos
CREATE TABLE Alunos (
    aluno_id INT PRIMARY KEY,
    nome VARCHAR(255),
    idade INT,
    cidade VARCHAR(255)
);

-- Criação da tabela Cursos
CREATE TABLE Cursos (
    curso_id INT PRIMARY KEY,
    nome_curso VARCHAR(255),
    professor VARCHAR(255)
);

-- Criação da tabela Matrículas
CREATE TABLE Matriculas (
    matricula_id INT PRIMARY KEY,
    aluno_id INT,
    curso_id INT,
    data_matricula DATE,
    nota DECIMAL(4,2)
);

-- Inserção de dados de exemplo na tabela Alunos
INSERT INTO Alunos (aluno_id, nome, idade, cidade)
VALUES
    (1, 'João', 20, 'São Paulo'),
    (2, 'Maria', 22, 'Rio de Janeiro'),
    (3, 'Pedro', 19, 'Belo Horizonte');

-- Inserção de dados de exemplo na tabela Cursos
INSERT INTO Cursos (curso_id, nome_curso, professor)
VALUES
    (101, 'Matemática', 'Prof. Silva'),
    (102, 'História', 'Prof. Santos'),
    (103, 'Inglês', 'Prof. Lima');

-- Inserção de dados de exemplo na tabela Matrículas
INSERT INTO Matriculas (matricula_id, aluno_id, curso_id, data_matricula, nota)
VALUES
    (1, 1, 101, '2023-01-15', 8.5),
    (2, 1, 102, '2023-02-20', 7.2),
    (3, 2, 101, '2023-03-10', 9.0),
    (4, 3, 103, '2023-04-05', 6.8),
    (5, 2, 102, '2023-05-12', 8.0);
