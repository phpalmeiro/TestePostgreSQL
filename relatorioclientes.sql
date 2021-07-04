--SELECT cliente_numero, COUNT(id)
--FROM cliente_transacoes
--GROUP BY cliente_numero;

SELECT	cliente.nome,
		count(cliente_transacoes.cliente_numero),
		sum(cliente_transacoes.valor)
FROM cliente
JOIN cliente_transacoes
	ON cliente_transacoes.cliente_numero = cliente.numero
GROUP BY cliente.nome
ORDER BY count(cliente_transacoes.id) DESC;