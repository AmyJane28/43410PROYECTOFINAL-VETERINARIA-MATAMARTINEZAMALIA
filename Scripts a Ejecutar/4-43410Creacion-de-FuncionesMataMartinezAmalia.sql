use veterinariaentrega;

-- FUNCIONES

drop function if exists fn_calcular_subtotal;
-- Función para calcular Subtotal sin IVA
delimiter $$
create function fn_calcular_subtotal (p_cantidad int, 		
										p_id_cliente int)
returns decimal(6,2)
deterministic
begin

declare v_subtotal int;
set v_subtotal =
(select distinct precio_unitario_dlls * p_cantidad
as SUBTOTAL_DLLS from factura
where id_cliente = p_id_cliente);

return v_subtotal;
end$$
delimiter ; 

select fn_calcular_subtotal(2,4)
as v_subtotal;

drop function if exists fn_calcular_iva;
-- Función para calcular IVA
delimiter $$
create function fn_calcular_iva (p_iva decimal (4,2),
								p_id_cliente int)
returns decimal(6,2)
deterministic
begin

declare v_iva decimal(6,2);
set v_iva =
(select distinct fn_calcular_subtotal(2,4) * p_iva
as IVA from factura
where id_cliente = p_id_cliente);

return v_iva;
end$$
delimiter ; 

select fn_calcular_iva(.21,4)
as v_iva;

drop function if exists fn_calcular_total;
-- Función para calcular TOTAL CON IVA
delimiter $$
create function fn_calcular_total (p_id_cliente int)
returns decimal(6,2)
deterministic
begin

declare v_total decimal(6,2);
set v_total =
(select distinct fn_calcular_subtotal(2,4) + fn_calcular_iva(.21,4)
as TOTAL from factura
where id_cliente = p_id_cliente);

return v_total;
end$$
delimiter ; 

select fn_calcular_total(4)
as v_total;

-- Mostrar algunos campos de la tabla factura y los resultados de las funciones para el cliente con ID.4
select no_folio, fecha,detalle, precio_unitario_dlls,
fn_calcular_subtotal(2,4) as SUBTOTAL,
fn_calcular_iva(.21,4) as IVA,
fn_calcular_total(4) as TOTAL
from factura
where id_cliente = 4;

-- Sumar la columna de total_dll
SELECT SUM(TOTAL_DLLS) AS TOTAL_DLLS FROM FACTURA;


 

 


