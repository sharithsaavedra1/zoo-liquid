-- Author: sharith
-- Description: Tabla de cuidadores del zoologico

CREATE TABLE IF NOT EXISTS cuidadores (
    id               SERIAL        NOT NULL,
    nombre           VARCHAR(100)  NOT NULL,
    especialidad     VARCHAR(100),
    email            VARCHAR(150)  UNIQUE,
    telefono         VARCHAR(20),
    fecha_contratacion DATE         NOT NULL,
    activo           BOOLEAN       NOT NULL DEFAULT TRUE,
    created_at       TIMESTAMP     NOT NULL DEFAULT NOW(),
    updated_at       TIMESTAMP     NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_cuidadores PRIMARY KEY (id),
    CONSTRAINT uq_cuidadores_email UNIQUE (email)
);
GO
