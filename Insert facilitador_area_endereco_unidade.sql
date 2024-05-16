INSERT INTO facilitador (nome, sobrenome, nascimento, cpf, status_facilitador, email, telefone, matricula) 
VALUES
    ('Rafael', 'Jesus', '1985-05-09', '550.954.687-51', 'ativo', 'rafaela-jesus95@vanguarda.tv', '(21) 98822-3053', '123456'),
    ('Nicolas', 'Fernandes', '1982-04-18', '010.414.047-00', 'ativo', 'nicolas_fernandes@band.com.br', '(21) 99285-4775', '234567'),
    ('Kamilla', 'Aparício', '1991-05-08', '928.534.377-52', 'inativo', 'kamilly.esther.aparicio@johndeere.com', '(21) 99939-3070', '345678'),
    ('Cláudio', 'Porto', '1980-04-12', '622.348.797-52', 'ativo', 'claudio.joao.porto@signa.net.br', '(21) 98547-4258', '456789'),
    ('Alice', 'Cavalcanti', '1991-03-15', '562.379.577-31', 'ativo', 'ayla_cavalcanti@fingrs.com.br', '(22) 98347-4765', '567890'),
    ('Caleb', 'Novaes', '1996-03-06', '256.370.987-35', 'ativo', 'calebtiagonovaes@life.com', '(21) 99305-4032', '678901'),
    ('José', 'Santos', '1990-04-02', '411.333.777-26', 'inativo', 'jose.mateus.santos@mail.com', '(21) 98605-7827', '789012'),
    ('Isabela', 'Souza', '1987-02-14', '946.017.677-17', 'ativo', 'isa.tania.souza@kaynak.com.br', '(21) 99153-6135', '890123'),
    ('Ricardo', 'Figueiredo', '1995-01-24', '421.970.777-83', 'ativo', 'ricardo.@arecocomercial.com.br', '(21) 98511-3380', '901234'),
    ('Sérgio', 'Gomes', '1993-04-16', '129.296.727-73', 'inativo', 'sergio.gabriel@agenziamarketing.com.br', '(21) 99169-1592', '012345');
    
INSERT INTO area (desenvol_web, ciencia_dados, seguranca_info, machine_learning, desenvol_apps, adm_bd, redes_comput, soft_skills) 
VALUES 
	(1, 0, 0, 0, 0, 0, 0, 0),
	(0, 1, 0, 0, 0, 0, 0, 0), 
	(0, 0, 1, 0, 0, 0, 0, 0), 
	(0, 0, 0, 1, 0, 0, 0, 0), 
	(0, 0, 0, 0, 1, 0, 0, 0), 
	(0, 0, 0, 0, 0, 1, 0, 0), 
	(0, 0, 0, 0, 0, 0, 1, 0), 
	(0, 0, 0, 0, 0, 0, 0, 1); 

INSERT INTO endereco (cep, rua, numero, bairro, cidade)
VALUES
    ('25237-230', 'Rua V', 648, 'Cidade dos Meninos', 'Duque de Caxias'),
	('27322-250', 'Rua Júlio Castilho', 804, 'Nossa Senhora do Amparo', 'Barra Mansa'),
	('24322-500', 'Estrada do Ourives', 134, 'Pendotiba', 'Niterói'),
	('28010-280', 'Rua Marechal Deodoro', 620, 'Centro', 'Rio de Janeiro'),
	('28605-570', 'Rua Pedro Alberto', 710, 'Amparo', 'Nova Friburgo'),
	('26127-342', 'Travessa São Miguel', 682, 'Shangri-lá', 'Belford Roxo'),
	('22725-425', 'Rua Santa luzia', 185, 'Taquara', 'Rio de Janeiro'),
	('24436-460', 'Rua Cristóvão Martins Rodrigues', 913, 'Porto Novo', 'São Gonçalo');

INSERT INTO unidade (nome, telefone, endereco_id)
VALUES
    ('Unidade 1', '(21) 1234-5678', 1),
    ('Unidade 2', '(21) 2345-6789', 2),
    ('Unidade 3', '(21) 3456-7890', 3),
    ('Unidade 4', '(21) 4567-8901', 4),
    ('Unidade 5', '(21) 5678-9012', 5),
    ('Unidade 6', '(21) 6789-0123', 6),
    ('Unidade 7', '(21) 7890-1234', 7),
    ('Unidade 8', '(21) 8901-2345', 8);


