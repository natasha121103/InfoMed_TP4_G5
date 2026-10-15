WITH Total_Rec AS (
    SELECT id_medicamento,
        COUNT(*) AS "Total Recetas"
    FROM Recetas
    GROUP BY id_medicamento
)

SELECT Medicamentos.id_medicamento,
    Medicamentos.nombre AS "Nombre Medicamento",
    Total_Rec."Total Recetas",
    Medicos.id_medico,
    Medicos.nombre AS "Nombre Medico",
    Pacientes.id_paciente,
    Pacientes.nombre AS "Nombre Paciente"
FROM Recetas
INNER JOIN Total_Rec ON Total_Rec.id_medicamento = Recetas.id_medicamento
INNER JOIN Medicamentos ON Medicamentos.id_medicamento = Recetas.id_medicamento
INNER JOIN Medicos ON Medicos.id_medico = Recetas.id_medico
INNER JOIN Pacientes ON Pacientes.id_paciente = Recetas.id_paciente
ORDER BY "Total Recetas" DESC;