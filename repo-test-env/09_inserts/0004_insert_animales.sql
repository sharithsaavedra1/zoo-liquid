-- Author: sharith
-- Description: Datos iniciales - animales

INSERT INTO animales (nombre, especie_id, habitat_id, cuidador_id, fecha_nacimiento, sexo, peso_kg, estado_salud, en_exhibicion)
VALUES
    ('Simba',                    1, 1, 1, '2018-05-12', 'M', 190.50, 'Excelente',      TRUE),
    ('Nala',                     1, 1, 1, '2019-08-03', 'F', 130.00, 'Estable',        TRUE),
    ('Arjun',                    2, 2, 1, '2016-02-20', 'M', 220.80, 'Estable',        TRUE),
    ('Tupa',                     3, 2, 1, '2020-11-15', 'F',  75.30, 'Excelente',      TRUE),
    ('Kongo',                    4, 2, 2, '2012-06-08', 'M', 180.00, 'Estable',        TRUE),
    ('Rosa',                     5, 5, 4, '2021-03-01', 'F',   3.20, 'Excelente',      TRUE),
    ('Cocodrilo del Orinoco #1', 6, 5, 3, '2008-01-01', 'M',  95.00, 'Estable',        FALSE),
    ('Ukuku',                    7, 4, 5, '2017-09-30', 'M', 140.00, 'En tratamiento', FALSE);
GO
