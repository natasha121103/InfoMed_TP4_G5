SELECT ciudad,
    COUNT(*) FILTER (WHERE id_sexo = 1) AS "Masculino",
    COUNT(*) FILTER (WHERE id_sexo = 2) AS "Femenino"
FROM Pacientes
GROUP BY ciudad;