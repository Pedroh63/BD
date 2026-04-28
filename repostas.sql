SHOW TABLES;

SELECT * FROM passageiro;
SELECT * FROM viagem;

SELECT nome, origem_endereco FROM passageiro
INNER JOIN viagem ON fk_passageiro = pk_passageiro;

SELECT nome, placa, modelo, marca from motorista
INNER JOIN veiculo ON  fk_motorista = pk_motorista;

SELECT origem_endereco, destino_endereco, nome AS passageiro FROM viagem
INNER JOIN passageiro ON fk_passageiro = pk_passageiro 
WHERE status = 'concluida';


-- COLUNAS fk_motorista origem_endereco destino_endereco