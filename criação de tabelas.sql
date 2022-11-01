CREATE TABLE empregado (
id SERIAL PRIMARY KEY,
matricula VARCHAR(8),
nome VARCHAR(20),
salario FLOAT,
supervisor VARCHAR(8),
cod_departamento INTEGER
--(supervisor) REFERENCES empregado (matricula),
--FOREIGN KEY (cod_departamento) REFERENCES departamento (id)
);

CREATE TABLE departamento (
id SERIAL PRIMARY KEY,
nome_departamento VARCHAR(20),
mat_gerente VARCHAR(8)
--FOREIGN KEY (mat_gerente) REFERENCES empregado (matricula)
);

CREATE TABLE dependente (
id SERIAL PRIMARY KEY,
mat_empregado VARCHAR(8),
nome_dependente VARCHAR(20),
parentesco VARCHAR(10)
--FOREIGN KEY (mat_empregado) REFERENCES empregado (matricula)
);

CREATE TABLE projeto (
id SERIAL PRIMARY KEY,
nome_projeto VARCHAR(40),
cod_departamento INTEGER
--FOREIGN KEY (cod_departamento) REFERENCES departamento (id)
);

CREATE TABLE trabalha_projeto (
id SERIAL PRIMARY KEY,
mat_empregado VARCHAR(8),
cod_projeto INTEGER,
num_horas INTEGER
--FOREIGN KEY (mat_empregado) REFERENCES empregado (matricula),
--FOREIGN KEY (cod_projeto) REFERENCES projeto (id)
)


















