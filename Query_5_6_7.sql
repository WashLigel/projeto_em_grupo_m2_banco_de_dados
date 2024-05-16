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


-- 6 - Existe diferença significativa no desempenho dos alunos em turmas presenciais e online?

SELECT t.modalidade AS Modalidade , 
SUM(a.status_aluno = 'matriculado' ) AS "Total alunos",
ROUND(AVG(h.nota), 2) AS "Media nota"
FROM aluno a
JOIN historico h ON a.id = h.aluno_id
JOIN turma t ON h.turma_id = t.id
WHERE a.status_aluno = 'matriculado'
GROUP BY t.modalidade;


-- 7 - Quais são os cursos mais populares entre os alunos de 17 e 25 anos?

SELECT c.nome AS Curso, COUNT(*) AS "Quant. alunos de 17 a 25 anos", 
MIN(TIMESTAMPDIFF(YEAR, a.nascimento, CURDATE())) AS "Min. idade aluno"
FROM aluno a
JOIN  historico h ON a.id = h.aluno_id
JOIN turma t ON h.turma_id = t.id
JOIN curso c ON t.curso_id = c.id
WHERE TIMESTAMPDIFF(YEAR, a.nascimento, CURDATE()) BETWEEN 16 AND 25
GROUP BY curso
ORDER BY COUNT(*) DESC;
