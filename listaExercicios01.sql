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

--08
SELECT produto, AVG(receita) AS media_receita
FROM transacoes
GROUP BY produto;

--09
SELECT produto, SUM(receita) AS receita_total
FROM transacoes
GROUP BY produto
HAVING SUM(receita) > 10000;

--10
SELECT autores.nome AS autor, COUNT(livros.id) AS total_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.id_autor
GROUP BY autores.nome
HAVING COUNT(livros.id) > 2;

--11
SELECT livros.titulo, autores.nome AS autor
FROM livros
JOIN autores ON livros.id_autor = autores.id;

--12
SELECT alunos.nome_aluno, matriculas.curso
FROM alunos
JOIN matriculas ON alunos.id = matriculas.id_aluno;

--13
SELECT autores.nome AS autor, livros.titulo
FROM autores
LEFT JOIN livros ON autores.id = livros.id_autor;

--14
SELECT alunos.nome_aluno, matriculas.curso
FROM alunos
RIGHT JOIN matriculas ON alunos.id = matriculas.id_aluno;

--15
SELECT alunos.nome_aluno, matriculas.curso
FROM alunos
INNER JOIN matriculas ON alunos.id = matriculas.id_aluno;

--16
SELECT autores.nome AS autor, COUNT(livros.id) AS total_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.id_autor
GROUP BY autores.nome
ORDER BY total_livros DESC
LIMIT 1;
