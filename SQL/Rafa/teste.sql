--9  Crie a VW_MEDIA_AC com o nome do aluno, nome da disciplina, ano, semestre e turmas, a m�dia das entregas e o status(aprovado/reprovado).
--Considere como m�dia a m�dia simples das Acs, atividades n�o entregues ter�o nota=0 [Desafio:s� considerar as 7 melhores Acs], considere 
--como aprovado alunos com m�dia >=6.
USE LMS
SELECT* from solicitacaomatricula
Select * From DISCIPLINAOFERTADA
Select * From DISCIPLINA 
SELECT
--(nome da tabela(ou apelido).coluna)([apelido da coluna])
	ALUN.NOME[Tab/Aluno ( NOME )],
	DISCI.NOME[Tab/Disciplina ( NOME )],
	DISCI_OFER.ANO [Tab/Disciplina Ofertada (ANO)],DISCI_OFER.SEMESTRE [Tab/Disciplina Ofertada (SEMESTRE)],DISCI_OFER.TURMA [Tab/Disciplina Ofertada (TURMA )]
--	CURS.NOME [Tab/Curso ( - )]

--(nome da tabela)  (apelido da tabela)
FROM SOLICITACAOMATRICULA SOL
	JOIN ALUNO ALUN ON ALUN.ID = SOL.IDALUNO 
	JOIN DISCIPLINA DISCI ON SOL.IDCOORDENADOR  = DISCI.IDCOORDENADOR
	JOIN DISCIPLINAOFERTADA DISCI_OFER ON DISCI_OFER.IDCOORDENADOR= SOL.IDCOORDENADOR
