USE animal_shelter_db;

CREATE INDEX idx_animal_status
ON Animal(Adoption_Status);

CREATE INDEX idx_treatment_animal
ON Medical_Treatment(Animal_ID);

CREATE INDEX idx_application_status
ON Adoption_Application(Status);

CREATE INDEX idx_assignment_volunteer
ON Volunteer_Assignment(Volunteer_ID);

CREATE INDEX idx_assignment_animal
ON Volunteer_Assignment(Animal_ID);
