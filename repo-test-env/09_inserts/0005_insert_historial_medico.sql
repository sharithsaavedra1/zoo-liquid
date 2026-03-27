-- Author: sharith
-- Description: Datos iniciales - historial_medico

INSERT INTO historial_medico (animal_id, veterinario_nombre, fecha_revision, tipo_revision, diagnostico, medicamento, dosis, proxima_revision, peso_registrado_kg)
VALUES
    (1, 'Dra. Elena Martínez', '2026-01-15 09:00:00', 'Preventiva', 'Chequeo anual de rutina, excelente estado.', NULL, NULL, '2027-01-15', 191.00),
    (3, 'Dr. Ricardo Gómez', '2026-02-10 14:30:00', 'Seguimiento', 'Recuperación de herida leve en pata delantera.', 'Antiséptico tópico', 'Una aplicación diaria', '2026-02-20', 221.50),
    (5, 'Dra. Elena Martínez', '2026-03-05 11:00:00', 'Vacunacion', 'Refuerzo de vacuna contra la rabia.', 'Vacuna Rabisin', '1 ml', '2027-03-05', 182.00);
GO