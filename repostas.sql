
--Questão 1
SELECT nome, origem_endereco FROM passageiro
INNER JOIN viagem ON fk_passageiro = pk_passageiro;

--Quesão 2
SELECT nome, placa, modelo, marca from motorista
INNER JOIN veiculo ON  fk_motorista = pk_motorista;

--Questão 3
SELECT origem_endereco, destino_endereco, nome AS passageiro FROM viagem
INNER JOIN passageiro ON fk_passageiro = pk_passageiro 
WHERE status = 'concluida';

--Questão 4
SELECT pk_categoria, preco_base_km, motorista.nome
FROM categoria_veiculo
INNER JOIN motorista ON pk_categoria = pk_motorista;

--Questão 5
SELECT motorista.nome AS motorista, passageiro.nome AS passageiro, valor_total, pk_categoria 
FROM motorista
INNER JOIN passageiro ON pk_passageiro = pk_motorista
INNER JOIN viagem ON pk_passageiro = fk_passageiro
INNER JOIN categoria_veiculo ON pk_categoria = pk_motorista;

--Questão 6
SELECT motorista.nome AS motorista, passageiro.nome AS passageiro, valor_total, descricao
FROM motorista
INNER JOIN passageiro ON pk_passageiro = pk_motorista
INNER JOIN viagem ON pk_passageiro = fk_passageiro
INNER JOIN meio_pagamento ON pk_meio_pagamento = fk_meio_pagamento;

--Questão 15 
SELECT pk_pagamento, descricao FROM pagamento
INNER JOIN meio_pagamento ON pk_meio_pagamento = fk_meio_pagamento;