-- 1 Consulta - Buscar o nome e ano dos filmes
SELECT Nome,Ano FROM Filmes

-- 2 Consulta - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome,Ano, Duracao FROM Filmes ORDER BY Ano ASC
  
-- 3 Consulta - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome,Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'
  
-- 4 Consulta - Buscar os filmes lançados em 1997
SELECT Nome,Ano, Duracao FROM Filmes WHERE Ano = '1997'
  
-- 5 Consulta - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome,Ano, Duracao FROM Filmes WHERE Ano > '2000'
  
-- 6 Consulta - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome,Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC
  
-- 7 Consulta - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY COUNT(*) DESC;
  
-- 8 Consulta - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores;
  
-- 9 Consulta - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10 Consulta - Buscar o nome do filme e o gênero
SELECT filmes.Nome AS NomeFilme, Generos.Genero FROM Filmes
JOIN FilmesGenero ON filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- 11 Consulta - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT filmes.Nome, Generos.Genero FROM Filmes
JOIN FilmesGenero ON filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id WHERE Generos.Genero = 'Mistério'

-- 12 Consulta - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel FROM Filmes
JOIN ElencoFilme ON filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON ElencoFilme.IdAtor = Atores.Id