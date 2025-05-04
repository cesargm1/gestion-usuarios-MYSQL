DELIMITER #
CREATE TRIGGER trg_cambio_juegos 
AFTER INSERT ON juegos
FOR EACH ROW
BEGIN
   INSERT INTO auditoria_cambios_juegos(usuario,juego_id,fecha_cambio) 
   VALUES (CURRENT_USER(),  NEW.juego_id, NOW());
END #
DELIMITER ;

-- DROP TRIGGER trg_cambio_juegos