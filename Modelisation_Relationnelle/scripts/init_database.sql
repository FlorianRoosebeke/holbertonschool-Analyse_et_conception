BEGIN;

DROP TABLE IF EXISTS ligne_commande CASCADE;
DROP TABLE IF EXISTS commande CASCADE;
DROP TABLE IF EXISTS produit CASCADE;
DROP TABLE IF EXISTS client CASCADE;

CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    contact VARCHAR(255) NOT NULL
);

CREATE TABLE produit (
    id_produit SERIAL PRIMARY KEY,
    code_prod VARCHAR(50) NOT NULL UNIQUE,
    designation VARCHAR(255) NOT NULL,
    prix_unitaire_ht NUMERIC(10, 2) NOT NULL CHECK (prix_unitaire_ht >= 0)
);

CREATE TABLE commande (
    id_commande SERIAL PRIMARY KEY,
    date_achat DATE NOT NULL,
    statut VARCHAR(50) NOT NULL,
    adresse_livraison TEXT NOT NULL,
    id_client INTEGER NOT NULL REFERENCES client(id_client)
);

CREATE TABLE ligne_commande (
    id_ligne SERIAL PRIMARY KEY,
    id_commande INTEGER NOT NULL REFERENCES commande(id_commande),
    id_produit INTEGER NOT NULL REFERENCES produit(id_produit),
    quantite INTEGER NOT NULL CHECK (quantite > 0)
);

COMMIT;