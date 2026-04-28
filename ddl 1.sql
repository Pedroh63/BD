CREATE DATABASE transporte_app;
USE transporte_app;

CREATE TABLE categoria_veiculo (
    pk_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(200),
    preco_base_km DECIMAL(5,2) NOT NULL,
    preco_base_corrida DECIMAL(5,2) NOT NULL
);

CREATE TABLE meio_pagamento (
    pk_meio_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(50) NOT NULL,
    ativo TINYINT(1) NOT NULL DEFAULT 1
);

CREATE TABLE passageiro (
    pk_passageiro INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    data_cadastro DATE NOT NULL,
    ativo TINYINT(1) NOT NULL DEFAULT 1
);

CREATE TABLE motorista (
    pk_motorista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL,
    cnh VARCHAR(11) NOT NULL UNIQUE,
    categoria_cnh CHAR(2) NOT NULL,
    data_cadastro DATE NOT NULL,
    ativo TINYINT(1) NOT NULL DEFAULT 1
);

CREATE TABLE veiculo (
    pk_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(8) NOT NULL UNIQUE,
    modelo VARCHAR(80) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    ano YEAR NOT NULL,
    cor VARCHAR(40) NOT NULL,
    fk_motorista INT NOT NULL,
    fk_categoria INT NOT NULL,
    FOREIGN KEY (fk_motorista) REFERENCES motorista(pk_motorista),
    FOREIGN KEY (fk_categoria) REFERENCES categoria_veiculo(pk_categoria)
);

CREATE TABLE viagem (
    pk_viagem INT PRIMARY KEY AUTO_INCREMENT,
    fk_passageiro INT NOT NULL,
    fk_motorista INT NOT NULL,
    fk_categoria INT NOT NULL,
    fk_meio_pagamento INT NOT NULL,
    origem_endereco VARCHAR(200) NOT NULL,
    origem_lat DECIMAL(10,7) NOT NULL,
    origem_lng DECIMAL(10,7) NOT NULL,
    destino_endereco VARCHAR(200) NOT NULL,
    destino_lat DECIMAL(10,7) NOT NULL,
    destino_lng DECIMAL(10,7) NOT NULL,
    distancia_km DECIMAL(6,2),
    duracao_minutos INT,
    valor_total DECIMAL(8,2),
    status ENUM('solicitada','aceita','em_andamento','concluida','cancelada') NOT NULL DEFAULT 'solicitada',
    data_solicitacao DATETIME NOT NULL,
    data_inicio DATETIME,
    data_fim DATETIME,
    FOREIGN KEY (fk_passageiro) REFERENCES passageiro(pk_passageiro),
    FOREIGN KEY (fk_motorista) REFERENCES motorista(pk_motorista),
    FOREIGN KEY (fk_categoria) REFERENCES categoria_veiculo(pk_categoria),
    FOREIGN KEY (fk_meio_pagamento) REFERENCES meio_pagamento(pk_meio_pagamento)
);

CREATE TABLE historico_viagem (
    pk_historico INT PRIMARY KEY AUTO_INCREMENT,
    fk_viagem INT NOT NULL,
    status ENUM('solicitada','aceita','em_andamento','concluida','cancelada') NOT NULL,
    data_registro DATETIME NOT NULL,
    observacao VARCHAR(300),
    FOREIGN KEY (fk_viagem) REFERENCES viagem(pk_viagem)
);

CREATE TABLE avaliacao (
    pk_avaliacao INT PRIMARY KEY AUTO_INCREMENT,
    fk_viagem INT NOT NULL UNIQUE,
    nota_passageiro_ao_motorista TINYINT CHECK (nota_passageiro_ao_motorista BETWEEN 1 AND 5),
    comentario_passageiro VARCHAR(300),
    nota_motorista_ao_passageiro TINYINT CHECK (nota_motorista_ao_passageiro BETWEEN 1 AND 5),
    comentario_motorista VARCHAR(300),
    data_avaliacao DATETIME NOT NULL,
    FOREIGN KEY (fk_viagem) REFERENCES viagem(pk_viagem)
);

CREATE TABLE pagamento (
    pk_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    fk_viagem INT NOT NULL UNIQUE,
    fk_meio_pagamento INT NOT NULL,
    valor DECIMAL(8,2) NOT NULL,
    status ENUM('pendente','aprovado','recusado','estornado') NOT NULL DEFAULT 'pendente',
    data_pagamento DATETIME,
    codigo_transacao VARCHAR(100),
    FOREIGN KEY (fk_viagem) REFERENCES viagem(pk_viagem),
    FOREIGN KEY (fk_meio_pagamento) REFERENCES meio_pagamento(pk_meio_pagamento)
);