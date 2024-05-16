-- 2 -  Selecionar quais pessoas facilitadoras atuam em mais de uma turma;

SELECT f.nome AS Facilitador, count(t.id) AS Quant_turmas
FROM facilitador f
JOIN registro_facilitador rf ON f.id = rf.facilitador_id
JOIN turma t ON rf.turma_id = t.id
GROUP BY f.nome 
HAVING COUNT(t.id) > 1;