create database musica
default character set utf8mb4
default collate utf8mb4_general_ci;

CREATE TABLE Artistas (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR(100) NOT NULL,
    pais_origem VARCHAR(50),
    genero_principal VARCHAR(50)
);

CREATE TABLE Albuns (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo_album VARCHAR(100) NOT NULL,
    ano_lancamento INT,
    artista_id INT,
    FOREIGN KEY (artista_id) REFERENCES Artistas(artista_id)
);

CREATE TABLE Musicas (
    musica_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo_musica VARCHAR(100) NOT NULL,
    duracao_segundos INT,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES Albuns(album_id)
);



