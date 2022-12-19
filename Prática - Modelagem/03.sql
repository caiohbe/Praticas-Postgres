CREATE TABLE purchases (
    id SERIAL PRIMARY KEY,
    adress TEXT NOT NULL,
    state TEXT NOT NULL DEFAULT 'paga',
    "idUser" INTEGER NOT NULL REFERENCES "users"("id"),
    "idProduct" INTEGER NOT NULL REFERENCES "products"("id"),
    "purchaseDate" TIMESTAMP NOT NULL DEFAULT NOW()
)