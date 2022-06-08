SELECT
	COUNT(DISTINCT cancao.cancao) AS cancoes,
    COUNT(DISTINCT artista.artista) AS artistas,
    COUNT(DISTINCT album.album) AS albuns
FROM SpotifyClone.cancoes AS cancao
INNER JOIN SpotifyClone.albuns AS album ON album.album_id = cancao.album_id
INNER JOIN SpotifyClone.artistas AS artista ON artista.artista_id = album.artista_id;