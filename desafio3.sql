SELECT
	u.usuario AS usuario,
    COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(c.duracao_segundos / 60), 2) AS total_minutos
FROM 
	SpotifyClone.usuarios AS u
	INNER JOIN SpotifyClone.historico_reproducoes AS h ON h.usuario_id = u.usuario_id
	INNER JOIN SpotifyClone.cancoes AS c ON c.cancao_id = h.cancao_id
GROUP BY
	usuario
ORDER BY
	usuario;