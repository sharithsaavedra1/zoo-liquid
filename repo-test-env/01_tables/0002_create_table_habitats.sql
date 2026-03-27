-- Author: sharith
-- Description: Tabla de habitats o recintos del zoologico

CREATE TABLE IF NOT EXISTS habitats (
    id               SERIAL         NOT NULL,
    nombre           VARCHAR(100)   NOT NULL,
    tipo_clima       VARCHAR(50)    NOT NULL,
    capacidad_maxima INT            NOT NULL,
    superficie_m2    NUMERIC(10,2),
    descripcion      TEXT,
    created_at       TIMESTAMP      NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_habitats PRIMARY KEY (id),
    CONSTRAINT uq_habitats_nombre UNIQUE (nombre),
    CONSTRAINT chk_habitats_capacidad CHECK (capacidad_maxima > 0)
);
GO
