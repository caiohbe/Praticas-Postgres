CREATE TABLE states (
    id SERIAL PRIMARY KEY, 
    name TEXT NOT NULL,
);

CREATE TABLE cities (
    id SERIAL PRIMARY KEY, 
    name TEXT NOT NULL,
    "stateId" INTEGER NOT NULL REFERENCES "states"("id")
);

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    "fullName" VARCHAR(50) NOT NULL,
    cpf TEXT UNIQUE NOT NULL,
    email TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE customerPhones (
    id SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    number TEXT UNIQUE NOT NULL,
    type TEXT NOT NULL
);

CREATE TABLE customerAddresses (
    id SERIAL PRIMARY KEY,
    "customerId" INTEGER UNIQUE NOT NULL REFERENCES "customers"("id"),
    street VARCHAR(50) NOT NULL,
    number INTEGER NOT NULL,
    complement VARCHAR(50) NOT NULL,
    "postalCode" TEXT NOT NULL,
    "cityId": INTEGER NOT NULL REFERENCES "cities"("id")
);

CREATE TABLE bankAccount (
    id SERIAL PRIMARY KEY,
    "customerId" INTEGER NOT NULL REFERENCES "customers"("id"),
    "accountNumber" INTEGER UNIQUE NOT NULL,
    agency TEXT NOT NULL,
    "openDate" TIMESTAMP WITHOUT TIMEZONE NOT NULL DEFAULT NOW(),
    "closeDate" TIMESTAMP WITHOUT TIMEZONE DEFAULT NULL
);

CREATE TABLE transactions (
    id SERIAL PRIMARY KEY,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    amount INTEGER NOT NULL,
    type TEXT NOT NULL,
    time TIMESTAMP WITHOUT TIMEZONE NOT NULL DEFAULT NOW(),
    description TEXT NOT NULL,
    cancelled BOOLEAN NOT NULL    
);

CREATE TABLE creditCards (
    id SERIAL PRIMARY KEY,
    "bankAccountId" INTEGER NOT NULL REFERENCES "bankAccount"("id"),
    name VARCHAR(50) NOT NULL,
    number TEXT UNIQUE NOT NULL,
    "securityCode" TEXT NOT NULL,
    "expirationMonth" DATE NOT NULL,
    "expirationYear" INTEGER NOT NULL,
    password TEXT NOT NULL,
    limit REAL NOT NULL
);