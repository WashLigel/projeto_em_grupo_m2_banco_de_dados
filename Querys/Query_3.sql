-- Pergunta 3 | Criando a view
CREATE VIEW porcentagem_evasao AS
SELECT 
    t.id AS turma_id,
    ROUND((COUNT(CASE WHEN a.status_aluno = 'desistente' THEN 1 END) / COUNT(*) * 100), 0) AS porcentagem_evasao
FROM 
    turma t
JOIN 
    historico h ON t.id = h.turma_id
JOIN 
    aluno a ON h.aluno_id = a.id
WHERE 
    t.status_turma = 'ativa'
GROUP BY 
    t.id;