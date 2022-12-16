--CRIAÇÂO DA TABELA PRODUCT
CREATE TABLE product (
id SERIAL PRIMARY KEY,
name VARCHAR(20),
price FLOAT,
qtde INTEGER
)

--CRIAÇÂO DA TABELA CATEGORY
CREATE TABLE category (
id SERIAL PRIMARY KEY,
name VARCHAR(20)
)

--CRIAÇÂO DA TABELA PRODUCT_CATEGORY: TERCEIRA TABELA GERADA PELO RELACIONAMENTO DE M -> M
CREATE TABLE product_category (
  id_product INTEGER,
  id_category INTEGER,
  --referencia para chaves estrangeiras
  FOREIGN KEY (id_product) REFERENCES product (id) ON DELETE CASCADE,
  FOREIGN KEY (id_category) REFERENCES category (id) ON DELETE CASCADE
)

--INSERÇÃO DE VALORES DE CATEGORY
INSERT INTO category (name) VALUES ('Refrigerantes');
INSERT INTO category (name) VALUES ('Bebidas Alcoolicas');
INSERT INTO category (name) VALUES ('Eletrônicos');
INSERT INTO category (name) VALUES ('Informática');
INSERT INTO category (name) VALUES ('Alimentos');

--INSERÇÂO DE VALORES DE PRODUCT
INSERT INTO product (name, price, qtde) VALUES ('Coca-Cola', 9.5, 20);
INSERT INTO product (name, price, qtde) VALUES ('Fanta', 7.5, 20);
INSERT INTO product (name, price, qtde) VALUES ('Guaraná', 8.25, 10);

INSERT INTO product (name, price, qtde) VALUES ('Arroz', 3.75, 20);
INSERT INTO product (name, price, qtde) VALUES ('Macarrão', 2.5, 20);
INSERT INTO product (name, price, qtde) VALUES ('Feijão', 6.5, 20);

--INSERÇÃO DE ID'S DE PRODUCT E CATEGORY
INSERT INTO product_category (id_product, id_category) VALUES (1, 1);
INSERT INTO product_category (id_product, id_category) VALUES (2, 1);
INSERT INTO product_category (id_product, id_category) VALUES (3, 1);


INSERT INTO product_category (id_product, id_category) VALUES (4, 5);
INSERT INTO product_category (id_product, id_category) VALUES (5, 5);
INSERT INTO product_category (id_product, id_category) VALUES (6, 5);


--TRAZ TODOS OS REGISTROS DE PRODUCT
SELECT * FROM product;

--TRAZ O ATRIBUTO OU NOME DA COLUNA DE PRODUCT
SELECT name FROM product;

SELECT * FROM category;


--SELEÇÃO PARA TRAZER OS PRODUTOS COM AS CATEGORIAS UTILIZANDO O INNER JOIN (JUNÇÂO DE TABELAS EM QUE A id DO PRODUTO SEJA IGUAL AO DE CATEGORIA)
SELECT p.qtde as quantidade, c.name as categoria
FROM product p
INNER JOIN product_category result on p.id = result.id_product
INNER JOIN category c ON result.id_category = c.id




















