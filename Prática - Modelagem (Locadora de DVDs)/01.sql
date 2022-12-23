CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE movies (
    id SERIAL PRIMARY KEY,
    title TEXT UNIQUE NOT NULL,
    "categoryId" INTEGER NOT NULL REFERENCES categories(id)
);

CREATE TABLE actors (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    birthday TIMESTAMP NOT NULL,
    nationality TEXT NOT NULL
);

CREATE TABLE cast (
    id SERIAL PRIMARY KEY,
    "movieId" INTEGER NOT NULL REFERENCES movie(id),
    "actorId" INTEGER NOT NULL REFERENCES actors(id)
);

CREATE TABLE dvds (
    id SERIAL PRIMARY KEY,
    "barCode" TEXT NOT NULL UNIQUE,
    "movieId" INTEGER NOT NULL REFERENCES movie(id)
);

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    "phoneNumber" TEXT NOT NULL UNIQUE,
    adress TEXT NOT NULL,
    cpf TEXT NOT NULL UNIQUE
);

CREATE TABLE rentals (
    id SERIAL PRIMARY KEY,
    "rentalDate" TIMESTAMP NOT NULL DEFAULT NOW(),
    "dvdId" INTEGER NOT NULL REFERENCES dvds(id),
    "customerId" INTEGER NOT NULL REFERENCES customers(id),
    "returnDate" TIMESTAMP,
    "movieScore" INTEGER,
    "assistanceScore" INTEGER
);