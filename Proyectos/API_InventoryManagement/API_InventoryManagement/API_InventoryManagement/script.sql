-- AppUsers
INSERT INTO AppUser (Username, Email, Password)
VALUES ('User1', 'user1@example.com', 'password1'),
       ('User2', 'user2@example.com', 'password2'),
       ('User3', 'user3@example.com', 'password3');

-- Products
INSERT INTO Product (Name, State)
VALUES ('Product1', 'Active'),
       ('Product2', 'Inactive'),
       ('Product3', 'Active');

-- Stocks
INSERT INTO Stock (ProductId, Quantity)
VALUES (1, 100),
       (2, 50),
       (3, 75);