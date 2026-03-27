-- Author: sharith
-- Description: Datos iniciales - especies

INSERT INTO especies (nombre_comun, nombre_cientifico, familia, estado_conservacion, dieta)
VALUES
    ('Leon',              'Panthera leo',            'Felidae',          'VU', 'Carnivoro'),
    ('Tigre de Bengala',  'Panthera tigris tigris',  'Felidae',          'EN', 'Carnivoro'),
    ('Jaguar',            'Panthera onca',            'Felidae',          'NT', 'Carnivoro'),
    ('Gorila Occidental', 'Gorilla gorilla',          'Hominidae',        'CR', 'Herbivoro'),
    ('Flamenco Rosado',   'Phoenicopterus roseus',   'Phoenicopteridae', 'LC', 'Omnivoro'),
    ('Caiman del Orinoco','Crocodylus intermedius',  'Crocodylidae',     'CR', 'Carnivoro'),
    ('Oso de Anteojos',   'Tremarctos ornatus',      'Ursidae',          'VU', 'Omnivoro');
GO
