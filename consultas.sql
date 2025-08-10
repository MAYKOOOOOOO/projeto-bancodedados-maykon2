USE musica;

SELECT * FROM Artistas;
SELECT titulo_album
FROM Albuns
WHERE artista_id = (SELECT artista_id FROM Artistas WHERE nome_artista = 'Queen');
SELECT
    A.nome_artista,
    AL.titulo_album,
    M.titulo_musica
FROM Musicas AS M
JOIN Albuns AS AL ON M.album_id = AL.album_id
JOIN Artistas AS A ON AL.artista_id = A.artista_id;
SELECT M.titulo_musica, M.duracao_segundos
FROM Musicas AS M
JOIN Albuns AS A ON M.album_id = A.album_id
WHERE A.titulo_album = 'Thriller';
SELECT
    A.nome_artista,
    COUNT(AL.album_id) AS numero_de_albuns
FROM Artistas AS A
LEFT JOIN Albuns AS AL ON A.artista_id = AL.artista_id
GROUP BY A.nome_artista;
SELECT titulo_album, ano_lancamento
FROM Albuns
ORDER BY ano_lancamento ASC
LIMIT 1;
