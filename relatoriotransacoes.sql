SELECT 	cliente_transacoes.id,
		tipo_transacao.nome,
		cliente_transacoes.valor,
		cliente.nome
FROM cliente_transacoes
JOIN tipo_transacao 
	ON tipo_transacao.id = cliente_transacoes.tipo_transacao_id
JOIN cliente
	ON cliente.numero = cliente_transacoes.cliente_numero;