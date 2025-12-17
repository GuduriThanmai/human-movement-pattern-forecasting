-- ============================================
-- Database Schema for Human Movement Forecasting
-- ============================================

-- Create Database
CREATE DATABASE IF NOT EXISTS human_movement_db;
USE human_movement_db;

-- ============================================
-- ADMIN TABLE
-- ============================================
CREATE TABLE admin (
    username VARCHAR(100) PRIMARY KEY,
    password VARCHAR(100) NOT NULL
);

-- Insert default admin credentials
INSERT INTO admin (username, password)
VALUES ('admin', 'admin123');

-- ============================================
-- DATASET TABLE
-- ============================================
CREATE TABLE dataset (
    id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    retail_recreation INT,
    grocery_pharmacy INT,
    parks INT,
    transit_stations INT,
    workplaces INT,
    residential INT,
    not_enough_data VARCHAR(10)
);

-- ============================================
-- PREDICTION RESULTS TABLE (Optional)
-- ============================================
CREATE TABLE prediction_results (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(100) NOT NULL,
    predicted_value FLOAT NOT NULL,
    accuracy FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
