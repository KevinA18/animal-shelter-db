USE animal_shelter_db;

-- =====================================================
-- 1. BASIC SELECT
-- Show all animals currently in the shelter database
-- =====================================================

SELECT *
FROM Animal;

-- =====================================================
-- 2. WHERE FILTERING
-- Which animals are currently available for adoption?
-- =====================================================

SELECT
    Animal_ID,
    Name,
    Species,
    Breed
FROM Animal
WHERE Adoption_Status = 'Available';

-- =====================================================
-- 3. SORTING
-- Which animals have been in the shelter the longest?
-- =====================================================

SELECT
    Animal_ID,
    Name,
    Species,
    Intake_Date
FROM Animal
ORDER BY Intake_Date ASC;

-- =====================================================
-- 4. MULTI-TABLE JOIN
-- What medical treatments has each animal received?
-- =====================================================

SELECT
    a.Name AS Animal_Name,
    mt.Treatment_Date,
    mt.Treatment_Type,
    mt.Medication,
    mt.Cost
FROM Animal a
JOIN Medical_Treatment mt
    ON a.Animal_ID = mt.Animal_ID
ORDER BY a.Name;

-- =====================================================
-- 5. THREE-TABLE JOIN
-- Show adoption applications with animal and adopter information
-- =====================================================

SELECT
    aa.Application_ID,
    an.Name AS Animal_Name,
    ad.First_Name,
    ad.Last_Name,
    aa.Status
FROM Adoption_Application aa
JOIN Animal an
    ON aa.Animal_ID = an.Animal_ID
JOIN Adopter ad
    ON aa.Adopter_ID = ad.Adopter_ID;

-- =====================================================
-- 6. GROUP BY
-- Count the number of animals by species
-- =====================================================

SELECT
    Species,
    COUNT(*) AS Total_Animals
FROM Animal
GROUP BY Species;

-- =====================================================
-- 7. AGGREGATE FUNCTION
-- What is the average cost of a medical treatment?
-- =====================================================

SELECT
    AVG(Cost) AS Average_Treatment_Cost
FROM Medical_Treatment;

-- =====================================================
-- 8. HAVING
-- Which species have more than 3 animals?
-- =====================================================

SELECT
    Species,
    COUNT(*) AS Total_Animals
FROM Animal
GROUP BY Species
HAVING COUNT(*) > 3;

-- =====================================================
-- 9. SUBQUERY
-- Which animals are older than the average animal age?
-- =====================================================

SELECT
    Name,
    Age
FROM Animal
WHERE Age >
(
    SELECT AVG(Age)
    FROM Animal
);

-- =====================================================
-- 10. QUERY INVOLVING NULL
-- Which medical treatments did not require medication?
-- =====================================================

SELECT
    Treatment_ID,
    Treatment_Type,
    Treatment_Date
FROM Medical_Treatment
WHERE Medication IS NULL;

-- =====================================================
-- 11. IMPORTANT BUSINESS QUESTION
-- How many adoption applications were approved or denied?
-- =====================================================

SELECT
    Status,
    COUNT(*) AS Total_Applications
FROM Adoption_Application
GROUP BY Status;
