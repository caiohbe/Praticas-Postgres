-- Utilizando uma query, obtenha as empresas (companies) para as quais o usuário com id 50 trabalha atualmente. Para filtrar quem trabalha atualmente, utilize o campo endDate da tabela experiences. Se ele estiver null (IS NULL), significa que a pessoa ainda não encerrou a experiência dela na empresa, ou seja, está trabalhando lá.
SELECT users.id, users.name, roles.name AS role, companies.name AS company, experiences."startDate" FROM experiences JOIN users ON users.id="userId" JOIN roles ON roles.id="roleId" JOIN companies ON companies.id="companyId" WHERE users.id=50 AND experiences."endDate" IS NULL;