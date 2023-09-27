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

--03
CREATE PROCEDURE sp_ContarLivrosPorCategoria
    @Categoria NVARCHAR(50)
AS
BEGIN
    SELECT COUNT(*) AS TotalLivros
    FROM Livros
    WHERE Categoria = @Categoria;
END;

