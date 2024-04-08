/* SCRIPT CONSULTAR */

/* a) - Selecionar CPFs e nomes dos trabalhadores que ganham mais do que 2.500,00; */
select TRAB.cpf, TRAB.nomeTrab from Trabalhadores TRAB where salario > 2500;

/* b) - Selecionar nomes e salários dos trabalhadores da empresa ALFA, ordenados em ordem alfabética crescente; */
select TRAB.nomeTrab, TRAB.salario from Trabalhadores TRAB join Obras OB on (TRAB.codObra = OB.codObra) join Construtoras CONST on (OB.codConstrutora = CONST.codConstrutora) where CONST.codConstrutora = 10 order by TRAB.nomeTrab asc;

/* e) - Selecionar os equipamentos que nunca foram utilizados em nenhuma obra. */
select EQUIP.nomeEquip from Equipamentos EQUIP where NOT EXISTS (select * from Obras_Equip OE where OE.codEquipamento = EQUIP.codEquipamento);

/* f) - Listar as categorias de equipamentos utilizadas nas obras da construtora ALFA. */
select DISTINCT CATEG.descricao, EQUIP.codCategoria from Categorias CATEG join Equipamentos EQUIP on (CATEG.codCategoria = EQUIP.codCategoria)  join Obras_Equip OE on (EQUIP.codEquipamento = OE.codEquipamento) join Obras OB on (OE.codObra = OB.codObra) join Construtoras CONST on (OB.codConstrutora = CONST.codConstrutora) where CONST.nomeConstru = 'Construtora Alfa S.A.';