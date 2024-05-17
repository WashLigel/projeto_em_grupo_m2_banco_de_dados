-- 5 -  Quais são os 3 cursos que possuem o maior numero de alunos desistentes?

SELECT c.nome AS Curso, COUNT(*) AS Alunos_desistentes
FROM aluno a
JOIN historico h ON a.id = h.aluno_id
JOIN turma t ON h.turma_id = t.id
JOIN curso c ON t.curso_id = c.id
WHERE a.status_aluno = 'desistente'
GROUP BY c.nome
ORDER BY Alunos_desistentes DESC
LIMIT 3;