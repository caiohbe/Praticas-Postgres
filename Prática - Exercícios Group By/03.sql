-- Utilizando 1 query, obtenha a quantidade de depoimentos (testimonials) que o usuário com id 435 efetuou, incluindo o seu nome.
SELECT
    MAX(users.name)
        AS
            writer,
    COUNT("writerId")
        AS 
            "testimonialCount"
    FROM 
        testimonials
    JOIN 
        users
    ON
        users.id="writerId"
    WHERE 
        "writerId"=435
    GROUP BY
        "writerId"
;