

SELECT * FROM dbo.Regionales;
SELECT * FROM dbo.ArlFiles;
SELECT * FROM dbo.ArlRequests;
SELECT * FROM dbo.Users;



-- ## Queries ARL Request

DELETE FROM dbo.ArlRequests
WHERE IdSolicitudArl = 29 OR IdSolicitudArl = 30

INSERT INTO dbo.Users (Email, Nombre, Apellido, Rol)
VALUES 
('nidia_rueda@cun.edu.co', 'Nidia Lucero', 'Rueda Garcia', 'SUPERADMIN'),
('carol_ocampo@cun.edu.co', 'Carol', 'Ocampo', 'ADMIN'),
('jeimy_prieto@cun.edu.co', 'Camila', 'Prieto', 'ADMIN'),
('ofertaspracticas@cun.edu.co', 'Danna', 'Camelo', 'ADMIN'),
('practicas@cun.edu.co', 'Carol', 'Ocampo', 'ADMIN'),
('david_rodriguezv@cun.edu.co', 'David', 'Rodriguez', 'ADMIN'),
('danna_camelo@cun.edu.co', 'Danna Julieth', 'Camelo Rozo', 'ADMIN'),
('johan_chavarria@cun.edu.co', 'Alexis', 'Chavarria', 'SUPERADMIN'),
('johan_trianaa@cun.edu.co', 'Camilo', 'Triana', 'SUPERADMIN');



--DELETE FROM dbo.Users;
--DELETE FROM dbo.Regionales;
--DELETE FROM dbo.ArlRequests;



CREATE TABLE Regionales (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Municipio NVARCHAR(255)
);


INSERT INTO dbo.Regionales (Municipio)
SELECT column1
FROM dbo.RegionalesV0;


INSERT INTO [dbo].[ArlRequests] (
    [NumeroIdentificacion],
    [EmailEstudiante],
    [NombreEstudiante],
    [TipoIdentificacion],
    [CapaOcho],
    [CorreoInstitucional],
    [EmailPersonaACargoPractica],
    [EpsEstudiante],
    [FechaInicioPractica],
    [FechaNacimiento],
    [FechaTerminacionPractica],
    [JornadaEstablecida],
    [ModalidadPractica],
    [ModoPractica],
    [MotivoAprobacion],
    [NitEmprendimiento],
    [NitEmpresaPracticas],
    [NombreEmprendimiento],
    [NombreEmpresaPracticas],
    [NombrePersonaACargoPractica],
    [NumeroTelEstudiante],
    [PeriodoAcademico],
    [ProgramaAcademico],
    [Regional],
    [RiesgoEstudiante],
    [Seleccion],
    [TelefonoPersonasAcargoPractica],
    [TipoPractica],
    [EstadoSolicitud],
    [FechaSolicitud],
    [NombreAprobador],
    [ZonaResidencial],
    [Aprobo],
    [FechaRespuestaSolicitud]
) VALUES 
(
    '85271111',
    'ronal.gonzalez@cun.edu.co',
    'Ronal Alberto GonzalezCantillo',
    'CC-CEDULA DE CIUDADANIA',
    'True',
    NULL,
    'adriquirozg@gmail.com',
    '214-FONDO PRESTAC SOC MAGISTERIO',
    '2023-12-19T05:00:00.000Z',
    '1982-10-12T05:00:00.000Z',
    '2024-02-29T05:00:00.000Z',
    '1-UNICA',
    'Pasantía - entidades del 3 sector (Fundaciones, organizaciones sin fines de lucro, asociaciones,etc)',
    '4- PRESENCIAL',
    NULL,
    '1216970590-1',
    NULL,
    'Rastreo satelital el vigia',
    'Adriana lucia Quiroz Gonzalez',
    '3235777440',
    '23V06',
    'Contaduría Pública',
    'Regional Bogotá',
    NULL,
    NULL,
    '3205785483',
    'Práctica 3 - nivel profesional',
    'PENDIENTE',
    '13/12/2023 8:01:42 p. m.',
    NULL,
    '2-TURNO',
    NULL,
    NULL
);