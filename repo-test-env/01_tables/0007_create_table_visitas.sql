-- Author: sharith
-- Description: Registro de visitas diarias al zoologico

CREATE TABLE IF NOT EXISTS visitas (
    id                  SERIAL        NOT NULL,
    fecha               DATE          NOT NULL,
    total_visitantes    INT           NOT NULL,
    visitantes_adultos  INT           DEFAULT 0,
    visitantes_menores  INT           DEFAULT 0,
    ingresos_cop        NUMERIC(15,2),
    created_at          TIMESTAMP     NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_visitas        PRIMARY KEY (id),
    CONSTRAINT uq_visitas_fecha  UNIQUE (fecha),
    CONSTRAINT chk_visitas_total CHECK (total_visitantes >= 0)
);
GO
