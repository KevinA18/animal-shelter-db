USE animal_shelter_db;

-- =====================================================
-- ANIMALS (15)
-- =====================================================

INSERT INTO Animal
(Name, Species, Breed, Age, Sex, Intake_Date, Adoption_Status)
VALUES
('Buddy','Dog','Golden Retriever',3,'Male','2026-01-10','Available'),
('Luna','Cat','Siamese',2,'Female','2026-01-12','Available'),
('Max','Dog','Labrador',4,'Male','2026-01-15','Adopted'),
('Bella','Dog','Beagle',5,'Female','2026-01-18','Available'),
('Charlie','Cat','Persian',1,'Male','2026-01-20','Available'),
('Lucy','Dog','Poodle',6,'Female','2026-01-22','Available'),
('Rocky','Dog','German Shepherd',7,'Male','2026-01-25','Adopted'),
('Daisy','Cat','Maine Coon',3,'Female','2026-01-28','Available'),
('Milo','Dog','Boxer',2,'Male','2026-02-01','Available'),
('Lily','Cat','Ragdoll',4,'Female','2026-02-03','Available'),
('Cooper','Dog','Bulldog',5,'Male','2026-02-05','Available'),
('Nala','Cat','Bengal',2,'Female','2026-02-08','Available'),
('Bear','Dog','Husky',3,'Male','2026-02-10','Available'),
('Coco','Dog','Shih Tzu',4,'Female','2026-02-12','Available'),
('Oliver','Cat','Domestic Shorthair',5,'Male','2026-02-15','Available');

-- =====================================================
-- VOLUNTEERS (8)
-- =====================================================

INSERT INTO Volunteer
(First_Name, Last_Name, Phone, Email, Availability)
VALUES
('Emma','Johnson','202-555-1111','emma.johnson@email.com','Weekends'),
('Noah','Williams','301-555-1112','noah.williams@email.com','Weekdays'),
('Olivia','Brown','240-555-1113','olivia.brown@email.com','Evenings'),
('Liam','Jones','410-555-1114','liam.jones@email.com','Weekends'),
('Sophia','Garcia','443-555-1115','sophia.garcia@email.com','Weekdays'),
('James','Miller','202-555-1116','james.miller@email.com','Evenings'),
('Ava','Davis','301-555-1117','ava.davis@email.com','Weekends'),
('Benjamin','Wilson','240-555-1118','ben.wilson@email.com','Flexible');

-- =====================================================
-- ADOPTERS (10)
-- =====================================================

INSERT INTO Adopter
(First_Name, Last_Name, Phone, Email, Address, Housing_Type)
VALUES
('John','Smith','301-555-2201','john.smith@email.com',
 '101 Maple St, Silver Spring, MD','House'),

('Sarah','Taylor','202-555-2202','sarah.taylor@email.com',
 '2200 M St NW, Washington, DC','Apartment'),

('Michael','Anderson','240-555-2203','m.anderson@email.com',
 '103 Pine St, College Park, MD','House'),

('Emily','Thomas','410-555-2204','emily.thomas@email.com',
 '104 Cedar St, Bowie, MD','Condo'),

('David','Jackson','443-555-2205','d.jackson@email.com',
 '105 Birch St, Laurel, MD','House'),

('Jessica','White','202-555-2206','j.white@email.com',
 '1700 K St NW, Washington, DC','Apartment'),

('Daniel','Harris','301-555-2207','d.harris@email.com',
 '107 Spruce St, Hyattsville, MD','Townhouse'),

('Ashley','Martin','240-555-2208','a.martin@email.com',
 '108 Willow St, Greenbelt, MD','House'),

('Christopher','Thompson','410-555-2209','c.thompson@email.com',
 '109 Ash St, Annapolis, MD','Condo'),

('Megan','Moore','443-555-2210','megan.moore@email.com',
 '110 Cherry St, Columbia, MD','House');

-- =====================================================
-- MEDICAL TREATMENTS (8)
-- =====================================================

INSERT INTO Medical_Treatment
(Animal_ID, Treatment_Date, Treatment_Type, Medication, Cost)
VALUES
(1,'2026-01-11','Vaccination','Rabies Vaccine',45.00),
(2,'2026-01-13','Checkup',NULL,35.00),
(3,'2026-01-16','Vaccination','Distemper Vaccine',40.00),
(4,'2026-01-19','Surgery','Spay Procedure',180.00),
(5,'2026-01-21','Checkup',NULL,30.00),
(6,'2026-01-23','Vaccination','Rabies Vaccine',45.00),
(7,'2026-01-26','Surgery','Neuter Procedure',180.00),
(8,'2026-01-29','Microchip','Microchip Implant',55.00);

-- =====================================================
-- VOLUNTEER ASSIGNMENTS (6)
-- =====================================================

INSERT INTO Volunteer_Assignment
(Animal_ID, Volunteer_ID, Assignment_Date, Assignment_Type)
VALUES
(1,1,'2026-03-01','Walking'),
(2,2,'2026-03-02','Feeding'),
(3,3,'2026-03-03','Grooming'),
(4,4,'2026-03-04','Walking'),
(5,5,'2026-03-05','Cleaning'),
(6,6,'2026-03-06','Socialization');

-- =====================================================
-- ADOPTION APPLICATIONS (5)
-- =====================================================

INSERT INTO Adoption_Application
(Animal_ID, Adopter_ID, Application_Date, Status, Other_Pets, Application_Notes)
VALUES
(1,1,'2026-03-10','Pending',1,'Owns one dog'),
(3,2,'2026-03-11','Approved',0,'Strong application'),
(7,3,'2026-03-12','Approved',1,'Previous shelter adopter'),
(4,4,'2026-03-13','Denied',0,'Insufficient housing requirements'),
(2,5,'2026-03-14','Pending',1,'Owns two cats');

-- =====================================================
-- ADOPTIONS (3)
-- =====================================================

INSERT INTO Adoption
(Animal_ID, Adopter_ID, Adoption_Date, Adoption_Fee)
VALUES
(3,2,'2026-03-20',100.00),
(7,3,'2026-03-22',100.00),
(10,6,'2026-03-25',75.00);
