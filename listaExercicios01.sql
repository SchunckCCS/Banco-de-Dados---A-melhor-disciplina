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
