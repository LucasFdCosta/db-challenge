-- Exercício 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano FROM Filmes;

-- Exercício 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, duracao
FROM Filmes
ORDER BY ano asc;

-- Exercício 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, duracao
FROM Filmes
WHERE nome = 'De Volta para o Futuro';

-- Exercício 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano, duracao
FROM Filmes
WHERE ano = 1997;

-- Exercício 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, duracao
FROM Filmes
WHERE ano > 2000;

-- Exercício 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, duracao
FROM Filmes
WHERE duracao > 100 and duracao < 150
ORDER by duracao asc;

-- Exercício 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade
FROM Filmes
GROUP by Ano
ORDER by Quantidade DESC;

-- Exercício 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

-- Exercício 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- Exercício 10 - Buscar o nome do filme e o gênero
SELECT f.Nome, g.Genero from Filmes f
INNER JOIN FilmesGenero fg on f.Id = fg.IdFilme
INNER JOIN Generos g on g.Id = fg.IdGenero;

-- Exercício 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Genero from Filmes f
INNER JOIN FilmesGenero fg on f.Id = fg.IdFilme
INNER JOIN Generos g on g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério';

-- Exercício 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
INNER JOIN ElencoFilme ef on f.Id = ef.IdFilme
INNER JOIN Atores a on a.Id = ef.IdAtor;