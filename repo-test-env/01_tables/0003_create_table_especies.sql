-- Author: sharith
-- Description: Catalogo de especies animales del zoologico

CREATE TABLE IF NOT EXISTS especies (
    id                  SERIAL       NOT NULL,
    nombre_comun        VARCHAR(100) NOT NULL,
    nombre_cientifico   VARCHAR(150) NOT NULL,
    familia             VARCHAR(100),
    estado_conservacion VARCHAR(50)  NOT NULL,
    dieta               VARCHAR(30)  NOT NULL,
    created_at          TIMESTAMP    NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_especies PRIMARY KEY (id),
    CONSTRAINT uq_especies_cientifico UNIQUE (nombre_cientifico),
    CONSTRAINT chk_especies_estado CHECK (estado_conservacion IN ('LC','NT','VU','EN','CR','EW','EX')),
    CONSTRAINT chk_especies_dieta  CHECK (dieta IN ('Herbivoro','Carnivoro','Omnivoro'))
);
GO
