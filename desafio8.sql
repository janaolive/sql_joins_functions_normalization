SELECT
	a.artista AS artista,
    alb.album AS album
FROM 
	SpotifyClone.artistas AS a
	INNER JOIN SpotifyClone.albuns AS alb ON alb.artista_id = a.artista_id
WHERE
	artista = 'Walter Phoenix'
ORDER BY 
	album;	
    