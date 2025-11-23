-- ============================
-- TABELAS DO PROTÓTIPO JM AUTO
-- ============================

-- CLIENTES
create table if not exists clientes (
    id serial primary key,
    nome varchar(100) not null,
    telefone varchar(20),
    email varchar(100),
    veiculo varchar(100),
    placa varchar(10)
);

-- SERVICOS
create table if not exists servicos (
    id serial primary key,
    descricao text not null,
    valor numeric(10,2) not null
);

-- PRODUTOS (PEÇAS)
create table if not exists produtos (
    id serial primary key,
    nome varchar(100) not null,
    quantidade int not null,
    valor_unit numeric(10,2) not null
);

-- ORDENS DE SERVIÇO
create table if not exists ordens_servico (
    id serial primary key,
    id_cliente int references clientes(id),
    id_servico int references servicos(id),
    id_produto int references produtos(id),
    status varchar(20),
    total numeric(10,2)
);
