
DELIMITER &
CREATE TRIGGER veriff ON filme
FOR EACH ROW
BEGIN
DECLARE var_incasari INT
IF var_incasari>1000000
THEN

SELECT var_incasari INTO Incasari;

SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT='Incasari prea mici';

END
DELIMITER &
