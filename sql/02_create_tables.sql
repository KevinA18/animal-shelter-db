USE animal_shelter_db;

CREATE TABLE Animal (
    Animal_ID INT AUTO_INCREMENT,
    Name VARCHAR(50) NOT NULL,
    Species VARCHAR(30) NOT NULL,
    Breed VARCHAR(30) NOT NULL,
    Age INT,
    Sex VARCHAR(30) NOT NULL,
    Intake_Date DATE NOT NULL,
    Adoption_Status VARCHAR(30) NOT NULL DEFAULT 'Available',

    PRIMARY KEY (Animal_ID)
);

CREATE TABLE Medical_Treatment (
    Treatment_ID INT AUTO_INCREMENT,
    Animal_ID INT NOT NULL,
    Treatment_Date DATE NOT NULL,
    Treatment_Type VARCHAR(45) NOT NULL,
    Medication VARCHAR(45),
    Cost DECIMAL(8,2) NOT NULL,

    PRIMARY KEY (Treatment_ID)
);

CREATE TABLE Volunteer (
    Volunteer_ID INT AUTO_INCREMENT,
    First_Name VARCHAR(45) NOT NULL,
    Last_Name VARCHAR(45) NOT NULL,
    Phone VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    Availability VARCHAR(45) NOT NULL,

    PRIMARY KEY (Volunteer_ID)
);

CREATE TABLE Volunteer_Assignment (
    Assignment_ID INT AUTO_INCREMENT,
    Animal_ID INT NOT NULL,
    Volunteer_ID INT NOT NULL,
    Assignment_Date DATE NOT NULL,
    Assignment_Type VARCHAR(45) NOT NULL,

    PRIMARY KEY (Assignment_ID)
);

CREATE TABLE Adopter (
    Adopter_ID INT AUTO_INCREMENT,
    First_Name VARCHAR(45) NOT NULL,
    Last_Name VARCHAR(45) NOT NULL,
    Phone VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Housing_Type VARCHAR(45) NOT NULL,

    PRIMARY KEY (Adopter_ID)
);

CREATE TABLE Adoption_Application (
    Application_ID INT AUTO_INCREMENT,
    Animal_ID INT NOT NULL,
    Adopter_ID INT NOT NULL,
    Application_Date DATE NOT NULL,
    Status VARCHAR(45) NOT NULL DEFAULT 'Pending',
    Other_Pets TINYINT(1) NOT NULL DEFAULT 0,
    Application_Notes VARCHAR(200),

    PRIMARY KEY (Application_ID)
);

CREATE TABLE Adoption (
    Adoption_ID INT AUTO_INCREMENT,
    Animal_ID INT NOT NULL,
    Adopter_ID INT NOT NULL,
    Adoption_Date DATE NOT NULL,
    Adoption_Fee DECIMAL(8,2) NOT NULL,

    PRIMARY KEY (Adoption_ID)
);
