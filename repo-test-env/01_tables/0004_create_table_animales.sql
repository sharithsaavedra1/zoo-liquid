-- Author: sharith
-- Description: Tabla central de animales del zoologico

CREATE TABLE IF NOT EXISTS animales (
    id               SERIAL        NOT NULL,
    nombre           VARCHAR(100)  NOT NULL,
    especie_id       INT           NOT NULL,
    habitat_id       INT           NOT NULL,
    cuidador_id      INT           NOT NULL,
    fecha_nacimiento DATE,
    sexo             CHAR(1)       NOT NULL,
    peso_kg          NUMERIC(8,2),
    estado_salud     VARCHAR(20)   NOT NULL DEFAULT 'Estable',
    en_exhibicion    BOOLEAN       NOT NULL DEFAULT TRUE,
    created_at       TIMESTAMP     NOT NULL DEFAULT NOW(),
    updated_at       TIMESTAMP     NOT NULL DEFAULT NOW(),

    CONSTRAINT pk_animales       PRIMARY KEY (id),
    CONSTRAINT fk_animales_especie  FOREIGN KEY (especie_id)  REFERENCES especies(id),
    CONSTRAINT fk_animales_habitat  FOREIGN KEY (habitat_id)  REFERENCES habitats(id),
    CONSTRAINT fk_animales_cuidador FOREIGN KEY (cuidador_id) REFERENCES cuidadores(id),
    CONSTRAINT chk_animales_sexo    CHECK (sexo IN ('M','F','I')),
    CONSTRAINT chk_animales_peso    CHECK (peso_kg IS NULL OR peso_kg > 0),
    CONSTRAINT chk_animales_salud   CHECK (estado_salud IN ('Excelente','Estable','En tratamiento','Critico'))
);
GO
