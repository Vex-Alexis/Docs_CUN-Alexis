SELECT * FROM GRADOS.dbo.RegionalesV1;
SELECT * FROM GRADOS.dbo.Regionales;
SELECT * FROM GRADOS.dbo.ArlFiles;
SELECT * FROM GRADOS.dbo.ArlRequests;
SELECT * FROM GRADOS.dbo.Users;

USE GRADOS;


-- ## QUERIES - ArlRequest

SELECT * FROM ArlRequests
WHERE EstadoSolicitud = 'PENDIENTE';

DELETE FROM GRADOS.dbo.ArlRequests
WHERE EmailEstudiante = 'johan_chavarria@cun.edu.co';

--DELETE FROM GRADOS.dbo.ArlRequests


-- ## QUERIES - Users

INSERT INTO GRADOS.dbo.Users (Email, Nombre, Apellido, Rol)
VALUES ('johan_chavarria@cun.edu.co', 'Alexis', 'Chavarria', 'Admin'),
       ('adrian@ejemplo.com', 'Adrian', 'Perez', 'User'),
	   ('maria_vargas@cun.edu.co', 'Maria', 'Vargas', 'Inactivo');


UPDATE GRADOS.dbo.Users
SET Rol = 'SUPERADMIN'
WHERE IdUser = 14;

UPDATE GRADOS.dbo.Users
SET Email = 'jeimy_prieto@cun.edu.co'
WHERE IdUser = 18;

DELETE FROM GRADOS.dbo.Users
WHERE Email IN (
'adrian@ejemplo.com', 
'fabrica_software@cun.edu.co', 
'arlex_beltran@cun.edu.co', 
'maria_vargas@cun.edu.co',
'Camilotriana231@gmail.com'
);


-- ## Otras Consultas

CREATE TABLE Regionales (
    IdRegional INT PRIMARY KEY IDENTITY(1,1),
    Municipio NVARCHAR(255)
);

INSERT INTO GRADOS.dbo.Regionales (Municipio)
SELECT Municipio
FROM GRADOS.dbo.RegionalesV1;

select * from ArlRequests
SET EstadoSolicitud = 'PENDIENTE'


--###########




