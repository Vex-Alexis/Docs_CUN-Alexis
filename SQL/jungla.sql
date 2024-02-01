
CREATE TABLE coliseo.dbo.Regionales (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Municipio NVARCHAR(255)
);

--DROP DATABASE jungla;
DROP DATABASE pete;
CREATE DATABASE GradosApp;
CREATE DATABASE GRADOS_APP;
CREATE DATABASE pete;



USE coliseo;
SELECT * FROM coliseo.dbo.RegionalesV0;
SELECT * FROM coliseo.dbo.Regionales;
SELECT * FROM coliseo.dbo.ArlFiles;
SELECT * FROM coliseo.dbo.ArlRequests;
SELECT * FROM coliseo.dbo.Users;


SELECT * FROM jungla.dbo.ArlFiles;
SELECT * FROM jungla.dbo.ArlRequests;
SELECT * FROM jungla.dbo.Users;
SELECT * FROM jungla.dbo.Regionales;

INSERT INTO coliseo.dbo.Regionales (Municipio)
SELECT Municipio
FROM coliseo.dbo.RegionalesV0;


--Subir CSV modificar propiedades (Varchar255)
--Crear tabla y enviar consulta para poner el ID

INSERT INTO coliseo.dbo.Users (Email, Nombre, Apellido, Rol)
VALUES ('johan_chavarria@cun.edu.co', 'Alexis', 'Chavarria', 'Admin'),
	('maria_vargas@cun.edu.co', 'Maria', 'Vargas', 'Inactivo'),
       ('adrian@ejemplo.com', 'Adrian', 'Perez', 'User');


INSERT INTO coliseo.dbo.Users (Email, Nombre, Apellido, Rol)
VALUES ('johan_trianaa@cun.edu.co', 'Camilo', 'Triana', 'Admin');


INSERT INTO coliseo.dbo.ArlArlRequests(Municipio)
SELECT Municipio
FROM coliseo.dbo.ArlArlRequestsv;


SELECT * FROM coliseo.dbo.ArlRequests
WHERE NumeroIdentificacion = '100123400'
