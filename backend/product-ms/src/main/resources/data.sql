-- Insert Data into Supermarket Table
INSERT INTO Supermarket (Name) VALUES ('Coles');
INSERT INTO Supermarket (Name) VALUES ('Woolworths');
INSERT INTO Supermarket (Name) VALUES ('Aldi');

-- Insert Data into Product Table
INSERT INTO Product (Name, Description, Category, ImageURL, Weight) VALUES
    ('Apple', 'Fresh Red Apple', 'Fruit', 'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80', 150),
    ('Banana', 'Sweet ripe bananas.', 'Fruit', 'https://images.unsplash.com/photo-1640958900081-7b069dd23e9c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80', 120),
    ('Cherry', 'Juicy red cherries.', 'Fruit', 'https://images.pexels.com/photos/966416/pexels-photo-966416.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 10),
    ('Date', 'Sweet dried dates.', 'Fruit', 'https://images.pexels.com/photos/11679690/pexels-photo-11679690.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 5),
    ('Grapes', 'Sweet and juicy grapes.', 'Fruit', 'https://images.unsplash.com/photo-1641210444019-f61749d2951f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80', 50),
    ('Kiwi', 'Tangy and delicious kiwi fruit.', 'Fruit', 'https://images.pexels.com/photos/3904800/pexels-photo-3904800.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 60),
    ('Lemon', 'Zesty fresh lemons.', 'Fruit', 'https://images.unsplash.com/photo-1587496679742-bad502958fbf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80', 70),
    ('Mango', 'Sweet tropical mangoes.', 'Fruit', 'https://images.unsplash.com/photo-1601493700631-2b16ec4b4716?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1335&q=80', 200),
    ('Broccoli', 'Fresh and crunchy broccoli florets.', 'Vegetables', 'https://images.unsplash.com/photo-1615485291234-9d694218aeb3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80', 80),
    ('Carrot', 'Bugs Bunny Favourite.', 'Vegetables', 'https://images.unsplash.com/photo-1576181256399-834e3b3a49bf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1475&q=80', 150),
    ('Spinach', 'Fresh baby spinach leaves.', 'Vegetables', 'https://images.pexels.com/photos/8845078/pexels-photo-8845078.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 100),
    ('Cauliflower', 'Fresh cauliflower head.', 'Vegetables', 'https://images.unsplash.com/photo-1566842600175-97dca489844f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1364&q=80', 90),
    ('Capsicum', 'Who wants sum?.', 'Vegetables', 'https://images.pexels.com/photos/870808/pexels-photo-870808.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 90),
    ('Milk', 'Get some calcium+.', 'Dairy, Eggs & Fridge', 'https://cdn0.woolworths.media/content/wowproductimages/large/405010.jpg', 1000),
    ('Eggs', 'Free-range.', 'Dairy, Eggs & Fridge', 'https://images.unsplash.com/photo-1586554102388-c03845e22442?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1336&q=80', 600),
    ('Butter', 'Spread that butter', 'Dairy, Eggs & Fridge', 'https://www.collinsdictionary.com/images/full/butter_137866427_1000.jpg?version=4.0.324', 250),
    ('Greek Yoghurt', 'No guilt creaminess', 'Dairy, Eggs & Fridge', 'https://thegreekfoodie.com/wp-content/uploads/2021/08/How_to_make_greek_yogurt_SQ.jpg', 150),
    ('Cheese block', 'Better than gold', 'Dairy, Eggs & Fridge', 'https://trivision.dk/wp-content/uploads/2021/11/Cheese-Block.png-scaled-2000x1303.jpg', 250),
    ('White Bread', 'Where bunnings at?', 'Bakery', 'https://images.unsplash.com/photo-1592029780368-c1fff15bcfd5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80', 500),
    ('Whole Grain Bread', 'Get them seeds in you.', 'Bakery', 'https://images.pexels.com/photos/7693917/pexels-photo-7693917.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 505),
    ('Croissant', 'The frenchest delight.', 'Bakery', 'https://images.unsplash.com/photo-1623334044303-241021148842?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80', 100),
    ('Bagel', 'Perfect with cream cheese and smoked salmon.', 'Bakery', 'https://leapclub.in/wp-content/uploads/2021/12/Plain-Bagels-scaled-3-510x340.jpeg', 90),
    ('Blueberry Muffin', 'Moist and fluffy muffin with blueberries.', 'Bakery', 'https://images.pexels.com/photos/4051597/pexels-photo-4051597.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 70),
    ('Roast Beef Slices', 'Tender and flavourful slices of roast beef.', 'Deli', 'https://cdn0.woolworths.media/content/wowproductimages/large/765665.jpg', 200),
    ('Smoked Salmon', 'Delicately smoked slices of premium wild salmon.', 'Deli', 'https://images.pexels.com/photos/14062114/pexels-photo-14062114.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 200),
    ('Prosciutto', 'The best of processed meats, straight from Italy.', 'Deli', 'https://images.pexels.com/photos/5774157/pexels-photo-5774157.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 100),
    ('Cheddar Cheese Block', 'Sharp cheddar cheese.', 'Deli', 'https://provista.online/wp-content/uploads/2019/04/PROVISTA-FRESH-Caterers-Cheddar-Cheese-Block.jpg', 120),
    ('Olive mix', 'Assorted olives marinated in herbs and oil', 'Deli', 'https://www.lastingredient.com/wp-content/uploads/2018/12/marinated-olives-819x1024.jpg', 50),
    ('Spaghetti Pasta', 'Traditional Italian spaghetti pasta. Perfect for a range of dishes.', 'Pantry', 'https://images.pexels.com/photos/3936873/pexels-photo-3936873.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 500),
    ('Olive Oil', 'Extra virgin olive oil, cold-pressed for the best flavour.', 'Pantry', 'https://images.unsplash.com/photo-1474979266404-7eaacbcd87c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1318&q=80', 120),
    ('Peanut Butter', 'Spread that nutty butter', 'Pantry', 'https://images.pexels.com/photos/5149346/pexels-photo-5149346.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 250),
    ('Canned Tuna', 'Skipjack tuna in spring water.', 'Pantry', 'https://images.pexels.com/photos/12001951/pexels-photo-12001951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 250),
    ('Honey', 'Natural and pure honey. Perfect as a sweetener or on toast.', 'Pantry', 'https://images.pexels.com/photos/5634210/pexels-photo-5634210.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 200),
    ('Green Tea', 'Refreshing green tea leaves. Rich in antioxidants.', 'Drinks', 'https://images.pexels.com/photos/8330335/pexels-photo-8330335.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 200),
    ('Lemonade', 'Straight from the stand.', 'Drinks', 'https://images.unsplash.com/photo-1621263764928-df1444c5e859?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1287&q=80', 250),
    ('Orange Juice', '100% freshly squeezed with no added nothing.', 'Drinks', 'https://cdn0.woolworths.media/content/wowproductimages/large/159977.jpg', 150),
    ('Espresso Coffee', 'Pick me up Im in a rush', 'Drinks', 'https://cdn0.woolworths.media/content/wowproductimages/large/313153.jpg', 50),
    ('Mineral Water', 'If the tap is not enough then get it from the mountain', 'Drinks', 'https://cdn0.woolworths.media/content/wowproductimages/large/357252.jpg', 1000),
    ('Salmon Fillet', 'Fresh Atlantic salmon fillet', 'Meat & Seafood', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-e33uc11FLqbDZzto0BTxkfMaAAYnE9eR9HKqt62D-E3v4Qri', 500),
    ('Ribeye Steak', 'Prime ribeye steak, perfect for grilling', 'Meat & Seafood', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRLdiN290YYOV_gPIKo7Qs06J9QlwIcjxrhjmxgAsMOJVkKsjrW', 800),
    ('Chicken Breast', 'Boneless, skinless chicken breast', 'Meat & Seafood', 'https://t3.gstatic.com/images?q=tbn:ANd9GcQx9orKHqo_HIsIhshAkSSCcvbtnDppD5Fv5Um_kjfGLRzjoRfU', 300),
    ('Tuna Steak', 'Sushi-grade ahi tuna steak', 'Meat & Seafood', 'https://t0.gstatic.com/images?q=tbn:ANd9GcRruGpW5SnPwTL1veRtQiI3_e1379Q-Ef0Sk7FNDQIZvQObm5xj', 400),
    ('Pork Chop', 'Center-cut pork chop', 'Meat & Seafood', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTqMYdYWAaB4QRL2Qfg7x9G1x_S1OrerCSiGa6dH6nFZW1RW3Kt', 600),
    ('Lobster Tail', 'Maine lobster tail, great for special occasions', 'Meat & Seafood', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRNtGrS4fEuKJDwjhKfFKBquzb2lSZNsM8MqyQVML8KkAFvIaOn', 700),
    ('Ground Beef', 'Lean ground beef, perfect for burgers', 'Meat & Seafood', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRxXox9gXCXtwpFBr7IWjcVP134ufIf2leQBaU4YIumRvrFOH72', 500),
    ('Shrimp', 'Jumbo shrimp, deveined and peeled', 'Meat & Seafood', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRTHm52TcmfsO-T_DDmdX3TiZCXtjeAi8wG5dWpqoFCqSo9aC5O', 400),
    ('Lamb Chops', 'Grass-fed lamb chops', 'Meat & Seafood', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRzIKULWn-FBudSTZa9aAI7WnZ4DQvCRdWvssYftWRZ8ekVqMMk', 500),
    ('Scallops', 'Fresh sea scallops', 'Meat & Seafood', 'https://t3.gstatic.com/images?q=tbn:ANd9GcTbiVo6mGy-8qrx_vSXbnE8cDNs-cSgvpW_HyEu23k3Md3qFGwG', 300);
    
-- Insert Data into SupermarketProduct Table (SupermarketID, ProductID, Price)

-- Prices for products in Coles (SupermarketID = 1)
INSERT INTO SupermarketProduct (SupermarketID, ProductID, Price) VALUES
    (1, 1, 1.20),
    (1, 2, 0.60),
    (1, 3, 2.50),
    (1, 4, 3.20),
    (1, 5, 2.30),
    (1, 6, 1.20),
    (1, 7, 0.60),
    (1, 8, 2.50),
    (1, 9, 3.20),
    (1, 10, 2.30),
    (1, 11, 1.20),
    (1, 12, 0.60),
    (1, 13, 2.50),
    (1, 14, 3.20),
    (1, 15, 2.30),
    (1, 16, 1.20),
    (1, 17, 0.60),
    (1, 18, 2.50),
    (1, 19, 3.20),
    (1, 20, 2.30),
    (1, 21, 1.20),
    (1, 22, 0.60),
    (1, 23, 2.50),
    (1, 24, 3.20),
    (1, 25, 2.30),
    (1, 26, 1.20),
    (1, 27, 0.60),
    (1, 28, 2.50),
    (1, 29, 3.20),
    (1, 30, 2.30),
    (1, 31, 1.20),
    (1, 32, 0.60),
    (1, 33, 2.50),
    (1, 34, 3.20),
    (1, 35, 2.30),
    (1, 36, 1.20),
    (1, 37, 0.60),
    (1, 38, 0.90);

-- Prices for products in Woolworths (SupermarketID = 2)
INSERT INTO SupermarketProduct (SupermarketID, ProductID, Price) VALUES
    (2, 1, 1.40),
    (2, 2, 0.50),
    (2, 3, 2.80),
    (2, 4, 3.10),
    (2, 5, 2.50),
    (2, 6, 1.20),
    (2, 7, 0.70),
    (2, 8, 2.80),
    (2, 9, 3.20),
    (2, 10, 3.30),
    (2, 11, 2.20),
    (2, 12, 1.60),
    (2, 13, 7.50),
    (2, 14, 4.20),
    (2, 15, 3.30),
    (2, 16, 9.20),
    (2, 17, 3.60),
    (2, 18, 1.50),
    (2, 19, 2.20),
    (2, 20, 1.30),
    (2, 21, 1.50),
    (2, 22, 0.40),
    (2, 23, 2.90),
    (2, 24, 3.10),
    (2, 25, 2.40),
    (2, 26, 1.10),
    (2, 27, 0.70),
    (2, 28, 2.80),
    (2, 29, 3.10),
    (2, 30, 2.20),
    (2, 31, 1.60),
    (2, 32, 0.70),
    (2, 33, 2.10),
    (2, 34, 3.30),
    (2, 35, 2.20),
    (2, 36, 1.20),
    (2, 37, 0.60),
    (2, 38, 2.90);

-- Prices for products in Aldi (SupermarketID = 3)
INSERT INTO SupermarketProduct (SupermarketID, ProductID, Price) VALUES
    (3, 1, 1.20),
    (3, 2, 0.60),
    (3, 3, 2.10),
    (3, 4, 4.20),
    (3, 5, 1.30),
    (3, 6, 1.10),
    (3, 7, 0.30),
    (3, 8, 2.40),
    (3, 9, 3.10),
    (3, 10, 1.30),
    (3, 11, 1.70),
    (3, 12, 0.30),
    (3, 13, 2.20),
    (3, 14, 3.10),
    (3, 15, 2.10),
    (3, 16, 1.10),
    (3, 17, 0.30),
    (3, 18, 2.30),
    (3, 19, 3.80),
    (3, 20, 2.30),
    (3, 21, 1.20),
    (3, 22, 0.10),
    (3, 23, 1.50),
    (3, 24, 1.20),
    (3, 25, 1.30),
    (3, 26, 2.20),
    (3, 27, 0.60),
    (3, 28, 1.90),
    (3, 29, 2.90),
    (3, 30, 2.20),
    (3, 31, 1.10),
    (3, 32, 0.50),
    (3, 33, 2.30),
    (3, 34, 3.10),
    (3, 35, 1.90),
    (3, 36, 0.80),
    (3, 37, 0.40),
    (3, 38, 1.60);


