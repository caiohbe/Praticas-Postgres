-- Utilizando 1 query, obtenha a quantidade de graduações (educations) por usuário, incluindo o seu id.
SELECT
    "userId"
        AS
            id,
    COUNT("userId")
        AS 
            educations
    FROM 
        educations
    GROUP BY
        "userId"
    ORDER BY 
        id
;