--01
SELECT titulo
FROM livros;

--02
SELECT nome
FROM autores
WHERE ano_nascimento < 1900;

--03
SELECT titulo
FROM livros
WHERE id_autor = (
  SELECT id
  FROM autores
  WHERE nome = 'J.K. Rowling'
);

--04
SELECT nome_aluno
FROM alunos
WHERE curso = 'Engenharia de Software';

--05
SELECT produto, SUM(receita) AS receita_total
FROM transacoes
GROUP BY produto;

--06
SELECT autores.nome AS autor, COUNT(livros.id) AS total_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.id_autor
GROUP BY autores.nome;

--07
SELECT curso, COUNT(nome_aluno) AS total_alunos
FROM alunos
GROUP BY curso;
