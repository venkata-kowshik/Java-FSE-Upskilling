
--   EVENT MANAGEMENT DATABASE SETUP


CREATE DATABASE IF NOT EXISTS event_hub;

USE event_hub;

--   USERS TABLE

CREATE TABLE Users (
    user_id INT AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    city VARCHAR(100) NOT NULL,
    registration_date DATE NOT NULL,

    PRIMARY KEY (user_id)
);


--   EVENTS TABLE

CREATE TABLE Events (
    event_id INT AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    city VARCHAR(100) NOT NULL,
    start_date DATETIME NOT NULL,
    end_date DATETIME NOT NULL,
    status ENUM('upcoming','completed','cancelled'),
    organizer_id INT,

    PRIMARY KEY (event_id),

    FOREIGN KEY (organizer_id)
    REFERENCES Users(user_id)
);

  -- EVENT SESSIONS TABLE

CREATE TABLE Sessions (
    session_id INT AUTO_INCREMENT,
    event_id INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    speaker_name VARCHAR(100) NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,

    PRIMARY KEY (session_id),

    FOREIGN KEY (event_id)
    REFERENCES Events(event_id)
);


--   EVENT REGISTRATIONS


CREATE TABLE Registrations (
    registration_id INT AUTO_INCREMENT,
    user_id INT NOT NULL,
    event_id INT NOT NULL,
    registration_date DATE NOT NULL,

    PRIMARY KEY (registration_id),

    FOREIGN KEY (user_id)
    REFERENCES Users(user_id),

    FOREIGN KEY (event_id)
    REFERENCES Events(event_id)
);


   -- EVENT FEEDBACK

CREATE TABLE Feedback (
    feedback_id INT AUTO_INCREMENT,
    user_id INT NOT NULL,
    event_id INT NOT NULL,
    rating INT CHECK(rating BETWEEN 1 AND 5),
    comments TEXT,
    feedback_date DATE NOT NULL,

    PRIMARY KEY (feedback_id),

    FOREIGN KEY (user_id)
    REFERENCES Users(user_id),

    FOREIGN KEY (event_id)
    REFERENCES Events(event_id)
);


--   EVENT RESOURCES


CREATE TABLE Resources (
    resource_id INT AUTO_INCREMENT,
    event_id INT NOT NULL,
    resource_type ENUM('pdf','image','link'),
    resource_url VARCHAR(255) NOT NULL,
    uploaded_at DATETIME NOT NULL,

    PRIMARY KEY (resource_id),

    FOREIGN KEY (event_id)
    REFERENCES Events(event_id)
);



