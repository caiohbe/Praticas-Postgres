CREATE TABLE classes (
    id SERIAL PRIMARY KEY,
    key TEXT UNIQUE NOT NULL
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    cpf VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    "currentClassId" INTEGER NOT NULL REFERENCES classes(id)
);

CREATE TABLE classesHistoric (
    id SERIAL PRIMARY KEY,
    "registerDate" TIMESTAMP NOT NULL DEFAULT NOW(),
    "quitDate" TIMESTAMP,
    "classId" INTEGER NOT NULL REFERENCES classes(id),
    "studentId" INTEGER NOT NULL REFERENCES students(id)
);

CREATE TABLE modules (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    "moduleId" INTEGER NOT NULL REFERENCES modules(id)
);

CREATE TABLE projectsByStudents (
    id SERIAL PRIMARY KEY,
    "projectDeliveryDate" TIMESTAMP DEFAULT NOW(),
    score TEXT NOT NULL,
    "studentId" INTEGER NOT NULL REFERENCES students(id),
    "projectId" INTEGER NOT NULL REFERENCES projectId(id)
);