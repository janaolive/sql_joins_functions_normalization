SELECT
	c.cancao AS nome,
    COUNT(h.usuario_id) AS reproducoes
FROM 
	SpotifyClone.cancoes AS c
   	INNER JOIN SpotifyClone.historico_reproducoes AS h ON h.cancao_id = c.cancao_id
   	INNER JOIN SpotifyClone.usuarios AS u ON u.usuario_id = h.usuario_id
	INNER JOIN SpotifyClone.planos AS p ON p.plano_id = u.plano_id
WHERE
	plano IN ('gratuito', 'pessoal')
GROUP BY
	nome
ORDER BY
	nome;