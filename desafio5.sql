SELECT
	c.cancao AS cancao,
	COUNT(h.usuario_id) AS reproducoes
FROM 
	SpotifyClone.cancoes AS c
	INNER JOIN SpotifyClone.historico_reproducoes AS h ON h.cancao_id = c.cancao_id
GROUP BY
	cancao
ORDER BY
	reproducoes DESC, cancao
LIMIT 2;