-- Author: sharith
-- Description: Datos iniciales - alimentacion

INSERT INTO alimentacion (animal_id, cuidador_id, fecha_hora, tipo_alimento, cantidad_kg, observaciones)
VALUES
    (1, 1, '2026-03-27 08:00:00', 'Carne de res magra', 8.500, 'Alimentación matutina completa'),
    (2, 1, '2026-03-27 08:15:00', 'Carne de res magra', 6.000, 'Consumió todo el alimento'),
    (6, 4, '2026-03-27 09:00:00', 'Insectos y frutas', 0.250, 'Suplemento vitamínico incluido'),
    (4, 2, '2026-03-27 10:00:00', 'Vegetales mixtos y bambú', 12.000, 'Sin novedades');
GO