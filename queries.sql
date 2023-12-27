--By: Gabriela Pedreros

-- 1. 
SELECT Listing.address
	FROM Listing, House
	WHERE Listing.address = House.address;
-- 2. 
SELECT Listing.address, Listing.mlsNumber
	FROM Listing, House
	WHERE Listing.address = House.address;
-- 3. 
SELECT Listing.address 
	FROM Listing, House
	WHERE Listing.address = House.address AND House.bedrooms = 3 AND House.bathrooms = 2;
-- 4.
SELECT address, price
	FROM House
	WHERE bedrooms = 3 AND bathrooms = 2 AND price >= 100000 AND price <= 250000
	ORDER BY price DESC;
-- 5.
SELECT address, price
	FROM BusinessProperty
	WHERE type = 'office space'
	ORDER BY price DESC;
-- 6.
SELECT agentId, Agent.name, phone, Firm.name, dateStarted
	FROM Agent, Firm
	WHERE Agent.firmId = Firm.id;
    
-- 7. 
SELECT Property.* 
    FROM Property, Listing 
    WHERE Property.address = Listing.address AND Listing.agentId = 101;
-- 8. 
SELECT Agent.name AS Agent_Name, Buyer.name AS Buyer_Name
	FROM Agent, Buyer, Work_With
	WHERE Agent.agentId = Work_With.agentId AND Buyer.id = Work_With.buyerId
	ORDER BY Agent.name;
-- 9.
SELECT Work_With.agentId AS agentID, COUNT(Work_With.buyerId) AS NumberOfBuyers 
    FROM Work_With LEFT JOIN Buyer ON Work_With.agentId = Work_With.buyerId GROUP BY Work_With.agentId;

-- 10. 
SELECT House.*
	FROM House, Buyer
	WHERE Buyer.id = 123 AND 
	Buyer.bedrooms = House.bedrooms AND
	Buyer.bathrooms = House.bathrooms AND
	Buyer.minimumPreferredPrice <= House.price AND
 	Buyer.maximumPreferredPrice >= House.price
	ORDER BY price DESC;