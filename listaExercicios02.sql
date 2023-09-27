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

--04
CREATE PROCEDURE sp_VerificarLivrosCategoria
    @Categoria NVARCHAR(50)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Livros WHERE Categoria = @Categoria)
        SELECT 'Sim' AS CategoriaPossuiLivros;
    ELSE
        SELECT 'Não' AS CategoriaPossuiLivros;
END;

--05
CREATE PROCEDURE sp_LivrosAteAno
    @AnoPublicacao INT
AS
BEGIN
    SELECT Titulo
    FROM Livros
    WHERE AnoPublicacao <= @AnoPublicacao;
END;

--06
CREATE PROCEDURE sp_TitulosPorCategoria
    @Categoria NVARCHAR(50)
AS
BEGIN
    SELECT Titulo
    FROM Livros
    WHERE Categoria = @Categoria;
END;

--07
CREATE PROCEDURE sp_AdicionarLivro
    @Titulo NVARCHAR(100),
    @AutorID INT,
    @Categoria NVARCHAR(50),
    @AnoPublicacao INT
AS
BEGIN
    BEGIN TRY
        INSERT INTO Livros (Titulo, AutorID, Categoria, AnoPublicacao)
        VALUES (@Titulo, @AutorID, @Categoria, @AnoPublicacao);
        SELECT 'Livro adicionado com sucesso.' AS Mensagem;
    END TRY
    BEGIN CATCH
        SELECT 'Erro: ' + ERROR_MESSAGE() AS Mensagem;
    END CATCH;
END;

--08
CREATE PROCEDURE sp_AutorMaisAntigo
AS
BEGIN
    SELECT TOP 1 Nome + ' ' + Sobrenome AS AutorMaisAntigo
    FROM Autores
    ORDER BY DataNascimento ASC;
END;

--09
CREATE PROCEDURE sp_ListarAutores
AS
BEGIN
    SELECT Nome, Sobrenome FROM Autores;
END;

