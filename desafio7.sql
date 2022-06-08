SELECT
	a.artista AS artista,
    alb.album AS album,
    COUNT(artf.usuario_id) AS seguidores
FROM 
	SpotifyClone.artistas AS a
	INNER JOIN SpotifyClone.albuns AS alb ON alb.artista_id = a.artista_id
    INNER JOIN SpotifyClone.artistas_favoritos AS artf ON artf.artista_id = a.artista_id
GROUP BY
	artista, album
ORDER BY 
	seguidores DESC, artista, album;	