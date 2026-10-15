SELECT id_paciente, nombre, numero, calle, ciudad 
FROM Pacientes
WHERE TRIM(ciudad) ILIKE 'b%s';

-- ILIKE no le importa mayuscula o muniscula
-- TRIM saca los espacios de los extremos