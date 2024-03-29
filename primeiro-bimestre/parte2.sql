INSERT INTO Cliente (nome, endereco, email, celular, data_nascimento)
VALUES  
('Leonardo Barbieri', 'Rua Michelangelo, 001, Curitiba - PR', 'leonardo.barbieri@gmail.com', '(81) 98765-8765', '1980-08-18'), 
('Chiara Marini', 'Travessa San Paolo, 329, Belo Horizonte - MG', 'chiara.marini@gmail.com', '(31) 98765-6789', '1989-12-14'), 
('Francesca Ferrari', 'Rua das Águias, 451, Bairro São Francisco, Brasília - DF', ' francesca.ferrari@gmail.com', '(61) 95432-1098', '1983-09-05'), 
('Giovanni Girard', 'Rua dos Girassóis, 597, Bairro Primavera, Recife - PE', 'giovanni.marini@gmail.com', '(81) 90123-4567', '1992-12-08'), 
('Julien Laurent', 'Praça das Rosas, 862, Bairro Jardim das Palmeiras, Cuiabá - MT', 'julien.laurent@gmail.com', '(65) 93456-7890', '1987-03-25'), 
('Chloe Lefevre', 'Avenida dos Pinheiros, 678, Bairro Alto da Serra, Vitória - ES', 'chloe.lefevre@gmail.com', '(27) 97654-3210', '1989-04-29'), 
('Alessandro Conti', 'Alameda das Acácias, 158, Bairro Flores do Campo, Manaus - AM', 'alessandro.conti@gmail.com', '(92) 89012-3456', '1984-10-22'), 
('Marco De Luca', 'Travessa dos Ipês, 948, Bairro Campo Verde, Fortaleza - CE', 'marco.deluca@gmail.com', '(85) 91234-5678', '1987-02-18'), 
('Isabella Moretti', 'Avenida do Sol, 795, Bairro Centro, Rio de Janeiro - RJ', 'isabella.moretti@gmail.com', '(21) 97654-3210', '1985-07-20'), 
('Sofia Rossi', 'Rua das Flores, 214, Bairro Jardim Primavera, São Paulo - SP', 'sofia.rossi@gmail.com', '(11) 98765-4321', '1990-03-15'); 

INSERT INTO Produto (nome, preco, descricao, quantidade_estoque)  
VALUES  
('Cafeteira Programável Morning Brew', 629.50, 'Comece o dia com o pé direito com a Cafeteira Programável Morning Brew. Com temporizador, jarra térmica e função de pausa para servir, você pode desfrutar do café fresquinho a qualquer hora.', 20), 
('Smartwatch TechFit', 299.99, 'O Smartwatch TechFit é um dispositivo inteligente que acompanha seu estilo de vida ativo. Com monitoramento de atividades físicas, notificações de mensagens e design elegante, é o parceiro perfeito para o seu dia a dia.', 40), 
('Bicicleta Mountain Peak', 749.99, 'A Bicicleta Mountain Peak é projetada para aventuras off-road. Com suspensão dianteira, freios a disco e estrutura resistente, oferece desempenho e durabilidade excepcionais em trilhas desafiadoras.', 10), 
('Câmera de Segurança SmartGuard Pro', 279.00, 'Mantenha sua casa segura com a Câmera de Segurança SmartGuard Pro. Equipada com visão noturna, detecção de movimento e acesso remoto via aplicativo, você pode monitorar sua residência de qualquer lugar.', 35), 
('Notebook UltraSlim Core i7', 2899.00, 'Potência e elegância se unem no Notebook UltraSlim Core i7. Com processador de última geração, tela de alta resolução e design fino, é perfeito para produtividade e entretenimento em movimento.', 7), 
('Relógio de Parede Vintage RetroTime', 79.95, 'Adicione um toque de charme retrô à sua casa com o Relógio de Parede Vintage RetroTime. Com design clássico e ponteiros silenciosos, é uma peça decorativa e funcional para qualquer ambiente.', 65), 
('Kit de Ferramentas Profissional WorkPro', 315.00, 'Tenha todas as ferramentas que você precisa ao alcance das mãos com o Kit de Ferramentas Profissional WorkPro. Com qualidade premium e variedade de peças, é indispensável para qualquer projeto em casa ou no trabalho.', 15), 
('Batedeira Planetária MasterMix', 499.00, 'Prepare receitas deliciosas com facilidade usando a Batedeira Planetária MasterMix. Com múltiplas velocidades, design robusto e acessórios intercambiáveis, é ideal para criar bolos, pães e muito mais.', 8), 
('Teclado Gamer ThunderStrike', 199.95, 'Domine seus jogos com o Teclado Gamer ThunderStrike. Com teclas mecânicas, retroiluminação RGB personalizável e design ergonômico, oferece precisão e conforto durante suas maratonas de jogos.', 9), 
('Drone SkyMaster HD', 1289.00, 'Explore o mundo de cima com o Drone SkyMaster HD. Equipado com uma câmera de alta definição, estabilização de voo avançada e controles intuitivos, você pode capturar imagens incríveis de qualquer lugar.', 2); 

INSERT INTO Pedido (id_cliente, data_compra, valor_total, data_estimada_entrega)  
VALUES  
(1, '2024-02-24', 2925.20, '2024-03-02'), 
(2, '2024-03-16', 1289.00, '2024-03-25'); 

INSERT INTO ItemPedido (id_pedido, id_produto, quantidade, valor_unitario, valor_total)  
VALUES  
(1, 1, 3, 499.00, 1497.00), 
(1, 3, 2, 79.95, 159.90), 
(1, 5, 1, 629.50, 629.50), 
(1, 7, 4, 199.95, 799.80), 
(1, 9, 3, 279.00, 837.00), 
(2, 3, 1, 79.95, 79.95), 
(2, 4, 1, 749.99, 749.99), 
(2, 6, 1, 629.95, 629.95), 
(2, 9, 1, 279.00, 279.00), 
(2, 7, 1, 199.95, 199.95); 

UPDATE Cliente 
SET nome = 'Giorgia Romano', email = 'giorgia.romano@gmail.com' 
WHERE id_cliente = 1; 

UPDATE Produto 
SET quantidade_estoque = 82 
WHERE id_produto = 1; 

UPDATE Pedido 
SET data_estimada_entrega = '2024-04-22' 
WHERE id_pedido = 1; 

UPDATE ItemPedido 
SET quantidade = 3, valor_total = 239.85 
WHERE id_item = 1; 

DELETE FROM Cliente 
WHERE id_cliente = 10; 

DELETE FROM ItemPedido 
WHERE id_produto = 5; 

DELETE FROM Produto 
WHERE id_produto = 5;

SELECT * FROM Cliente;
SELECT * FROM Produto;
SELECT * FROM Pedido;
SELECT * FROM ItemPedido;
