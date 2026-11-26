# Logical Schema
## Animal
Animal ( Animal_ID PK, Name, Species, Breed, Age, Sex, Intake_Date, Adoption_Status )

## Medical_Treatment
Medical_Treatment ( Treatment_ID PK, Animal_ID FK, Treatment_Date, Treatment_Type, Medication, Cost )

## Volunteer
Volunteer ( Volunteer_ID PK, First_Name, Last_Name, Phone, Email, Availability )

## Volunteer_Assignment
Volunteer_Assignment ( Assignment_ID PK, Animal_ID FK, Volunteer_ID FK, Assignment_Date, Assignment_Type )

## Adopter
Adopter ( Adopter_ID PK, First_Name, Last_Name, Phone, Email, Address, Housing_Type )

## Adoption_Application
Adoption_Application ( Application_ID PK, Animal_ID FK, Adopter_ID FK, Application_Date, Status, Other_Pets, Application_Notes )

## Adoption
Adoption ( Adoption_ID PK, Animal_ID FK, Adopter_ID FK, Adoption_Date, Adoption_Fee )
