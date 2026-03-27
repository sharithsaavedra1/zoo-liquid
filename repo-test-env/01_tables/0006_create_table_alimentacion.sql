-- Author: sharith
-- Description: Registro diario de alimentacion de los animales

CREATE TABLE IF NOT EXISTS alimentacion (
    id           SERIAL        NOT NULL,
    animal_id    INT           NOT NULL,
    cuidador_id  INT           NOT NULL,
    fecha_hora   TIMESTAMP     NOT NULL DEFAULT NOW(),
    tipo_alimento VARCHAR(150) NOT NULL,
    cantidad_kg  NUMERIC(8,3)  NOT NULL,
    observaciones TEXT,
    created_at   TIMESTAMP     NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_alimentacion        PRIMARY KEY (id),
    CONSTRAINT fk_alimentacion_animal   FOREIGN KEY (animal_id)   REFERENCES animales(id),
    CONSTRAINT fk_alimentacion_cuidador FOREIGN KEY (cuidador_id) REFERENCES cuidadores(id),
    CONSTRAINT chk_alimentacion_cantidad CHECK (cantidad_kg > 0)
);
GO
