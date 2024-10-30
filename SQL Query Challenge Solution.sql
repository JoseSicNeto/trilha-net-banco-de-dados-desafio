-- Desafios de Projeto: Montando Consultas Relacionais no SQL Server

-- 1 - Buscar o nome e ano dos filmes.
SELECT Nome, Ano 
FROM Filmes;


-- Na imagem do Exerc�cio 2 tem a dura��o junto com o nome e ano, ent�o colocarei dois separados: um sem e um com dura��o.

-- 2.1 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano. (SEM dura��o)
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano;

-- 2.2 - Buscar o nome, ano e dura��o dos filmes, ordenados por ordem crescente pelo ano. (COM dura��o)
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano;


-- 3 - Buscar pelo filme 'de volta para o futuro', trazendo o nome, ano e a dura��o.
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE LOWER(Nome) = 'de volta para o futuro';


-- 4 - Buscar os filmes lan�ados em 1997.
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;


-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;


-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao BETWEEN 101 AND 149 -- Ou Duracao > 100 AND Duracao < 150
ORDER BY Duracao;


-- Considero que no Exerc�cio 7, no lugar de Dura��o seja a Quantidade que teve em cada ano.

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(Ano) AS 'Quantidade'
FROM Filmes
GROUP BY Ano
ORDER BY 'Quantidade' DESC;


-- Na imagem do Exerc�cio 8 a sa�da est� diferente do enunciado, ent�o colocarei dois separados: um usando o enunciado e um usando a imagem.

-- 8.1 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome. (USANDO enunciado)
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';

-- 8.2 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome. (USANDO imagem)
SELECT * 
FROM Atores
WHERE Genero = 'M';


-- Na imagem do Exerc�cio 8 a sa�da est� diferente do enunciado, ent�o colocarei dois separados: um usando o enunciado e um usando a imagem.

-- 9.1 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome. (USANDO enunciado)
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- 9.2 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome. (USANDO imagem)
SELECT * 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;


-- 10 - Buscar o nome do filme e o g�nero.
SELECT F.Nome, G.Genero
FROM FilmesGenero AS FG
INNER JOIN Generos AS G ON G.Id = FG.IdGenero
INNER JOIN Filmes AS F ON F.Id = FG.IdFilme;


-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio".
SELECT F.Nome, G.Genero
FROM FilmesGenero AS FG
INNER JOIN Generos AS G ON G.Id = FG.IdGenero
INNER JOIN Filmes AS F ON F.Id = FG.IdFilme
WHERE G.Genero = 'Mist�rio';


-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel. (USANDO enunciado)
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel
FROM ElencoFilme AS E
INNER JOIN Atores AS A ON A.Id = E.IdAtor
INNER JOIN Filmes AS F ON F.Id = E.IdFilme;
