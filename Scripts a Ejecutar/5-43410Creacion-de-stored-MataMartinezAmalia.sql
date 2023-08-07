use veterinariaentrega;

-- LISTAR CLIENTES POR CIUDAD
DELIMITER $$
DROP procedure if exists SP_CLIENTES_POR_CIUDAD;
CREATE PROCEDURE SP_CLIENTES_POR_CIUDAD(IN NOMBRE_CIUDAD VARCHAR (50))
BEGIN
SELECT * 
FROM CLIENTES
WHERE CIUDAD = NOMBRE_CIUDAD;
END$$
DELIMITER ; 

CALL SP_CLIENTES_POR_CIUDAD('SALTILLO');

-- CUANTOS CLIENTES POR CIUDAD SON
DELIMITER $$
DROP procedure if exists SP_CUANTOS_CLIENTES_POR_CIUDAD;
CREATE PROCEDURE SP_CUANTOS_CLIENTES_POR_CIUDAD(IN NOM_CIUDAD VARCHAR (50), OUT NUMERO INT)
BEGIN
SELECT COUNT(CIUDAD)
INTO NUMERO
FROM CLIENTES
WHERE CIUDAD = NOM_CIUDAD 
END$$
DELIMITER ; 

CALL SP_CUANTOS_CLIENTES_POR_CIUDAD('SALTILLO', @NUMERO);
select @NUMERO AS TOTAL_CLIENTES;

-- CREAR REGISTROS EN TABLA PERSONAL
DELIMITER $$
CREATE PROCEDURE SP_CREAR_PERSONAL (IN ID_PERSONAL int,
									IN NOMBRE_EMPLEADO varchar(50),
									IN APELLIDOS_EMPLEADO varchar(50),
									IN DIRECCION varchar(250),
									IN CIUDAD varchar(15),
									IN ESTADO varchar(15),
									IN CP int,
									IN E_MAIL varchar(50),
									IN TELEFONO varchar(15),
									IN CARGO varchar(50))
BEGIN
INSERT INTO
PERSONAL(ID_PERSONAL, NOMBRE_EMPLEADO, APELLIDOS_EMPLEADO, DIRECCION, CIUDAD, ESTADO, CP, E_MAIL, TELEFONO, CARGO)
VALUES
(ID_PERSONAL, NOMBRE_EMPLEADO, APELLIDOS_EMPLEADO, DIRECCION, CIUDAD, ESTADO, CP, E_MAIL, TELEFONO, CARGO);
END$$
DELIMITER ;

CALL SP_CREAR_PERSONAL(10, 'ULISES', 'MALDONADO SIFUENTES', 'CALLE SUR 780' , 'SALTILLO', 'COAHUILA', 45780, 'ULISIFUENTES@HOTMAIL.COM', 8447502369, 'VETERINARIO');

SELECT * FROM PERSONAL;

-- ORDENAR LOS REGISTROS DE UNA TABLA EN BASE A UNA COLUMNA Y SE PASE POR PARAMETRO SI ES ASCENDENTE O DESCENDENTE
DELIMITER $$
DROP PROCEDURE IF EXISTS SP_ORDENAR;
CREATE PROCEDURE SP_ORDENAR (INOUT PARAM_TABLA VARCHAR(50), INOUT PARAM_COLUMNA VARCHAR(50), INOUT PARAM_ORDEN VARCHAR(32))
BEGIN
SET @T1 = CONCAT('SELECT * FROM', PARAM_TABLA, 'U ORDER BY',' ',PARAM_COLUMNA,' ', PARAM_ORDEN);
PREPARE PARAM_STMT FROM @T1
EXECUTE PARAM_STMT;
DEALLOCATE PREPARE PARAM_STMT;
END $$
DELIMITER ;
SET @PARAM_TABLA = 'PERSONAL';
SET @PARAM_COLUMNA = 'NOMBRE_EMPLEADO';
SET @PARAM_ORDEN = 'DES';

CALL SP_ORDENAR (@PARAM_TABLA, @PARAM_ORDER, @PARAM_ASC_DES);




 



 


 

