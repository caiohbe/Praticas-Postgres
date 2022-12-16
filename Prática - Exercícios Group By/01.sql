-- Utilizando 1 query, obtenha a quantidade de experiencias (experiences) atuais, ou seja, com “endDate” diferente de NULL.
SELECT 
    COUNT("endDate")
AS
    "currentExperiences"
FROM
    experiences
;