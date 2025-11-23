-- ===================================
-- RELATÓRIOS PARA A PoC JM AUTO
-- ===================================

-- Faturamento total
select sum(total) as faturamento_total
from ordens_servico;

-- Serviços mais realizados
select s.descricao, count(*) as quantidade
from ordens_servico os
join servicos s on s.id = os.id_servico
group by s.descricao
order by quantidade desc;

-- Produtos mais usados
select p.nome, count(*) as vezes_usado
from ordens_servico os
join produtos p on p.id = os.id_produto
group by p.nome;

-- Estoque baixo (abaixo de 5 unidades)
select *
from produtos
where quantidade < 5;
