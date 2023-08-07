use veterinariaentrega;

-- USERS
-- Creación de usuarios
create user if not exists user@host identified by 'mypasword'; 
create user if not exists 'amata@localhost' identified by '12345';
create user if not exists 'ahernandez@localhost' identified by '123ah';

-- Muestra permisos para los usuarios creados
show grants for 'amata@localhost';
show grants for 'ahernandez@localhost';

-- Usuario creado 'amata@localhost' con permisos de sólo lectura sobre todas las tablas.
grant select on VeterinariaEntrega.clientes to 'amata@localhost';
grant select on VeterinariaEntrega.factura to 'amata@localhost';
grant select on VeterinariaEntrega.kardex to 'amata@localhost';
grant select on VeterinariaEntrega.mascotas to 'amata@localhost';
grant select on VeterinariaEntrega.personal to 'amata@localhost';
grant select on VeterinariaEntrega.servicio to 'amata@localhost';


-- Usuario creado con permisos de Lectura, Inserción y Modificación de datos sobre todas las tablas.
grant select, insert, update on VeterinariaEntrega.clientes to 'ahernandez@localhost';
grant select, insert, update on VeterinariaEntrega.factura to 'ahernandez@localhost';
grant select, insert, update on VeterinariaEntrega.kardex to 'ahernandez@localhost';
grant select, insert, update on VeterinariaEntrega.mascotas to 'ahernandez@localhost';
grant select, insert, update on VeterinariaEntrega.personal to 'ahernandez@localhost';
grant select, insert, update on VeterinariaEntrega.servicio to 'ahernandez@localhost';

flush privileges;






 



 


 


