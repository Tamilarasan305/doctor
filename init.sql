CREATE DATABASE IF NOT EXISTS hms;
CREATE USER 'root'@'${MYSQL_HOST}' IDENTIFIED BY '${MYSQL_PASSWORD}';
GRANT ALL PRIVILEGES ON hms.* TO 'root'@'${MYSQL_HOST}';

USE hms;

-- Create the tables
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE doctors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(255) NOT NULL,
    date_of_birth DATE,
    qualification VARCHAR(255),
    specialist VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20),
    password VARCHAR(255) NOT NULL
);

CREATE TABLE specialists (
    id INT PRIMARY KEY AUTO_INCREMENT,
    specialist_name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE appointments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    gender VARCHAR(10),
    age VARCHAR(3),
    appointment_date DATETIME NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    diseases TEXT,
    doctor_id INT NOT NULL,
    address TEXT,
    status VARCHAR(255)
);

-- Add foreign key constraints
ALTER TABLE appointments
ADD CONSTRAINT fk_appointments_users FOREIGN KEY (user_id) REFERENCES users(id),
ADD CONSTRAINT fk_appointments_doctors FOREIGN KEY (doctor_id) REFERENCES doctors(id);
