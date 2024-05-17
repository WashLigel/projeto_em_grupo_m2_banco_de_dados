-- 6 - Existe diferença significativa no desempenho dos alunos em turmas presenciais e online?

SELECT t.modalidade AS Modalidade , 
SUM(a.status_aluno = 'matriculado' ) AS "Total alunos",
ROUND(AVG(h.nota), 2) AS "Media nota"
FROM aluno a
JOIN historico h ON a.id = h.aluno_id
JOIN turma t ON h.turma_id = t.id
WHERE a.status_aluno = 'matriculado'
GROUP BY t.modalidade;