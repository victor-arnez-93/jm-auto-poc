-- ============================
-- DADOS DE TESTE JM AUTO
-- ============================

insert into clientes (nome, telefone, email, veiculo, placa)
values
('Carlos Henrique', '15988889999', 'carlos@gmail.com', 'Fiesta', 'ABC1234'),
('João Ribeiro', '15999998888', 'joao@gmail.com', 'Corsa', 'DEF5678'),
('Marina Lopes', '15911112222', 'marina@gmail.com', 'HB20', 'GHI9012');

insert into servicos (descricao, valor)
values
('Troca de óleo', 120.00),
('Alinhamento e balanceamento', 180.00),
('Troca de pastilhas de freio', 250.00);

insert into produtos (nome, quantidade, valor_unit)
values
('Óleo 5W30', 10, 35.00),
('Pastilha de freio', 5, 70.00),
('Filtro de óleo', 12, 25.00);

insert into ordens_servico (id_cliente, id_servico, id_produto, status, total)
values
(1, 1, 1, 'Concluído', 155.00),
(2, 3, 2, 'Concluído', 320.00),
(3, 2, null, 'Pendente', 180.00);
