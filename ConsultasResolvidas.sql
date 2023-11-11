---1--
select nome, Ano from Filmes

---2--
select nome, Ano, Duracao from Filmes order by Ano asc

---3--  
select nome, Ano, Duracao from Filmes where nome = 'De Volta Para o Futuro' --poderia usar o like tbm

---4--  
select nome, Ano, Duracao from Filmes where Ano = '1997'

---5--  
select nome, Ano, Duracao from Filmes where Ano >= '2000'

---6--  
select nome, Ano, Duracao 
from Filmes 
where Duracao  > '100' and Duracao < '150' order by Duracao asc

---7--  
select ano,  count (*) as quantidade from Filmes group by Ano order by quantidade desc


---8--  
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'm'


---9--  
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'f' order by 1


--10--
SELECT Filmes.Nome, Generos.Genero FROM Filmes INNER JOIN
FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN
Generos ON FilmesGenero.IdGenero = Generos.Id


--11--
SELECT Filmes.Nome, Generos.Genero FROM Filmes INNER JOIN
FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme INNER JOIN
Generos ON FilmesGenero.IdGenero = Generos.Id where Genero = 'Mist�rio'


--12--
SELECT        Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM            Atores INNER JOIN
                         ElencoFilme ON Atores.Id = ElencoFilme.IdAtor INNER JOIN
                         Filmes ON ElencoFilme.IdFilme = Filmes.Id
