-- Utilizando 1 query, obtenha o maior salário das vagas (jobs) ativas (active sendo true) e o nome das posições (roles) dessas vagas ordenadas de forma ascendente
SELECT
    MAX(salary)
        AS 
            "maximumSalary",
    MAX(roles.name)
        AS
            role
    FROM 
        jobs
    JOIN 
        roles
    ON
        roles.id="roleId"
    WHERE 
        jobs.active=true
    GROUP BY
        "roleId"
    ORDER BY 
        "maximumSalary"
;