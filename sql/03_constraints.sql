USE animal_shelter_db;

ALTER TABLE Volunteer
ADD CONSTRAINT uq_volunteer_email
UNIQUE (Email);

ALTER TABLE Adopter
ADD CONSTRAINT uq_adopter_email
UNIQUE (Email);

ALTER TABLE Medical_Treatment
ADD CONSTRAINT chk_cost
CHECK (Cost >= 0);

ALTER TABLE Animal
ADD CONSTRAINT chk_age
CHECK (Age >= 0);

ALTER TABLE Animal
ADD CONSTRAINT chk_sex
CHECK (Sex IN ('Male', 'Female'));

ALTER TABLE Adoption
ADD CONSTRAINT chk_adoption_fee
CHECK (Adoption_Fee >= 0);

ALTER TABLE Adoption_Application
ADD CONSTRAINT chk_application_status
CHECK (Status IN ('Pending', 'Approved', 'Denied'));

ALTER TABLE Adoption_Application
ADD CONSTRAINT chk_other_pets
CHECK (Other_Pets IN (0,1));

ALTER TABLE Medical_Treatment
ADD CONSTRAINT fk_treatment_animal
FOREIGN KEY (Animal_ID)
REFERENCES Animal(Animal_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE Volunteer_Assignment
ADD CONSTRAINT fk_assignment_animal
FOREIGN KEY (Animal_ID)
REFERENCES Animal(Animal_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE Volunteer_Assignment
ADD CONSTRAINT fk_assignment_volunteer
FOREIGN KEY (Volunteer_ID)
REFERENCES Volunteer(Volunteer_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE Adoption_Application
ADD CONSTRAINT fk_application_animal
FOREIGN KEY (Animal_ID)
REFERENCES Animal(Animal_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE Adoption_Application
ADD CONSTRAINT fk_application_adopter
FOREIGN KEY (Adopter_ID)
REFERENCES Adopter(Adopter_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE Adoption
ADD CONSTRAINT fk_adoption_animal
FOREIGN KEY (Animal_ID)
REFERENCES Animal(Animal_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE Adoption
ADD CONSTRAINT fk_adoption_adopter
FOREIGN KEY (Adopter_ID)
REFERENCES Adopter(Adopter_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;
