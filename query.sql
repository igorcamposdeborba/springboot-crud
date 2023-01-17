CREATE DATABASE clientspring;

CREATE USER 'sa'@'localhost' IDENTIFIED BY '';
GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'sa'@'localhost' WITH GRANT OPTION;

USE clientspring;

CREATE TABLE tb_client (
	id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR(256) NOT NULL,
    cpf VARCHAR(12) NOT NULL UNIQUE,
    income DECIMAL(5, 2) NOT NULL,
    birth_date DATE NOT NULL,
    children INTEGER NOT NULL,
	PRIMARY KEY(id)
);
DROP TABLE tb_client;

SELECT * FROM tb_client;

ALTER TABLE tb_client CHANGE id id INT AUTO_INCREMENT PRIMARY KEY NOT NULL;

INSERT INTO tb_client (name, cpf, income, birth_Date, children) VALUES ('Igor Borba', '270.041.750-06', 5000.0, TIMESTAMP WITH TIME ZONE '1994-06-01T02:35:00Z', 1);
INSERT INTO tb_client (name, cpf, income, birth_Date, children) VALUES ('Luana Santos', '512.210.664-98', 4700.0, TIMESTAMP WITH TIME ZONE '1997-12-15T14:27:00Z', 2);
INSERT INTO tb_client (name, cpf, income, birth_Date, children) VALUES ('Pedro Gonçalves', '359.156.575-08', 2700.0, TIMESTAMP WITH TIME ZONE '2000-02-27T10:27:00Z', 0);
INSERT INTO tb_client (name, cpf, income, birth_Date, children) VALUES ('Bruno Souza', '445.366.676-44', 3000.47, TIMESTAMP WITH TIME ZONE '1998-03-14T00:15:00Z', 3);
INSERT INTO tb_client (name, cpf, income, birth_Date, children) VALUES ('Raquel Maia', '470.453.727-79', 7000.00, TIMESTAMP WITH TIME ZONE '1990-04-19T02:44:00Z', 0);
INSERT INTO tb_client (name, cpf, income, birth_date, children) VALUES ('Maria da Silva', '852.283.192.22', 2000.0, TIMESTAMP WITH TIME ZONE'1958-11-23T20:50:07.12345Z', 2);
INSERT INTO tb_client (name, cpf, income, birth_date, children) VALUES ('João Nascimento', '283.293.084.11', 1500.99, TIMESTAMP WITH TIME ZONE'1964-02-11T21:52:07.12345Z', 0);
INSERT INTO tb_client (name, cpf, income, birth_date, children) VALUES ('Carlos Nascimento', '823.623.546.77', 200.0, TIMESTAMP WITH TIME ZONE'2010-01-02T20:50:07.12345Z', 0);
INSERT INTO tb_client (name, cpf, income, birth_date, children) VALUES ('Ana Gomes', '893.850.020-90', 158.0, TIMESTAMP WITH TIME ZONE'1947-03-12T20:50:07.12345Z', 0);
INSERT INTO tb_client (name, cpf, income, birth_date, children) VALUES ('Domingos de Moraes', '201.182.100-25', 2000.44, TIMESTAMP WITH TIME ZONE'1989-12-25T20:50:07.12345Z', 1);
INSERT INTO tb_client (name, cpf, income, birth_date, children) VALUES ('Eduarda Matos', '427.153.460-93', 1222.0, TIMESTAMP WITH TIME ZONE'1999-07-07T20:50:07.12345Z', 0);
INSERT INTO tb_client (name, cpf, income, birth_date, children) VALUES ('Josefa Teixeira', '095.710.720-01', 766.0, TIMESTAMP WITH TIME ZONE'1983-06-10T20:50:07.12345Z', 1);
INSERT INTO tb_client (name, cpf, income, birth_date, children) VALUES ('Amadeu dos Santos', '658.270.000-60', 4564.34, TIMESTAMP WITH TIME ZONE'1992-11-05T20:50:07.12345Z', 2);
INSERT INTO tb_client (name, cpf, income, birth_date, children) VALUES ('Amadeu dos Santos', '054.159.100-20', 9464.0, TIMESTAMP WITH TIME ZONE'1982-12-24T20:50:07.12345Z', 0);
INSERT INTO tb_client (name, cpf, income, birth_date, children) VALUES ('Fabrício dos Santos', '062.282.890-80', 13700.26, TIMESTAMP WITH TIME ZONE'1934-07-13T20:50:07.12345Z', 1);
