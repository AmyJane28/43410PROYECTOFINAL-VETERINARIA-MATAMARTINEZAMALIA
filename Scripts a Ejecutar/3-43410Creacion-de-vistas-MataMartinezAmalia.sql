use veterinariaentrega;

-- Mostar los datos de las mascotas a quiénes se les hizo servicio de Peluquería 
CREATE OR REPLACE VIEW VW_SERVICIO_PELUQUERIA AS 
(SELECT * FROM kardex
WHERE servicio LIKE '%Peluqueria%');

-- VISTA Mostrar Nombre, Apellido y Ciudad de los Clientes que viven en la Ciudad de Ramos Arizpe
CREATE OR REPLACE VIEW VW_CLIENTES_RAMOS AS
(SELECT nombre, apellidos,ciudad FROM clientes 
WHERE ciudad LIKE '%Ramos Arizpe%');

-- VISTA para la Tabla Mascotas
CREATE OR REPLACE VIEW VW_MASCOTAS AS
(SELECT * FROM MASCOTAS);

-- VISTA De la tabla Kardex en donde el servicio que se muestra es Vacunas
CREATE OR REPLACE VIEW VW_SERVICIO_VACUNAS AS
(SELECT  K.*
 FROM kardex AS K JOIN servicio AS S
 ON K.id_servicio = S.id_servicio
 WHERE S.SERVICIO like '%Vacunas%');
 
 -- VISTA Muestra el servicio que se realizó, a quién y por quién.
 CREATE OR REPLACE VIEW VW_PERSONAL_Y_SERVICIO_BRINDADO AS
 (SELECT PERSONAL.NOMBRE_EMPLEADO, PERSONAL.APELLIDOS_EMPLEADO, PERSONAL.CARGO, KARDEX.NOMBRE_MASCOTA, KARDEX.SERVICIO
 FROM KARDEX
 INNER JOIN PERSONAL
 ON PERSONAL.ID_PERSONAL = KARDEX.ID_PERSONAL
 ORDER BY 4);
 
 -- VISTA muestra la cantidad de veces que un servicio fue realizado
CREATE OR REPLACE VIEW VW_SERVICIO_MAS_SOLICITADO AS
 (SELECT SERVICIO, COUNT(*) AS CANTIDAD_SOLICITADO
 FROM KARDEX GROUP BY 1);
 
select * from VW_SERVICIO_MAS_SOLICITADO;
