-- Droppar alla tables ifall det behövs
DROP TABLE IF EXISTS RecipeIngredient;
DROP TABLE IF EXISTS Supply;
DROP TABLE IF EXISTS Recipe;
DROP TABLE IF EXISTS Product;
DROP TABLE IF EXISTS Supplier;

--Table för att lägga in olika leverantörer till råvaror
CREATE TABLE Supplier(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(30) NOT NULL,
    Adress VARCHAR(65) NOT NULL,
    ContactPerson VARCHAR(100) NOT NULL,
    Phone VARCHAR(15) NOT NULL,
    Email VARCHAR(128) NOT NULL
);

--Table för produkter som bageriet säljer
CREATE TABLE Product (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductName TEXT NOT NULL
);

--Table för recept, inget mer med det helt enkelt. Recept kopplas till en specifik produkt via foreign key. 
CREATE TABLE Recipe (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    ProductId INTEGER NOT NULL,
    FOREIGN KEY (ProductId) REFERENCES Product(Id)
);

--Table för råvaror. En råvara kopplas till en leverantörs id. 
CREATE TABLE Supply(
    SupplyId INTEGER PRIMARY KEY AUTOINCREMENT,
    SupplyName VARCHAR(50) NOT NULL,
    KiloPrice DECIMAL(10, 2) NOT NULL,
    SupplierId INTEGER NOT NULL,
    FOREIGN KEY (SupplierId) REFERENCES Supplier(Id)
);

--Table för att visa vilka råvaror som behövs för de olika recepten. 
CREATE TABLE RecipeIngredient (
    RecipeId INTEGER NOT NULL,
    SupplyId INTEGER NOT NULL,
    AmountInGrams REAL NOT NULL,
    PRIMARY KEY (RecipeId, SupplyId),
    FOREIGN KEY (RecipeId) REFERENCES Recipe(Id),
    FOREIGN KEY (SupplyId) REFERENCES Supply(Id)
);
