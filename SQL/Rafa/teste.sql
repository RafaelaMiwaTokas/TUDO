--9  Crie a VW_MEDIA_AC com o nome do aluno, nome da disciplina, ano, semestre e turmas, a média das entregas e o status(aprovado/reprovado).
--Considere como média a média simples das Acs, atividades não entregues terão nota=0 [Desafio:só considerar as 7 melhores Acs], considere 
--como aprovado alunos com média >=6.
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
