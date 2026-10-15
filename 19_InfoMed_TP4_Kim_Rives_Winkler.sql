SELECT Consultas.id_medico,
    Medicos.nombre,
    COUNT(DISTINCT (Consultas.id_paciente)) AS "Total Pacientes"
FROM Consultas
INNER JOIN Medicos ON Medicos.id_medico = Consultas.id_medico
GROUP BY Consultas.id_medico, Medicos.nombre
ORDER BY "Total Pacientes" DESC