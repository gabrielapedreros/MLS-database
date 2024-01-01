# MySQL Practice Problem Context: Multiple Listing Service 
A multiple listing service is used in real estate to organize an immense amount of data.
In this project, the properties for sale are houses and business properties. A listing describes the property and the agent who posted the listing. The real estate agent works for a certain firm.

# Information Requirements
1) Property: Has an address, owner’s name, and price.
2) House: Inherits the information required by a property and in addition has the number of
bedrooms, number of bathrooms, and size in square feet. Make the House address a foreign key
reference to a Property address.
3) Business Property: Inherits the information required by a property and in addition has the type of
business, e.g., gas station, store front, office space, etc., and the size in square feet. Make the
Business Property address a foreign key reference to a Property address.
4) Agent: Has an id, a name and phone number. An agent’s employment record contains the date
when his/her employment started.
5) Firm: Has an id, a name, and an address.
6) Buyer: Has an id, a name, a phone number, and a set of preferences consisting of the type of
property in which the buyer is interested (house or business property) and, if a house, the desired
number of bedrooms and bathrooms, and, if a business, the desired type of business property, and,
for either a house or business property, the desired price range.
7) Listing: Has an MLS number, the property address, the agent’s id, and the date the listing was
posted. The MLS number serves as an id.

# Database Schema
• Property ( address: VARCHAR(50), ownerName: VARCHAR(30), price INTEGER )
• House ( bedrooms: INTEGER, bathrooms: INTEGER, size INTEGER, address: VARCHAR(50)
)
[Make the House address a foreign key reference to a Property address.]
• BusinessProperty ( type: CHAR(20), size: INTEGER, address: VARCHAR(50) )
[Make the BusinessProperty address a foreign key reference to a Property address.]
• Firm ( id: INTEGER, name: VARCHAR(30), address VARCHAR(50) )
• Agent ( agentId: INTEGER, name VARCHAR(30), phone CHAR(12), firmId INTEGER,
dateStarted DATE )
• Listings ( mlsNumber: INTEGER, address: VARCHAR(50), agentId: INTEGER, dateListed
DATE)
• Buyer ( id: INTEGER, name VARCHAR(30), phone CHAR(12), propertyType: CHAR(20),
bedrooms INTEGER, bathrooms INTEGER, businessPropertyType: CHAR(20),
minimumPreferredPrice: INTEGER, maximumPreferredPrice: INTEGER )
• Works_With( buyerId: INTEGER, agentID:INTEGER )

# Integrity Constraints
The address identies a property. Only one agent can list a certain property.
A listing is given an MLS number. An agent can only work for one firm.
Address in Listings table is a foregin key reference to Address in Property table.

# Data requirements
1) Insert sufficiently many records into your tables to return at least 1 record for each of the queries
below.
2) In any case, insert at least 5 records into each table.
3) Indicate the primary keys, foreign keys, and any non-null fields appropriately.
   
# Database.sql
Creates the tables of Database Schemas (Property, House, BusinessProperty, Firm, Agent, Listings, Buyer, and Works_With)

# Queries.sql
Contains SQL instructions for the output.
1) Find the addresses of all houses currently listed.
2) Find the addresses and MLS numbers of all houses currently listed.
3) Find the addresses of all 3-becroom, 2-bathroom houses currently listed.
4) Find the addresses and prices of all 3-bedroom, 2-bathroom houses with prices in the range
$100,000 to $250,000, with the results shown in descending order of price.
5) Find the addresses and prices of all business properties that are advertised as office space in
descending order of price.
6) Find all the ids, names and phones of all agents, together with the names of their firms and the
dates when they started.
7) Find all the properties currently listed by agent with id “001” (or some other suitable id).
8) Find all Agent.name-Buyer.name pairs where the buyer works with the agent, sorted
alphabetically by Agent.name.
9) For each agent, find the total number of buyers currently working with that agent, i.e., the output
should be Agent.id-count pairs.
10) For some buyer that is interested in a house, where the buyer is identified by an id (e.g., “001”),
find all houses that meet the buyer’s preferences, with the results shown in descending order of
price.

# Output
Outputs the properties that follow the restrictions from the queries.sql file.
