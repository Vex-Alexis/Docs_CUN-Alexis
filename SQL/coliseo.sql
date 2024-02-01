

SELECT * FROM coliseo.dbo.RegionalesV0;
SELECT * FROM coliseo.dbo.Regionales;
SELECT * FROM coliseo.dbo.ArlFiles;
SELECT * FROM coliseo.dbo.ArlRequests;
SELECT * FROM coliseo.dbo.Users;


SELECT * FROM GRADOS.dbo.RegionalesV0;
SELECT * FROM GRADOS.dbo.Regionales;
SELECT * FROM GRADOS.dbo.ArlFiles;
SELECT * FROM GRADOS.dbo.ArlRequests;
SELECT * FROM GRADOS.dbo.Users;



INSERT INTO GRADOS.dbo.Users (Email, Nombre, Apellido, Rol)
VALUES ('AlExIs_ChAvArrIA@gmail.com', 'Johan', 'Chavarria', 'pro');

INSERT INTO GRADOS.dbo.Users (Email, Nombre, Apellido, Rol)
VALUES ('johan_chavarria@cun.edu.co', 'Alexis', 'Chavarria', 'Inactivo');

DELETE FROM GRADOS.dbo.Users
WHERE Nombre = 'Alexis';

UPDATE GRADOS.dbo.Users
SET Rol = 'INACTIVO'
WHERE IdUser = 14;



DELETE FROM GRADOS.dbo.ArlRequests
WHERE NombreEstudiante = 'Tatiana Benavidez';

DELETE FROM GRADOS.dbo.Users
WHERE Rol = 'pro';

DELETE FROM GRADOS.dbo.Users
WHERE Email IN (
'adrian@ejemplo.com', 
'fabrica_software@cun.edu.co', 
'arlex_beltran@cun.edu.co', 
'maria_vargas@cun.edu.co',
'Camilotriana231@gmail.com'
);