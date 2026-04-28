-- CATEGORIAS
INSERT INTO categoria_veiculo (nome, descricao, preco_base_km, preco_base_corrida) VALUES
('UberX',        'Carros compactos para o dia a dia',          2.10, 5.00),
('Comfort',      'Carros maiores e mais confortáveis',         2.80, 6.50),
('Black',        'Carros de luxo com motoristas top avaliados',4.50, 10.00),
('UberXL',       'SUVs e vans para grupos de até 6 pessoas',   3.20, 8.00),
('Moto',         'Motocicletas para trajetos rápidos',         1.50, 3.00),
('Pet', 'Corridas para transporte de passageiros com animais de estimação', 3.50, 7.50);
-- MEIOS DE PAGAMENTO
INSERT INTO meio_pagamento (descricao, ativo) VALUES
('Cartão de Crédito', 1),
('Cartão de Débito',  1),
('Pix',               1),
('Dinheiro',          1),
('Carteira Digital',  1),
('Vale Transporte', 1);
-- PASSAGEIROS
INSERT INTO passageiro (nome, cpf, email, telefone, data_cadastro) VALUES
('Lucas Andrade Moreira',      '10120230340', 'lucas.moreira@gmail.com',    '(47) 99101-2033', '2022-03-15'),
('Beatriz Campos Souza',       '20230340450', 'beatriz.campos@gmail.com',   '(47) 99202-3044', '2021-07-22'),
('Rafael Teixeira Lima',       '30340450560', 'rafael.lima@gmail.com',      '(47) 99303-4055', '2023-01-10'),
('Juliana Freitas Barros',     '40450560670', 'juliana.barros@gmail.com',   '(47) 99404-5066', '2020-11-05'),
('Thiago Nascimento Costa',    '50560670780', 'thiago.costa@gmail.com',     '(47) 99505-6077', '2022-08-30'),
('Amanda Oliveira Pinto',      '60670780890', 'amanda.pinto@gmail.com',     '(47) 99606-7088', '2023-05-18'),
('Fernando Gomes Cardoso',     '70780890901', 'fernando.cardoso@gmail.com', '(47) 99707-8099', '2021-02-14'),
('Larissa Cavalcante Melo',    '80890901012', 'larissa.melo@gmail.com',     '(47) 99808-9010', '2022-09-03'),
('Gustavo Ribeiro Monteiro',   '90901012123', 'gustavo.monteiro@gmail.com', '(47) 99909-0121', '2020-06-25'),
('Patrícia Almeida Correia',   '01012123234', 'patricia.correia@gmail.com', '(47) 99010-1232', '2023-11-12'),
('Eduardo Martins Lopes',   '11122233344', 'eduardo.lopes@gmail.com',   '(47) 99111-2233', '2024-01-15'),
('Camila Ferreira Rocha',   '22233344455', 'camila.rocha@gmail.com',    '(47) 99222-3344', '2024-02-20'),
('Bruno Henrique Alves',    '33344455566', 'bruno.alves@gmail.com',     '(47) 99333-4455', '2024-03-10');
-- MOTORISTAS
INSERT INTO motorista (nome, cpf, email, telefone, cnh, categoria_cnh, data_cadastro) VALUES
('Marcos Vinícius Duarte',   '11223344500', 'marcos.duarte@motorista.com',  '(47) 99112-2334', '01234567890', 'AB', '2020-01-10'),
('Sandro Luiz Batista',      '22334455600', 'sandro.batista@motorista.com', '(47) 99223-3445', '12345678901', 'B',  '2019-05-22'),
('Cláudia Regina Fonseca',   '33445566700', 'claudia.fonseca@motorista.com','(47) 99334-4556', '23456789012', 'B',  '2021-08-14'),
('Wanderson Pires Neto',     '44556677800', 'wanderson.pires@motorista.com','(47) 99445-5667', '34567890123', 'AB', '2018-11-30'),
('Renata Borges Silveira',   '55667788900', 'renata.silveira@motorista.com','(47) 99556-6778', '45678901234', 'B',  '2022-03-07'),
('Ricardo Menezes Prado',  '66778899001', 'ricardo.prado@motorista.com', '(47) 99667-7889', '56789012345', 'B',  '2023-06-12'),
('Tatiane Souza Ribeiro',  '77889900112', 'tatiane.ribeiro@motorista.com','(47) 99778-8990', '67890123456', 'AB', '2024-01-08'),
('Diego Carvalho Mendes',  '88990011223', 'diego.mendes@motorista.com',  '(47) 99889-9001', '78901234567', 'B',  '2024-04-03');
-- VEICULOS
INSERT INTO veiculo (placa, modelo, marca, ano, cor, fk_motorista, fk_categoria) VALUES
('ABC1D23', 'HB20',        'Hyundai',    2021, 'Prata',  1, 1),
('DEF2E34', 'Corolla',     'Toyota',     2022, 'Branco', 2, 2),
('GHI3F45', 'Civic',       'Honda',      2023, 'Preto',  3, 3),
('JKL4G56', 'Spin',        'Chevrolet',  2020, 'Cinza',  4, 4),
('MNO5H67', 'CG 160',      'Honda',      2022, 'Vermelho',5, 5);

-- VIAGENS
INSERT INTO viagem (fk_passageiro, fk_motorista, fk_categoria, fk_meio_pagamento, origem_endereco, origem_lat, origem_lng, destino_endereco, destino_lat, destino_lng, distancia_km, duracao_minutos, valor_total, status, data_solicitacao, data_inicio, data_fim) VALUES
(1, 2, 1, 1, 'Rua XV de Novembro, 100, Joinville',       -26.3044793, -48.8454581, 'Shopping Mueller, Joinville',          -26.2952, -48.8490, 3.2,  12, 11.72, 'concluida', '2025-04-01 08:10:00', '2025-04-01 08:13:00', '2025-04-01 08:25:00'),
(2, 1, 2, 3, 'Av. Beira Rio, 500, Joinville',            -26.3100000, -48.8500000, 'Terminal Central, Joinville',          -26.3020, -48.8460, 4.8,  18, 19.94, 'concluida', '2025-04-02 09:00:00', '2025-04-02 09:03:00', '2025-04-02 09:21:00'),
(3, 3, 3, 1, 'Rua Blumenau, 200, Joinville',             -26.2980000, -48.8510000, 'Aeroporto de Joinville',               -26.2242, -48.7975, 9.5,  25, 52.75, 'concluida', '2025-04-03 06:30:00', '2025-04-03 06:33:00', '2025-04-03 06:58:00'),
(4, 4, 4, 4, 'Rua Joinville, 300, Jaraguá do Sul',       -26.4862000, -49.0753000, 'Parque Malwee, Jaraguá do Sul',        -26.4800, -49.0700, 2.1,  10, 14.72, 'concluida', '2025-04-04 14:00:00', '2025-04-04 14:04:00', '2025-04-04 14:14:00'),
(5, 5, 5, 3, 'Av. Getúlio Vargas, 400, Joinville',       -26.3070000, -48.8470000, 'UFSC Campus Joinville',                -26.3730, -48.8470, 7.3,  15,  9.45, 'concluida', '2025-04-05 07:45:00', '2025-04-05 07:47:00', '2025-04-05 08:02:00'),
(6, 2, 1, 2, 'Rua Boa Vista, 50, Joinville',             -26.3150000, -48.8430000, 'Garten Shopping, Joinville',           -26.2870, -48.8530, 5.6,  20, 16.76, 'concluida', '2025-04-06 11:20:00', '2025-04-06 11:23:00', '2025-04-06 11:43:00'),
(7, 3, 2, 1, 'Rua Dom Pedro II, 600, Joinville',         -26.3020000, -48.8440000, 'Hospital Municipal, Joinville',        -26.2950, -48.8560, 4.1,  16, 18.48, 'concluida', '2025-04-07 16:00:00', '2025-04-07 16:02:00', '2025-04-07 16:18:00'),
(8, 1, 1, 5, 'Av. Santos Dumont, 700, Joinville',        -26.3090000, -48.8490000, 'Universidade Anhanguera, Joinville',   -26.3200, -48.8350, 3.9,  14, 13.19, 'concluida', '2025-04-08 18:30:00', '2025-04-08 18:32:00', '2025-04-08 18:46:00'),
(9, 4, 4, 4, 'Rua São Paulo, 800, Jaraguá do Sul',       -26.4900000, -49.0720000, 'Rodoviária de Jaraguá do Sul',         -26.4840, -49.0680, 1.8,   8, 13.76, 'concluida', '2025-04-09 07:10:00', '2025-04-09 07:12:00', '2025-04-09 07:20:00'),
(10, 5, 5, 3, 'Rua Visconde de Taunay, 900, Joinville',  -26.3010000, -48.8420000, 'Mercado Municipal, Joinville',         -26.3060, -48.8500, 1.2,   6,  4.80, 'concluida', '2025-04-10 10:05:00', '2025-04-10 10:06:00', '2025-04-10 10:12:00');
INSERT INTO viagem (fk_passageiro, fk_motorista, fk_categoria, fk_meio_pagamento, origem_endereco, origem_lat, origem_lng, destino_endereco, destino_lat, destino_lng, distancia_km, duracao_minutos, valor_total, status, data_solicitacao, data_inicio, data_fim) VALUES
(8, 1, 1, 5, 'Av. Santos Dumont, 700, Joinville',        -26.3090000, -48.8490000, 'Universidade Anhanguera, Joinville',   -26.3200, -48.8350, 3.9,  14, 13.19, 'em_andamento', '2025-04-08 18:30:00', '2025-04-08 18:32:00', '2025-04-08 18:46:00')

-- HISTORICO DE VIAGENS
INSERT INTO historico_viagem (fk_viagem, status, data_registro, observacao) VALUES
(1, 'solicitada',   '2025-04-01 08:10:00', 'Passageiro solicitou corrida'),
(1, 'aceita',       '2025-04-01 08:11:00', 'Motorista aceitou a corrida'),
(1, 'em_andamento', '2025-04-01 08:13:00', 'Motorista chegou e iniciou a corrida'),
(1, 'concluida',    '2025-04-01 08:25:00', 'Corrida finalizada com sucesso'),
(2, 'solicitada',   '2025-04-02 09:00:00', 'Passageiro solicitou corrida'),
(2, 'aceita',       '2025-04-02 09:01:00', 'Motorista aceitou a corrida'),
(2, 'em_andamento', '2025-04-02 09:03:00', 'Motorista chegou e iniciou a corrida'),
(2, 'concluida',    '2025-04-02 09:21:00', 'Corrida finalizada com sucesso'),
(3, 'solicitada',   '2025-04-03 06:30:00', 'Passageiro solicitou corrida'),
(3, 'aceita',       '2025-04-03 06:31:00', 'Motorista aceitou a corrida'),
(3, 'em_andamento', '2025-04-03 06:33:00', 'Motorista chegou e iniciou a corrida'),
(3, 'concluida',    '2025-04-03 06:58:00', 'Corrida finalizada com sucesso');

-- AVALIACOES
INSERT INTO avaliacao (fk_viagem, nota_passageiro_ao_motorista, comentario_passageiro, nota_motorista_ao_passageiro, comentario_motorista, data_avaliacao) VALUES
(1, 5, 'Motorista muito educado e pontual!',          5, 'Passageiro tranquilo e simpático.',        '2025-04-01 08:30:00'),
(2, 4, 'Carro limpo e confortável.',                  5, 'Ótimo passageiro, sem problemas.',         '2025-04-02 09:25:00'),
(3, 5, 'Excelente! Chegou no aeroporto no horário.', 4, 'Passageiro pontual.',                       '2025-04-03 07:05:00'),
(4, 3, 'Demorou um pouco para chegar.',               5, 'Passageiro compreensivo.',                 '2025-04-04 14:20:00'),
(5, 5, 'Super rápido e eficiente!',                   5, 'Passageiro muito gente boa.',              '2025-04-05 08:10:00'),
(6, 4, 'Boa viagem, sem reclamações.',                4, 'Tudo certo com o passageiro.',             '2025-04-06 11:50:00'),
(7, 5, 'Motorista muito profissional.',               5, 'Passageiro respeitoso e educado.',         '2025-04-07 16:25:00'),
(8, 4, 'Viagem tranquila e sem atrasos.',             4, 'Passageiro sem problemas.',                '2025-04-08 18:55:00'),
(9, 5, 'Perfeito! Chegou rápido.',                    5, 'Ótimo passageiro, recomendo.',             '2025-04-09 07:30:00'),
(10,5, 'Mototaxi ágil e seguro.',                     5, 'Passageiro muito simpático.',              '2025-04-10 10:20:00');

-- PAGAMENTOS
INSERT INTO pagamento (fk_viagem, fk_meio_pagamento, valor, status, data_pagamento, codigo_transacao) VALUES
(1,  1, 11.72, 'aprovado', '2025-04-01 08:26:00', 'TXN20250401A001'),
(2,  3, 19.94, 'aprovado', '2025-04-02 09:22:00', 'TXN20250402P002'),
(3,  1, 52.75, 'aprovado', '2025-04-03 06:59:00', 'TXN20250403A003'),
(4,  4, 14.72, 'aprovado', '2025-04-04 14:15:00', NULL),
(5,  3,  9.45, 'aprovado', '2025-04-05 08:03:00', 'TXN20250405P005'),
(6,  2, 16.76, 'aprovado', '2025-04-06 11:44:00', 'TXN20250406D006'),
(7,  1, 18.48, 'aprovado', '2025-04-07 16:19:00', 'TXN20250407A007'),
(8,  5, 13.19, 'aprovado', '2025-04-08 18:47:00', 'TXN20250408W008'),
(9,  4, 13.76, 'aprovado', '2025-04-09 07:21:00', NULL),
(10, 3,  4.80, 'aprovado', '2025-04-10 10:13:00', 'TXN20250410P010');



