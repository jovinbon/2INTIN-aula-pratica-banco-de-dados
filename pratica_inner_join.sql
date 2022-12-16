/*
  Script de criação da tablea tb_produto
*/
create table tb_produto (
   id integer constraint pk_id_produto primary key,
   nome varchar(30),
   qtde integer not null
);

/*
  Script de criação da tablea tb_categoria
*/
create table tb_categoria (
   id integer constraint pk_id_categoria primary key,
   nome varchar(30)
);

/*
  Script de criação da terceira tabela tb_prod_cat (relação de muitos para muitos de tb_produto e tb_categoria)
*/
create table tb_prod_cat (
   id_produto integer not null,
   id_categoria integer not null,
   foreign key (id_produto) references tb_produto (id) on delete cascade,
   foreign key (id_categoria) references tb_categoria (id) on delete cascade
);

/*
  Script de inserção de dados na tabela tb_produto
*/
insert into tb_produto (id, nome, qtde) values (1, 'Arroz Bondozo', 20);
insert into tb_produto (id, nome, qtde) values (2, 'Macarrão Esperto', 10);
insert into tb_produto (id, nome, qtde) values (3, 'Feijão Carioca', 20);
insert into tb_produto (id, nome, qtde) values (4, 'Farinha Mandioca', 40);
insert into tb_produto (id, nome, qtde) values (5, 'TV Samdung 61pl', 5);
insert into tb_produto (id, nome, qtde) values (6, 'O Senhor dos anéis', 10);
insert into tb_produto (id, nome, qtde) values (7, 'Laptop Acer', 12);
insert into tb_produto (id, nome, qtde) values (8, 'MacBook Pro', 8);

/*
  Script de inserção de dados na tabela tb_categoria
*/
insert into tb_categoria (id, nome) values (1, 'Alimentos');
insert into tb_categoria (id, nome) values (2, 'Eletrônicos');
insert into tb_categoria (id, nome) values (3, 'Livros');
insert into tb_categoria (id, nome) values (4, 'Informática');

/*
  Script de inserção de dados na tabela tb_prod_cat
*/
insert into tb_prod_cat (id_produto, id_categoria) values (1, 1);
insert into tb_prod_cat (id_produto, id_categoria) values (2, 1);
insert into tb_prod_cat (id_produto, id_categoria) values (3, 1);
insert into tb_prod_cat (id_produto, id_categoria) values (4, 1);
insert into tb_prod_cat (id_produto, id_categoria) values (5, 2);
insert into tb_prod_cat (id_produto, id_categoria) values (6, 3);
insert into tb_prod_cat (id_produto, id_categoria) values (7, 4);
insert into tb_prod_cat (id_produto, id_categoria) values (8, 4);
insert into tb_prod_cat (id_produto, id_categoria) values (7, 2);
insert into tb_prod_cat (id_produto, id_categoria) values (8, 2);


/*
  Script de seleção de dados na tabela tb_produto com AS (alíases - nomeação ou apelidos dados aos nomes dos campos em tempo de execução,
  mas não altera na tabela do banco de dados)
  
*/
SELECT p.nome as produto, p.qtde as quantidade, c.nome as categoria
FROM tb_produto p
inner join tb_prod_cat r on p.id = r.id_produto
inner join tb_categoria c on r.id_categoria = c.id
where r.id_categoria = 2





