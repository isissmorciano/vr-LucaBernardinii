CREATE TABLE Prodotto (
    id INT PRIMARY KEY,
    nome TEXT NOT NULL,
    prezzo REAL,
)

CREATE TABLE Ordine (
    id INT PRIMARY KEY,
    data DATE,
    cliente_nome TEXT NOT NULL,
)

CREATE TABLE OrdineProdotto (
    id INT PRIMARY KEY,
    ordine_id INT FOREIGN KEY,
    prodotto_id INT FOREIGN KEY,
    quantita INT,
)

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

