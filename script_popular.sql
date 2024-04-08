/* SCRIPT POPULAR TABELAS */

/* ENUNCIADO 2) */
insert into Construtoras values(77, 'Nicholas Francatti', 'Francatti Construtora');
insert into telefones values ('(13) 997759-729', 77);

/* CONSTRUTORAS */

insert into Construtoras values(10, 'Construtora Alfa S.A.', 'Alfa Incorporações');

/* OBRAS */

insert into Obras values (115, 'Condomínio dos Lagos', 'Travessa dos Lagos', 100, 'Norte', 10);
insert into Obras values (116, 'Condomínio Araras', 'Avenida Rio Grande', 22, 'Lado A', 10);


/* TRABALHADORES */

insert into Trabalhadores values ('101.101.101-34', 'José Chaves', 2200.00, 115);
insert into Trabalhadores values ('102.102.102-91', 'Pedro Passos', 3502.18, 115);
insert into Trabalhadores values ('103.103.103-18', 'Maria Aparecida', 800.87, 115);
insert into Trabalhadores values ('104.104.104-52', 'Carlos Dutra', 3100.00, 116);
insert into Trabalhadores values ('105.105.105-85', 'Mário Pires', 4323.29, 116);
insert into Trabalhadores values ('106.106.106-21', 'Roberto Miranda', 2500.00, 115);
insert into Trabalhadores values ('107.107.107-19', 'João Santana', 3400.00, 115);
insert into Trabalhadores values ('108.108.108-01', 'Giulia Platania', 4500.00, 116);
insert into Trabalhadores values ('109.109.109-22', 'Isabela Sole', 850.00, 116);
insert into Trabalhadores values ('110.110.110-12', 'Matheus Garcia', 2100.00, 116);


/* CATEGORIAS */

insert into Categorias values (1, 'Concretagem');
insert into Categorias values (2, 'Acesso e Elevação');
insert into Categorias values (3, 'Geradores e Compressores');
insert into Categorias values (4, 'Andaimes');
insert into Categorias values (5, 'Ferramenta Elétrica');


/* EQUIPAMENTOS */

insert into Equipamentos values (301, 'Betoneira', 100.00, 1);
insert into Equipamentos values (302, 'Cortadora de Piso', 10.00, 1);
insert into Equipamentos values (303, 'Mangote', 30.50, 1);
insert into Equipamentos values (304, 'Guincho', 250.00, 2);
insert into Equipamentos values (305, 'Gerador', 350.00, 3);
insert into Equipamentos values (306, 'Piso Metálico', 150.00, 4);
insert into Equipamentos values (307, 'Furadeira de bancada', 65.00, 5);
insert into Equipamentos values (308, 'Parafusadeira', 37.00, 5);
insert into Equipamentos values (309, 'Plaina', 25.00, 5);


/* ALTERAR FORMATO DATA PARA DD/MM/YYYY */

ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY';

/* OBRAS_EQUIP */

insert into Obras_Equip values (115, 301, '18/03/2022', '24/10/2022');
insert into Obras_Equip values (115, 304, '20/04/2022', '02/08/2022');
insert into Obras_Equip values (115, 306, '06/07/2021', '18/07/2021');
insert into Obras_Equip values (115, 307, '04/03/2022', '20/03/2022');
insert into Obras_Equip values (115, 309, '04/08/2021', '10/08/2021');
insert into Obras_Equip values (116, 304, '23/10/2022', '25/10/2022');
insert into Obras_Equip values (116, 305, '07/03/2022', '10/03/2022');
insert into Obras_Equip values (116, 306, '12/09/2022', '21/09/2022');
insert into Obras_Equip values (116, 307, '16/08/2022', '24/08/2022');
insert into Obras_Equip values (116, 308, '23/10/2022', '25/10/2022');


/* TELEFONES */

insert into telefones values ('(51) 3333-3334', 10);
insert into telefones values ('(51) 3333-3335', 10);
insert into telefones values ('(51) 3333-3336', 10);