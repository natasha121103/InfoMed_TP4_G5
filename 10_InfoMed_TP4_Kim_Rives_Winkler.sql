SELECT Pacientes.id_paciente, -- Para asegurar que sean el mismo paciente y no dos con diferente nombre
    Pacientes.nombre,
    Consultas.fecha,
    Consultas.diagnostico
FROM Consultas
INNER JOIN Pacientes ON Pacientes.id_paciente = Consultas.id_paciente
WHERE EXTRACT(YEAR FROM (Consultas.fecha)) = 2024 AND EXTRACT(MONTH FROM (Consultas.fecha)) = 8
ORDER BY id_paciente ASC;