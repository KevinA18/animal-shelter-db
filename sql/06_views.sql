USE animal_shelter_db;

-- Animals currently available for adoption

CREATE VIEW Available_Animals AS
SELECT
    Animal_ID,
    Name,
    Species,
    Breed,
    Age,
    Sex
FROM Animal
WHERE Adoption_Status = 'Available';

-- Adoption application summary

CREATE VIEW Application_Summary AS
SELECT
    aa.Application_ID,
    an.Name AS Animal_Name,
    ad.First_Name,
    ad.Last_Name,
    aa.Status,
    aa.Application_Date
FROM Adoption_Application aa
JOIN Animal an
    ON aa.Animal_ID = an.Animal_ID
JOIN Adopter ad
    ON aa.Adopter_ID = ad.Adopter_ID;
