INSERT INTO Supplier(
    Name,
    Adress,
    ContactPerson,
    Phone,
    Email
)VALUES(
    'Lantmännen',
    'Jungfruvägen 25',
    'Filip Eriksson',
    '040-8290958',
    'lantmannen@gmail.com'
);
INSERT INTO Supplier(
    Name,
    Adress,
    ContactPerson,
    Phone,
    Email
) VALUES (
    'Sockerbolaget AB',
    'Sötsaksvägen 11',
    'Anna Persson',
    '031-998877',
    'kontakt@sockerbolaget.se'
);

INSERT INTO Supply (
    SupplyName, 
    KiloPrice, 
    SupplierId
)VALUES
('Vetemjöl', 8.50, 1),
('Smör', 90.00, 1),
('Socker', 12.00, 2);

INSERT INTO Product (ProductName)
VALUES ('Kanelbulle');

INSERT INTO Recipe (ProductId)
VALUES (1);


INSERT INTO RecipeIngredient (RecipeId, SupplyId, AmountInGrams)
VALUES
(1, 1, 300),   -- vetemjol
(1, 2, 50),    -- smor
(1, 3, 30);    -- socker