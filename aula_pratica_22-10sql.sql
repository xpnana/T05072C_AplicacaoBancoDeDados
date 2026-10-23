USE DB_T05072C_Ana_Cibele;

CREATE TABLE Contatos (
    id_telefone INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    telefone VARCHAR(20)
);

INSERT INTO Contatos(nome, telefone)
VALUES
('Jose','(11)98765-4321'),
('Joao','(21)92587-6321'),
('Antonio','(11)93654-7854'),
('Maria','(11)96547-8523');

SELECT * FROM Contatos;

UPDATE Contatos 
SET nome = "leandro" 
WHERE id_telefone = "1";

UPDATE Contatos 
SET telefone = "(11)4002-8922"
WHERE id_telefone > 1;

ROLLBACK;

-- 1 Escreva o comando SQL para selecionar e exibir todas as colunas da tabela de Contatos 

SELECT * FROM Contatos;

-- 2 Escreva a consulta SQL para encontrar e retornar apenas os dados do registro cujo nome seja 'Maria'

SELECT * FROM Contatos
WHERE nome = 'Maria';

-- 3 Escreva comando SQL para listar todos os contatos ordenados alfabeticamente pelo nome de forma descrescente (de z a A).
SELECT * FROM Contatos
ORDER BY nome DESC;

-- 4 Escreva a query SQL utilizando o operador LIKE para encontrar todos os contatos cujos telefones contenham o DDD (11)

SELECT * FROM Contatos
WHERE telefone LIKE '(11%';

-- 5 Escreva comando SQL para atualizar o numero de telefone do contato do Joao para (21) 90000-0000

UPDATE Contatos 
SET telefone = '(21) 90000-0000'
WHERE nome = 'Joao';
SELECT * FROM Contatos