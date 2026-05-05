
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
SELECT categoria_veiculo.nome, preco_base_km, motorista.nome
FROM motorista
INNER JOIN veiculo ON fk_motorista = pk_motorista
INNER JOIN categoria_veiculo ON pk_motorista = fk_motorista;

--Questão 5
SELECT motorista.nome AS motorista, passageiro.nome AS passageiro, valor_total, categoria_veiculo.nome 
FROM motorista
INNER JOIN passageiro ON pk_passageiro = pk_motorista
INNER JOIN viagem ON pk_passageiro = fk_passageiro
INNER JOIN categoria_veiculo ON pk_categoria = fk_categoria;

--Questão 6
SELECT motorista.nome AS motorista, passageiro.nome AS passageiro, valor_total, descricao
FROM motorista
INNER JOIN passageiro ON pk_motorista = fk_motorista
INNER JOIN viagem ON pk_passageiro = fk_passageiro
INNER JOIN meio_pagamento ON pk_meio_pagamento = fk_meio_pagamento;

--Questão 7

SELECT motorista.nome AS motorista, passageiro.nome AS passageiro, nota_motorista_ao_passageiro, nota_passageiro_ao_motorista
FROM motorista
INNER JOIN 

--Questão 8

--Questão 9

--Questão 10

--Questão 15 
SELECT pk_pagamento, descricao FROM pagamento
INNER JOIN meio_pagamento ON pk_meio_pagamento = fk_meio_pagamento;