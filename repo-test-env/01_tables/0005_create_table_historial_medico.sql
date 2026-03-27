-- Author: sharith
-- Description: Historial de revisiones veterinarias por animal

CREATE TABLE IF NOT EXISTS historial_medico (
    id                  SERIAL       NOT NULL,
    animal_id           INT          NOT NULL,
    veterinario_nombre  VARCHAR(150) NOT NULL,
    fecha_revision      TIMESTAMP    NOT NULL DEFAULT NOW(),
    tipo_revision       VARCHAR(50)  NOT NULL,
    diagnostico         TEXT,
    medicamento         VARCHAR(200),
    dosis               VARCHAR(100),
    proxima_revision    DATE,
    peso_registrado_kg  NUMERIC(8,2),
    created_at          TIMESTAMP    NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_historial_medico   PRIMARY KEY (id),
    CONSTRAINT fk_historial_animal   FOREIGN KEY (animal_id) REFERENCES animales(id),
    CONSTRAINT chk_historial_tipo    CHECK (tipo_revision IN ('Preventiva','Urgencia','Vacunacion','Cirugia','Seguimiento')),
    CONSTRAINT chk_historial_peso    CHECK (peso_registrado_kg IS NULL OR peso_registrado_kg > 0)
);
GO
