SELECT 
    Medicos.id_medico,
    Medicos.nombre,
    COUNT(Recetas.id_receta)
FROM Recetas
INNER JOIN Medicos ON Medicos.id_medico = Recetas.id_medico
GROUP BY Medicos.id_medico
ORDER BY Medicos.id_medico ASC;
