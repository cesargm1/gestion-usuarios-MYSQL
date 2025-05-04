-- Creacion
CREATE USER 'dev_gaming'@'%' IDENTIFIED BY 'GamingDev2025!';
CREATE USER 'qa_gaming'@'%' IDENTIFIED BY 'QAGaming2025!';
CREATE USER 'marketing_gaming'@'%' IDENTIFIED BY 'MktGaming2025!';
CREATE USER 'admin_gaming'@'localhost' IDENTIFIED BY 'AdminGaming2025!';

-- Permisos

GRANT SELECT ,INSERT, UPDATE ON netflix_gaming.* TO 'dev_gaming'@'%';
GRANT SELECT ON netflix_gaming.* TO 'qa_gaming'@'%';
GRANT SELECT ON netflix_gaming.ventas TO 'marketing_gaming'@'%';
GRANT SELECT ON netflix_gaming.juegos TO 'marketing_gaming'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'admin_gaming'@'localhost' WITH GRANT OPTION;


-- Restriciones

-- El usuario dev_gaming no podrá realizar más de 1000 consultas ni más de 100 operaciones de inserción o actualización
--  en una hora.
-- El usuario qa_gaming tendrá un máximo de 500 consultas por hora, mientras que marketing_gaming estará limitado a 
-- 200 consultas por hora.
-- El usuario admin_gaming no tendrá ningún tipo de restricción de recursos.

ALTER USER 'dev_gaming'@'%' WITH MAX_QUERIES_PER_HOUR 1000 MAX_UPDATES_PER_HOUR 100;
ALTER USER 'qa_gaming '@'%' WITH MAX_QUERIES_PER_HOUR 500;
ALTER USER 'marketing_gaming'@'%' WITH MAX_QUERIES_PER_HOUR 200;

