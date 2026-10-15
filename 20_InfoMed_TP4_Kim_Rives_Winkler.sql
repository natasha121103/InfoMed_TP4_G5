SELECT Consultas.id_medico,
    Medicos.nombre,
    COUNT(*) FILTER (WHERE vista_paciente_edad.edad < 18) AS "Consultas Menores",
    (Especialidades.nombre = 'Pediatría') AS "Es Pediatra"
FROM Consultas
INNER JOIN Medicos ON Medicos.id_medico = Consultas.id_medico
INNER JOIN Especialidades ON Especialidades.id_especialidad = Medicos.especialidad_id
INNER JOIN vista_paciente_edad ON vista_paciente_edad.id_paciente = Consultas.id_paciente
GROUP BY Consultas.id_medico, Medicos.nombre, Especialidades.nombre
ORDER BY "Consultas Menores" DESC;