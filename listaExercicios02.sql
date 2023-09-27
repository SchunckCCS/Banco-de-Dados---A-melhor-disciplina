--01
CREATE PROCEDURE sp_ListarAutores
AS
BEGIN
    SELECT Nome, Sobrenome FROM Autores;
END;

--02
CREATE PROCEDURE sp_LivrosPorCategoria
    @Categoria NVARCHAR(50)
AS
BEGIN
    SELECT Titulo
    FROM Livros
    WHERE Categoria = @Categoria;
END;
