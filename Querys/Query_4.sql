-- Pergunta 4 | Criando o Trigger e a tabela log
CREATE TABLE log_status_aluno (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    aluno_id INT,
    status_antigo VARCHAR(15),
    status_novo VARCHAR(15),
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (aluno_id) REFERENCES aluno(id) ON DELETE CASCADE ON UPDATE CASCADE
);

DELIMITER //

CREATE TRIGGER status_update
AFTER UPDATE ON aluno
FOR EACH ROW
BEGIN
    IF OLD.status_aluno <> NEW.status_aluno THEN
        INSERT INTO log_status_aluno (aluno_id, status_antigo, status_novo, data_hora)
        VALUES (OLD.id, OLD.status_aluno, NEW.status_aluno, NOW());
    END IF;
END //

DELIMITER ;