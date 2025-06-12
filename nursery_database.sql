-- Create Categories table for product categories (Fruit, Vegetable, Herb, Tree)
CREATE TABLE Categories (
    category_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);

-- Create Products table for seedlings
CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY AUTOINCREMENT,
    category_id INTEGER,
    name TEXT NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

-- Create Customers table for storing customer information
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    email TEXT UNIQUE,
    phone_number TEXT,
    address TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Orders table for customer orders
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status TEXT NOT NULL DEFAULT 'Pending',
    delivery_address TEXT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Order_Items table for items in each order
CREATE TABLE Order_Items (
    order_item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Create Feedback table for customer feedback
CREATE TABLE Feedback (
    feedback_id INTEGER PRIMARY KEY AUTOINCREMENT,
    full_name TEXT NOT NULL,
    email TEXT NOT NULL,
    phone_number TEXT NOT NULL,
    message TEXT NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Training_Programs table for training details
CREATE TABLE Training_Programs (
    program_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    duration TEXT NOT NULL,
    location TEXT NOT NULL,
    time TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    details TEXT
);

-- Create Enrollments table for training registrations
CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    program_id INTEGER,
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (program_id) REFERENCES Training_Programs(program_id)
);

-- Create Contact_Messages table for contact form submissions
CREATE TABLE Contact_Messages (
    message_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    subject TEXT,
    message TEXT NOT NULL,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert initial data for Categories
INSERT INTO Categories (name) VALUES ('Fruit');
INSERT INTO Categories (name) VALUES ('Vegetable');
INSERT INTO Categories (name) VALUES ('Herb');
INSERT INTO Categories (name) VALUES ('Tree');

-- Insert initial data for Training_Programs
INSERT INTO Training_Programs (name, description, duration, location, time, price, details)
VALUES (
    'Nursery Management',
    'Learn seed propagation, shading, irrigation setup, pest control, and more. Includes field practice and expert Q&A.',
    '3 Days',
    'Our Farm, Embu',
    '9:00 AM - 4:00 PM',
    6500.00,
    'Hands-on field work, Materials provided, Certificate on completion, Bring notebook and boots'
);

INSERT INTO Training_Programs (name, description, duration, location, time, price, details)
VALUES (
    'Fruit Farming',
    'Covers soil prep, planting, mulching, organic pest control, irrigation, harvesting, and marketing techniques for various fruit crops.',
    '5 Days',
    'Our Orchard, Kirinyaga',
    '8:30 AM - 5:00 PM',
    9000.00,
    'Real field exposure, Sample fruits included, Certificate of participation, Wear sun protection and carry water'
);

INSERT INTO Training_Programs (name, description, duration, location, time, price, details)
VALUES (
    'Grafting Techniques',
    'Learn budding, cleft grafting, whip-and-tongue, aftercare, and success troubleshooting from experienced horticulturists.',
    '2 Days',
    'Demo Greenhouse, Meru',
    '10:00 AM - 3:00 PM',
    7500.00,
    'Practice with real scions, Take-home grafted plants, Certificate included, Bring gloves and cutters'
);
