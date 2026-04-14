CREATE TABLE Prodotto (
    id INT PRIMARY KEY,
    nome TEXT NOT NULL,
    prezzo REAL
);

CREATE TABLE Ordine (
    id INT PRIMARY KEY,
    data DATE,
    cliente_nome TEXT NOT NULL
);

CREATE TABLE OrdineProdotto (
    id INT PRIMARY KEY,
    ordine_id INT NOT NULL,
    prodotto_id INT NOT NULL,
    quantita INT,
    FOREIGN KEY (ordine_id) REFERENCES Ordine(id),
    FOREIGN KEY (prodotto_id) REFERENCES Prodotto(id)
);

INSERT INTO Prodotto (id, nome, prezzo) VALUES
(1, 'Notebook', 12.5),
(2, 'Penna a sfera', 1.2),
(3, 'Zaino', 28.0),
(4, 'Agenda', 7.5),
(5, 'Quaderno', 5.0);

INSERT INTO Ordine (id, data, cliente_nome) VALUES
(1, '2025-10-01', 'Anna Verdi'),
(2, '2025-10-02', 'Marco Neri'),
(3, '2025-10-03', 'Anna Verdi');

INSERT INTO OrdineProdotto (id, ordine_id, prodotto_id, quantita) VALUES
(1, 1, 1, 2),
(2, 1, 2, 5),
(3, 2, 3, 1),
(4, 3, 4, 2),
(5, 3, 2, 3);

-- Query 1
-- Seleziona tutte le informazioni dei prodotti che costano meno di 10
-- dalla tabella Prodotto
SELECT *
FROM Prodotto
WHERE prezzo < 10;

-- Query 2

-- Query 3
-- Conta quante volte il nome di un cliente è contenuto nella tabella Ordine
SELECT cliente_nome, COUNT(*) AS numero_ordini
FROM Ordine
GROUP BY cliente_nome;

-- Query 4
-- Fa la media dei prezzi nella tabella Prodotto
SELECT AVG(prezzo) AS prezzo_medio
FROM Prodotto;