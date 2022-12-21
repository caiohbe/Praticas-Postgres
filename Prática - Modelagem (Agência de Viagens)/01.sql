CREATE TABLE airports (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    abbreviation VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE flightCompanies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL,
    abbreviation VARCHAR(10) UNIQUE NOT NULL
);

CREATE TABLE flightCompanies (
    id SERIAL PRIMARY KEY,
    key TEXT NOT NULL,
    takeOffDate TIMESTAMP NOT NULL,
    landingDate TIMESTAMP NOT NULL,
    airportFromId INTEGER NOT NULL REFERENCES airports(id),
    airportToId INTEGER NOT NULL REFERENCES airports(id),
    companyId INTEGER NOT NULL REFERENCES flightCompanies(id)
);