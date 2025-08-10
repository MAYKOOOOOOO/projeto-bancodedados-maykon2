# projeto-bancodedados-maykon2

# PROJETO COM O TEMA MÚSICA
## (descriçao do problema modelado) nesse projeto eu tentei criar 3 tasbelas com seus respectivos atributos
### vou explicar basicamente como as entidades e atributos, chaves do meu trabalho funcionam, as entidades sao tres, artistas, albums e musicas, exemplo do meu código:

### usei os comandos para criar (create) as tabelas (entidades) e esses embaixo delas sao os atributos de cada entidade
## CREATE TABLE Artistas (
   ### artista_id INT PRIMARY KEY AUTO_INCREMENT,
  ###  nome_artista VARCHAR(100) NOT NULL,
   ### pais_origem VARCHAR(50),
  ###  genero_principal VARCHAR(50)
### );

## CREATE TABLE Albuns (
   ### titulo_album VARCHAR(100) NOT NULL,
   ### ano_lancamento INT,
   ### artista_id INT,
   ### FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
### );

## CREATE TABLE Musicas (
  ###  musica_id INT PRIMARY KEY AUTO_INCREMENT,
  ###  titulo_musica VARCHAR(100) NOT NULL,
   ### duracao_segundos INT,
   ### album_id INT,
  ###  FOREIGN KEY (album_id) REFERENCES Albuns(album_id)
### );
 
### essas sao minhas consultas, elas puxam os dados das tabelas e os armazenam, usando comandos como "join" e "select"
## USE musica;

## SELECT * FROM Artistas;
## SELECT titulo_album
### FROM Albuns
 ### WHERE artista_id = (SELECT artista_id FROM Artistas WHERE nome_artista = 'Queen');
## SELECT
   ### A.nome_artista,
   ### AL.titulo_album,
  ###  M.titulo_musica
### FROM Musicas AS M
### JOIN Albuns AS AL ON M.album_id = AL.album_id
### JOIN Artistas AS A ON AL.artista_id = A.artista_id;
 ## SELECT M.titulo_musica, M.duracao_segundos
### FROM Musicas AS M
### JOIN Albuns AS A ON M.album_id = A.album_id
### WHERE A.titulo_album = 'Thriller';
## SELECT
   ### A.nome_artista,
   ### COUNT(AL.album_id) AS numero_de_albuns
### FROM Artistas AS A
### LEFT JOIN Albuns AS AL ON A.artista_id = AL.artista_id
### GROUP BY A.nome_artista;
## SELECT titulo_album, ano_lancamento
### FROM Albuns
### ORDER BY ano_lancamento ASC
### LIMIT 1;
### essas sao as minhas inserts, atribuem valor numérico aos itens da tabela através dos dados puxados pelas consultas
## INSERT INTO Artistas (nome_artista, pais_origem, genero_principal) VALUES
### ('Queen', 'Reino Unido', 'Rock'),
 ### ('Michael Jackson', 'Estados Unidos', 'Pop'),
### ('Led Zeppelin', 'Reino Unido', 'Hard Rock');

## INSERT INTO Albuns (titulo_album, ano_lancamento, artista_id) VALUES
### ('A Night at the Opera', 1975, 1),
### ('Thriller', 1982, 2),
### ('Led Zeppelin IV', 1971, 3),
### ('The Game', 1980, 1);

## INSERT INTO Musicas (titulo_musica, duracao_segundos, album_id) VALUES
### ('Bohemian Rhapsody', 355, 1),
### ('Thriller', 357, 2),
### ('Stairway to Heaven', 482, 3),
### ('Another One Bites the Dust', 216, 4);
