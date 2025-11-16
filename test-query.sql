-- Lista leverantörer och deras råvaror
SELECT Supplier.Name AS Leverantör, Supply.SupplyName AS Råvara, Supply.KiloPrice
FROM Supplier
JOIN Supply ON Supply.SupplierId = Supplier.Id;

-- Lista alla produkter med recept
SELECT Product.ProductName, Recipe.Id AS ReceptId
FROM Product
JOIN Recipe ON Recipe.ProductId = Product.Id;

-- Visa ingredienser för ett recept
SELECT Product.ProductName, Supply.SupplyName AS Råvara, RecipeIngredient.AmountInGrams
FROM RecipeIngredient
JOIN Recipe ON Recipe.Id = RecipeIngredient.RecipeId
JOIN Product ON Product.Id = Recipe.ProductId
JOIN Supply ON Supply.SupplyId = RecipeIngredient.SupplyId;
