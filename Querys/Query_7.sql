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