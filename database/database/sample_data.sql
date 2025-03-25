-- Sample data for Online Food Ordering System

-- Insert restaurants
INSERT INTO restaurants (name, location, cuisine_type, contact_number, opening_hours)
VALUES 
('Pizza Palace', '123 Main St, Anytown', 'Italian', '555-1234', '10:00 AM - 10:00 PM'),
('Burger Barn', '456 Oak Ave, Anytown', 'American', '555-5678', '11:00 AM - 11:00 PM'),
('Sushi World', '789 Elm Blvd, Anytown', 'Japanese', '555-9012', '12:00 PM - 9:30 PM');

-- Insert menu categories
INSERT INTO menu_categories (restaurant_id, name)
VALUES 
(1, 'Pizzas'),
(1, 'Sides'),
(1, 'Drinks'),
(2, 'Burgers'),
(2, 'Fries'),
(2, 'Shakes'),
(3, 'Sushi Rolls'),
(3, 'Appetizers'),
(3, 'Sake');

-- Insert menu items
INSERT INTO menu_items (restaurant_id, category_id, name, description, price, is_vegetarian, is_available)
VALUES
-- Pizza Palace items
(1, 1, 'Margherita Pizza', 'Classic pizza with tomato sauce, mozzarella, and basil', 12.99, TRUE, TRUE),
(1, 1, 'Pepperoni Pizza', 'Pizza with tomato sauce, mozzarella, and pepperoni', 14.99, FALSE, TRUE),
(1, 2, 'Garlic Bread', 'Toasted bread with garlic butter', 4.99, TRUE, TRUE),
(1, 3, 'Soda', '16oz fountain drink', 2.49, TRUE, TRUE),

-- Burger Barn items
(2, 4, 'Classic Burger', 'Beef patty with lettuce, tomato, and special sauce', 8.99, FALSE, TRUE),
(2, 4, 'Veggie Burger', 'Plant-based patty with all the fixings', 9.99, TRUE, TRUE),
(2, 5, 'French Fries', 'Crispy golden fries', 3.99, TRUE, TRUE),
(2, 6, 'Chocolate Shake', 'Creamy chocolate milkshake', 5.49, TRUE, TRUE),

-- Sushi World items
(3, 7, 'California Roll', 'Crab, avocado, and cucumber', 8.99, FALSE, TRUE),
(3, 7, 'Vegetable Roll', 'Assorted fresh vegetables', 7.99, TRUE, TRUE),
(3, 8, 'Edamame', 'Steamed soybeans with sea salt', 4.99, TRUE, TRUE),
(3, 9, 'Premium Sake', '300ml bottle of premium sake', 12.99, TRUE, TRUE);

-- Insert customers
INSERT INTO customers (first_name, last_name, email, phone_number, address, password_hash)
VALUES
('John', 'Doe', 'john.doe@example.com', '555-1111', '123 Elm St, Anytown', 'hashed_password_123'),
('Jane', 'Smith', 'jane.smith@example.com', '555-2222', '456 Oak Ave, Anytown', 'hashed_password_456'),
('Bob', 'Johnson', 'bob.johnson@example.com', '555-3333', '789 Pine Rd, Anytown', 'hashed_password_789');

-- Insert staff users
INSERT INTO staff_users (username, password_hash, role, restaurant_id)
VALUES
('admin', 'hashed_admin_password', 'admin', NULL),
('pizzamanager', 'hashed_pizza_password', 'manager', 1),
('burgermanager', 'hashed_burger_password', 'manager', 2),
('delivery1', 'hashed_delivery_password', 'delivery', NULL);

-- Insert delivery personnel
INSERT INTO delivery_personnel (first_name, last_name, phone_number, vehicle_type)
VALUES
('Mike', 'Davis', '555-4444', 'Bicycle'),
('Sarah', 'Wilson', '555-5555', 'Car');

-- Insert sample orders
INSERT INTO orders (customer_id, restaurant_id, total_amount, status, delivery_address, special_instructions)
VALUES
(1, 1, 22.97, 'delivered', '123 Elm St, Anytown', 'Please ring doorbell'),
(2, 2, 18.47, 'out_for_delivery', '456 Oak Ave, Anytown', 'No onions on burger'),
(3, 3, 25.97, 'confirmed', '789 Pine Rd, Anytown', 'Extra soy sauce please');

-- Insert order items
INSERT INTO order_items (order_id, item_id, quantity, price_at_order, special_requests)
VALUES
(1, 1, 1, 12.99, 'Extra cheese'),
(1, 3, 1, 4.99, 'Extra garlic butter'),
(1, 4, 2, 2.49, NULL),
(2, 5, 1, 8.99, 'No onions'),
(2, 7, 2, 3.99, 'Well done'),
(3, 9, 2, 8.99, 'No wasabi'),
(3, 11, 1, 4.99, NULL),
(3, 12, 1, 12.99, NULL);

-- Insert deliveries
INSERT INTO deliveries (order_id, delivery_person_id, pickup_time, delivery_time, status)
VALUES
(1, 1, '2023-05-01 18:30:00', '2023-05-01 19:05:00', 'delivered'),
(2, 2, '2023-05-02 19:15:00', NULL, 'in_transit');
