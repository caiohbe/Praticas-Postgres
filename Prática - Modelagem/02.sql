CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    price INTEGER NOT NULL,
    "imageUrl" TEXT NOT NULL,
    category TEXT NOT NULL,
    size TEXT NOT NULL
);