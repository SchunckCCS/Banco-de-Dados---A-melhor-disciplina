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

