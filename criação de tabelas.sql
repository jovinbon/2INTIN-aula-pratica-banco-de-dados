/*
  Script de criação de tabela empregado
*/
CREATE TABLE empregado (
id SERIAL,
matricula VARCHAR(8) PRIMARY KEY,
nome VARCHAR(20),
supervisor VARCHAR(8) REFERENCES empregado (matricula),
salario FLOAT,
cod_departamento INTEGER
);

/*
  Script de inserção de dados na tabela empregado
*/
INSERT INTO empregado (matricula, nome, supervisor, salario, cod_departamento) VALUES ('1111-1', 'Dona Maria', '1113-3', 1500.0, null);
INSERT INTO empregado (matricula, nome, supervisor, salario, cod_departamento) VALUES ('1112-2', 'Joaquina', '1113-3', 2500.0, null);
INSERT INTO empregado (matricula, nome, supervisor, salario, cod_departamento) VALUES ('1113-3', 'José Datena', null, 1500.0, null);
INSERT INTO empregado (matricula, nome, supervisor, salario, cod_departamento) VALUES ('1114-4', 'Neymar Jr', '1115-5', 3500.0, null);
INSERT INTO empregado (matricula, nome, supervisor, salario, cod_departamento) VALUES ('1115-5', 'Paquetá', null, 4500.0, null);

/*
  Script de atualização de dados na tabela empregado
  com a cláusula WHERE (ONDE)
*/
UPDATE empregado SET cod_departamento = 2 WHERE matricula = '1115-5';
UPDATE empregado SET cod_departamento = 3 WHERE matricula = '1113-3';
UPDATE empregado SET cod_departamento = 4 WHERE matricula = '1111-1';
UPDATE empregado SET cod_departamento = 4 WHERE matricula = '1112-2';
UPDATE empregado SET cod_departamento = 4 WHERE matricula = '1114-4';

UPDATE empregado SET salario = 15000.0 WHERE matricula = '1111-1';
UPDATE empregado SET salario = 150000.0 WHERE matricula = '1114-4';

/*
  Script de criação de tabela departamento
*/
CREATE TABLE departamento (
id SERIAL PRIMARY KEY,
nome_departamento VARCHAR(20),
mat_gerente VARCHAR(8)
);

/*
  Script de inserção de dados na tabela departamento
*/
INSERT INTO departamento (nome_departamento, mat_gerente) VALUES ('RH Futebol', '1113-3');
INSERT INTO departamento (nome_departamento, mat_gerente) VALUES ('Financeiro', '1115-5');
INSERT INTO departamento (nome_departamento, mat_gerente) VALUES ('Produção', '1111-1');


/*
  Script de criação de tabela dependente
*/
CREATE TABLE dependente (
id SERIAL PRIMARY KEY,
mat_empregado VARCHAR(8),
nome_dependente VARCHAR(20),
parentesco VARCHAR(10)
);

/*
  Script de inserção de dados na tabela dependente
*/
INSERT INTO dependente (mat_empregado, nome_dependente, parentesco) VALUES ('1111-1', 'Lívia', 'Mãe');
INSERT INTO dependente (mat_empregado, nome_dependente, parentesco) VALUES ('1111-1', 'Emanuel', 'Mãe');
INSERT INTO dependente (mat_empregado, nome_dependente, parentesco) VALUES ('1114-4', 'Ysadhora', 'Pai');


/*
  Script de criação de tabela projeto
*/
CREATE TABLE projeto (
id SERIAL PRIMARY KEY,
nome_projeto VARCHAR(40),
cod_departamento INTEGER
);

/*
  Script de inserção de dados na tabela projeto
*/
INSERT INTO projeto (nome_projeto, cod_departamento) VALUES ('Escolinha de futebol', 2);
INSERT INTO projeto (nome_projeto, cod_departamento) VALUES ('Futuras craques do futebol feminino', 3);


/*
  Script de criação de tabela trabalha_projeto
*/
CREATE TABLE trabalha_projeto (
id SERIAL PRIMARY KEY,
mat_empregado VARCHAR(8),
cod_projeto INTEGER,
num_horas INTEGER
);

/*
  Script de inserção de dados na tabela trabalha_projeto
*/
INSERT INTO trabalha_projeto (mat_empregado, cod_projeto, num_horas) VALUES ('1113-3', 2, 60);
INSERT INTO trabalha_projeto (mat_empregado, cod_projeto, num_horas) VALUES ('1115-5', 1, 120);



/*
  Script de alteração de propriedades das colunas das tabelas para adicionar a chave estrangeira
*/
ALTER TABLE empregado ADD FOREIGN KEY (cod_departamento) REFERENCES departamento (id);

ALTER TABLE departamento ADD FOREIGN KEY (mat_gerente) REFERENCES empregado (matricula);

ALTER TABLE dependente ADD FOREIGN KEY (mat_empregado) REFERENCES empregado (matricula);

ALTER TABLE projeto ADD FOREIGN KEY (cod_departamento) REFERENCES departamento (id);

ALTER TABLE trabalha_projeto ADD FOREIGN KEY (mat_empregado) REFERENCES empregado (matricula);

ALTER TABLE trabalha_projeto ADD FOREIGN KEY (cod_projeto) REFERENCES projeto (id);




/*
  Script de seleção de todos os dados da tabela empregado
*/
SELECT * FROM empregado;

/*
  Script de seleção de apenas um dado (matricula) da tabela empregado
*/
SELECT matricula FROM empregado;

/*
  Script de seleção de dados (matricula, nome) da tabela empregado
*/
SELECT matricula, nome FROM empregado;

/*
  Script de seleção de dado (nome) da tabela empregado
  com a cláusula WHERE (ONDE a matricula do empregado é 1111-1) 
*/
SELECT nome FROM empregado WHERE matricula = '1111-1';

/*
  Script de seleção de dado (nome) da tabela empregado
  com a cláusula WHERE (ONDE o código do departamento é 4) 
*/
SELECT nome FROM empregado WHERE cod_departamento = 4;

/*
  Script que seleciona todos os dados da tabela empregado
  com a cláusula WHERE (ONDE o código do departamento é 4) 
*/
SELECT * FROM empregado WHERE cod_departamento = 4;

/*
  Script que seleciona todos os dados da tabela empregado
  com a cláusula WHERE (ONDE o código do departamento é 4) e ORDER BY (ORDENADO POR salário) 
  do menor salário ao maior ou ordem crescente por salário
*/
SELECT * FROM empregado WHERE cod_departamento = 4 ORDER BY salario;

/*
  Script que seleciona todos os dados da tabela empregado
  com a cláusula WHERE (ONDE o código do departamento é 4) e ORDER BY (ORDENADO POR salário) 
  do maior salário ao menor ou ordem decrescente por salário DESC
*/
SELECT * FROM empregado WHERE cod_departamento = 4 ORDER BY salario DESC;

/*
  Assim como no cript acima, seleciona todos os dados da tabela empregado
  com a cláusula WHERE (ONDE o código do departamento é 4) e ORDER BY (ORDENADO POR nome) 
  em ordem alfabética
*/
SELECT * FROM empregado WHERE cod_departamento = 4 ORDER BY nome;

/*
  Da mesma forma, seleciona todos os dados da tabela empregado
  com a cláusula WHERE (ONDE o código do departamento é 4) e ORDER BY (ORDENADO POR nome) 
  em ordem alfabética decrescente
*/
SELECT * FROM empregado WHERE cod_departamento = 4 ORDER BY nome DESC;


/*
  Script que seleciona os dados (nome, salário) da tabela empregado
  com a cláusula WHERE (ONDE o salário é menor que 2000)
*/
SELECT nome, salario FROM Empregado
WHERE salario < 2000.0;

/*
  Script que seleciona os dados (matrícula, salário) da tabela empregado
  com a cláusula WHERE (ONDE eles estão no departamento 2 e o salário é maior que 3000)
*/
SELECT matricula, nome FROM Empregado
WHERE cod_departamento=2 AND salario > 3000.0;


/*------------------- UNION --------------------*/

SELECT matricula FROM empregado
UNION
SELECT mat_gerente FROM departamento


SELECT id, matricula FROM empregado
UNION
SELECT id, mat_empregado FROM dependente
UNION
SELECT id, mat_empregado FROM trabalha_projeto

SELECT id FROM projeto
UNION
SELECT id FROM trabalha_projeto

SELECT nome, salario
FROM empregado
UNION
SELECT 'z_SalarioTotal:', SUM(salario)
FROM empregado;


/*------------------- INTERSECT --------------------*/

SELECT matricula, nome as gerente
FROM empregado 
LEFT JOIN departamento
ON empregado.matricula = departamento.mat_gerente
INTERSECT
SELECT matricula, nome
FROM empregado 
RIGHT JOIN departamento
ON empregado.matricula = departamento.mat_gerente;


SELECT matricula, nome as pai_ou_mae
FROM empregado 
LEFT JOIN dependente
ON empregado.matricula = dependente.mat_empregado
INTERSECT
SELECT matricula, nome
FROM empregado 
RIGHT JOIN dependente
ON empregado.matricula = dependente.mat_empregado;




create table bonus (
  id SERIAL,
  empregado_id INTEGER,
  valor FLOAT
);

INSERT INTO bonus (empregado_id, valor) VALUES (2, 300.0);
INSERT INTO bonus (empregado_id, valor) VALUES (4, 300.0);
INSERT INTO bonus (empregado_id, valor) VALUES (6, 200.0);


SELECT matricula, nome, valor as bonus
FROM empregado 
LEFT JOIN bonus
ON empregado.id = bonus.empregado_id
INTERSECT
SELECT matricula, nome, valor
FROM empregado 
RIGHT JOIN bonus
ON empregado.id = bonus.empregado_id;


*------------------- EXCEPT --------------------*/

SELECT matricula, nome, valor as bonus
FROM empregado 
LEFT JOIN bonus
ON empregado.id = bonus.empregado_id
EXCEPT
SELECT matricula, nome, valor
FROM empregado 
RIGHT JOIN bonus
ON empregado.id = bonus.empregado_id;

SELECT cod_departamento
FROM departamento 
LEFT JOIN projeto
ON departamento.id = projeto.cod_departamento
EXCEPT
SELECT cod_departamento
FROM departamento 
RIGHT JOIN projeto
ON departamento.id = projeto.cod_departamento;