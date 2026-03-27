-- Author: sharith
-- Description: Datos iniciales - habitats

INSERT INTO habitats (nombre, tipo_clima, capacidad_maxima, superficie_m2, descripcion)
VALUES
    ('Sabana Africana',  'Calido',      20, 5000.00, 'Recinto calido y seco que replica la sabana del Africa subsahariana.'),
    ('Selva Tropical',   'Tropical',    30, 8000.00, 'Bosque humedo con alta biodiversidad y temperatura constante.'),
    ('Habitat Polar',    'Polar',       10, 3000.00, 'Recinto refrigerado que simula el Artico con piscina de agua fria.'),
    ('Desierto Andino',  'Arido',       15, 2500.00, 'Zona arida con suelo rocoso y cactaceas.'),
    ('Humedal Amazonico','Subtropical', 25, 6000.00, 'Laguna artificial con vegetacion acuatica y terrestre.');
GO
