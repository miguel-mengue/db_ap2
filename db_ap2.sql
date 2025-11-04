CREATE TABLE Dep_empregado
(
num_emp bigint NOT NULL PRIMARY KEY,
num_depto bigint NOT NULL,
salario bigint,
nome_emp varchar(30),
nome_depto varchar(30)
);

CREATE TABLE Dependente
(
ID_dependente bigint NOT NULL PRIMARY KEY,
nome_dep varchar(30),
data_nasc varchar(30),
id_emp bigint,
FOREIGN KEY (id_emp) REFERENCES Dep_empregado(num_emp)
);

CREATE TABLE Projeto
(
ID_projeto bigint NOT NULL PRIMARY KEY,
nome_projeto varchar(30),
id_depto bigint NOT NULL,
FOREIGN KEY (id_depto) REFERENCES Dep_empregado(num_depto)
);

CREATE TABLE Participa_de
(
hs_trab bigint,
id_projetos bigint NOT NULL,
id_empregados bigint NOT NULL,
CONSTRAINT empregados_participa
FOREIGN KEY (id_empregados) references Dep_empregado(num_emp),
CONSTRAINT projeto_participa
FOREIGN KEY (id_projetos) references Projeto(ID_projeto)
);