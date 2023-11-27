CREATE DATABASE LOGIN
GO 

USE LOGIN
GO

DROP DATABASE LOGIN


CREATE TABLE Usuarios(
    ID_usuario     INT          IDENTITY(1,1)   PRIMARY KEY     NOT NULL,
    Usuario        VARCHAR(259)                                 NOT NULL,
    Clave          VARCHAR(250)                                 NOT NULL,
    Nombre         VARCHAR(250)                                 NOT NULL
) 
GO

CREATE TABLE Perfil(
    ID_perfil      INT          IDENTITY(1,1)   PRIMARY KEY                                     NOT NULL,
    NOM_perfil     VARCHAR(250)                                                                 NOT NULL,
    ID_permisos    INT          FOREIGN KEY (ID_permisos)  REFERENCES  Permisos (ID_permisos)   NOT NULL,
    ID_rol         INT          FOREIGN KEY (ID_rol)       REFERENCES  Rol  (ID_rol)            NOT NULL,
    ID_usuario     INT          FOREIGN KEY (ID_usuario)   REFERENCES  Usuarios (ID_usuario)    NOT NULL

)
 GO


CREATE TABLE permisos(
    ID_permisos         INT             IDENTITY(1,1)    PRIMARY KEY     NOT NULL,
    Permisos            VARCHAR(250)                                     NOT NULL,
) 
GO


CREATE TABLE Rol(
    ID_Rol             INT               IDENTITY(1,1)    PRIMARY KEY     NOT NULL,
    Rol                VARCHAR(250)                                       NOT NULL
) 
GO
