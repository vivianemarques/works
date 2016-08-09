

INSERT INTO turno_estudo VALUES ('M','Manhã'),('T','Tarde'),('N','Noite');
INSERT INTO moradia VALUES ('R', 'Zona Rural'), ('U', 'Zona Urbana');
INSERT INTO etinia VALUES ('B','Branco'), ('P','Pardo'), ('N','Negro'), ('A','Amarelo'), ('I','Indígena'), ('O','Outro');
INSERT INTO classe_renda VALUES ('A','menos que meio salário mínimo (menos que R$440,00)'),('B','meio salário mínimo (R$440,00)'),('C','entre meio salário e um salário mínimo (entre R$440,00 e R$880,00)'),('D','um salário mínimo (R$880,00)'),('E','mais de um salário mínimo (mais de R$880,00)');

INSERT INTO pergunta VALUES (11,'Você pretende fazer faculdade?');
INSERT INTO escolha VALUES (0,'Sim. Qual curso?',11);
INSERT INTO escolha VALUES (0,'Não',11);

INSERT INTO pergunta VALUES (12,'Você já ouviu falar do curso de Ciências Agrárias da UFVJM - Universidade Federal dos Vales do Jequitinhonha e Mucuri em Unaí?');
INSERT INTO escolha VALUES (0,'Sim',12);
INSERT INTO escolha VALUES (0,'Não',12);

INSERT INTO pergunta VALUES (13,'Como tomou conhecimento do curso e/ou da UFVJM em Unaí?');
INSERT INTO escolha VALUES (0,'Amigos',13);
INSERT INTO escolha VALUES (0,'Familiares',13);
INSERT INTO escolha VALUES (0,'Estudantes da UFVJM',13);
INSERT INTO escolha VALUES (0,'Rádio/TV',13);
INSERT INTO escolha VALUES (0,'Escola/professores',13);
INSERT INTO escolha VALUES (0,'Internet, facebook, página da UFVJM',13);

INSERT INTO pergunta VALUES (14,'Na sua opinião, a UFVJM poderia levar mais informações sobre o curso de Ciências Agrárias?');
INSERT INTO escolha VALUES (0,'Sim. De que forma?',14);
INSERT INTO escolha VALUES (0,'Não',14);

INSERT INTO pergunta VALUES (15,'Você pretende cursar Ciências Agrárias na UFVJM?');
INSERT INTO escolha VALUES (0,'Sim. Por qual motivo?',15);
INSERT INTO escolha VALUES (0,'Não',15);

INSERT INTO pergunta VALUES (16,'Conhece as formas de ingressar na UFVJM?');
INSERT INTO escolha VALUES (0,'Sim',16);
INSERT INTO escolha VALUES (0,'Não',16);

INSERT INTO pergunta VALUES (17,'Você sabia que após cursar Ciências Agrárias, você pode se especializar em Agronomia, Engenharia Agrícola, Medicina Veterinária ou Zootecnia?');
INSERT INTO escolha VALUES (0,'Sim, tenho conhecimento',17);
INSERT INTO escolha VALUES (0,'Não sabia',17);

INSERT INTO pergunta VALUES (18,'O que achou dos cursos oferecidos pela UFVJM, campus de Unaí?');
INSERT INTO escolha VALUES (0,'Não gostei, pelo fato de não ter o curso que eu queria.',18);
INSERT INTO escolha VALUES (0,'Gostei, pois tenho interesse em um dos cursos.',18);

INSERT INTO pergunta VALUES (19,'Tem o interesse em cursar algum dos cursos da UFVJM em Unaí? Se a resposta for sim, assinale o curso desejado.');
INSERT INTO escolha VALUES (0,'Apenas Ciências Agrárias',19);
INSERT INTO escolha VALUES (0,'Agronomia',19);
INSERT INTO escolha VALUES (0,'Engenharia Agrícola',19);
INSERT INTO escolha VALUES (0,'Medicina Veterinária',19);
INSERT INTO escolha VALUES (0,'Zootecnia',19);

INSERT INTO pergunta VALUES (20,'Na região em que você mora, para os profissionais de Ciências Agrárias, Agronomia, Engenharia Agrícola, Medicina Veterinária e Zootecnia como são as ofertas de emprego?');
INSERT INTO escolha VALUES (0,'Há muitas ofertas de emprego ou trabalho para os profissionais dessas áreas.',20);
INSERT INTO escolha VALUES (0,'Há ofertas de emprego ou trabalho para os profissionais dessas áreas.',20);
INSERT INTO escolha VALUES (0,'Há poucas ofertas de emprego ou trabalho para os profissionais dessas áreas.',20);
INSERT INTO escolha VALUES (0,'Praticamente não há ofertas de emprego para os profissionais dessas áreas.',20);

