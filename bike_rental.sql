
-- ======================================================
-- Bike Rental System Database
-- ======================================================

-- Drop tables if they exist
DROP TABLE IF EXISTS Transactions;
DROP TABLE IF EXISTS Bikes;
DROP TABLE IF EXISTS Users;

-- ======================================================
-- Create Users table
-- ======================================================
CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15)
);

-- ======================================================
-- Create Bikes table
-- ======================================================
CREATE TABLE Bikes (
    BikeID INT PRIMARY KEY AUTO_INCREMENT,
    BikeType VARCHAR(50) NOT NULL,
    RentalRate DECIMAL(10,2) NOT NULL
);

-- ======================================================
-- Create Transactions table
-- ======================================================
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    BikeID INT,
    TransactionDate DATE NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL,
    TotalDistance DECIMAL(10,2),
    DiscountApplied BOOLEAN,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (BikeID) REFERENCES Bikes(BikeID)
);

-- ======================================================
-- Insert Users (20 records)
-- ======================================================
INSERT INTO Users (Name, Age, Gender, Email, Phone) VALUES
('Ananya Das', 44, 'Female', 'ananya.das69@gmail.com', '9844362061'),
('Aanya Chopra', 42, 'Female', 'aanya.chopra58@yahoo.com', '9174012568'),
('Kunal Bose', 24, 'Male', 'kunal.bose70@gmail.com', '9668123617'),
('Priya Kapoor', 25, 'Female', 'priya.kapoor66@yahoo.com', '9175732885'),
('Ananya Das', 24, 'Female', 'ananya.das21@gmail.com', '9172321079'),
('Aarav Verma', 31, 'Male', 'aarav.verma83@outlook.com', '9254536123'),
('Sneha Reddy', 27, 'Female', 'sneha.reddy47@hotmail.com', '9821345670'),
('Rahul Nair', 40, 'Male', 'rahul.nair32@gmail.com', '9765432109'),
('Diya Sharma', 23, 'Female', 'diya.sharma15@yahoo.com', '9192837465'),
('Arjun Patel', 35, 'Male', 'arjun.patel27@outlook.com', '9845671234'),
('Neha Kapoor', 29, 'Female', 'neha.kapoor91@gmail.com', '9918273645'),
('Rohan Iyer', 38, 'Male', 'rohan.iyer45@hotmail.com', '9876543021'),
('Pooja Chopra', 26, 'Female', 'pooja.chopra33@gmail.com', '9745612389'),
('Krishna Das', 41, 'Male', 'krishna.das77@yahoo.com', '9654321870'),
('Kavya Bose', 30, 'Female', 'kavya.bose56@outlook.com', '9938456721'),
('Siddharth Nair', 28, 'Male', 'siddharth.nair14@gmail.com', '9876123450'),
('Ritika Verma', 22, 'Female', 'ritika.verma61@yahoo.com', '9182763459'),
('Vikram Sharma', 45, 'Male', 'vikram.sharma19@hotmail.com', '9867543210'),
('Isha Reddy', 21, 'Female', 'isha.reddy38@gmail.com', '9291873645'),
('Vivaan Kapoor', 36, 'Male', 'vivaan.kapoor84@outlook.com', '9756123489');

-- ======================================================
-- Insert Bikes (10 records)
-- ======================================================
INSERT INTO Bikes (BikeType, RentalRate) VALUES
('Electric', 15.50),
('Mountain', 20.00),
('Road', 18.00),
('Hybrid', 17.50),
('Sports', 22.00),
('City', 14.00),
('Electric', 16.00),
('Mountain', 19.50),
('Road', 18.50),
('Hybrid', 17.00);

-- ======================================================
-- Insert Transactions (30 records)
-- ======================================================
INSERT INTO Transactions (UserID, BikeID, TransactionDate, TotalAmount, TotalDistance, DiscountApplied) VALUES
(17, 8, '2025-03-08', 52.14, 2.75, TRUE),
(15, 7, '2025-08-19', 259.29, 18.21, TRUE),
(14, 7, '2025-07-15', 308.14, 22.41, TRUE),
(2, 4, '2025-05-15', 239.08, 14.74, TRUE),
(6, 10, '2025-01-12', 262.17, 14.58, FALSE),
(11, 6, '2025-02-28', 232.56, 13.68, FALSE),
(13, 7, '2025-07-29', 314.42, 22.85, TRUE),
(5, 5, '2025-03-24', 163.49, 8.98, FALSE),
(18, 9, '2025-06-19', 212.62, 11.49, TRUE),
(4, 7, '2025-02-01', 221.71, 12.37, FALSE),
(7, 6, '2025-07-01', 291.33, 19.09, TRUE),
(20, 9, '2025-05-05', 249.15, 13.42, TRUE),
(16, 2, '2025-08-13', 269.72, 14.85, FALSE),
(1, 3, '2025-04-26', 173.98, 9.45, TRUE),
(9, 1, '2025-03-18', 185.63, 10.11, FALSE),
(19, 6, '2025-06-08', 263.88, 13.96, TRUE),
(3, 8, '2025-02-15', 206.73, 11.12, FALSE),
(8, 4, '2025-01-22', 197.55, 10.24, TRUE),
(12, 2, '2025-07-09', 278.34, 15.21, TRUE),
(10, 5, '2025-05-29', 222.18, 11.62, FALSE),
(7, 10, '2025-04-07', 188.63, 9.94, TRUE),
(14, 3, '2025-02-19', 182.45, 9.74, FALSE),
(6, 6, '2025-03-05', 215.87, 11.27, TRUE),
(17, 9, '2025-04-13', 234.92, 12.59, FALSE),
(2, 8, '2025-06-25', 298.61, 16.24, TRUE),
(11, 7, '2025-07-21', 305.14, 21.07, FALSE),
(5, 2, '2025-05-11', 197.41, 10.14, TRUE),
(9, 4, '2025-01-30', 201.66, 10.63, FALSE),
(18, 5, '2025-02-25', 226.33, 12.01, TRUE),
(13, 1, '2025-03-14', 174.27, 9.48, FALSE);
