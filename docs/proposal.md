# Project Title

Animal Shelter Intake & Adoption Management System

## Problem Description

Animal shelters manage a constant flow of incoming animals, medical needs, volunteer activity, and adoption processes. Many shelters rely on spreadsheets or paper forms, which leads to lost information, inconsistent records, and difficulty tracking an animal’s history. Without a centralized database, shelters struggle to monitor capacity, ensure proper care, and match animals with suitable adopters.

## Purpose of the Database

The database will organize and track animals entering the shelter, their medical treatments, adoption applications, volunteer assignments, and final adoption outcomes. This system will help shelter staff improve efficiency, reduce errors, and ensure animals receive proper care while increasing successful adoptions.

## Intended Users

Shelter intake staff

Veterinarians and medical technicians

Adoption coordinators

Volunteers

Shelter managers and administrators

## Major Data That Must Be Stored

Animal profiles (species, breed, age, medical status, behavior notes)

Intake records (date, reason for intake, location found)

Medical treatments (vaccinations, surgeries, checkups)

Adoption applications (applicant info, approval status)

Adopter information (name, contact, home details)

Volunteer information (name, role, availability)

Adoption records (animal, adopter, date adopted)

## Questions the Database Should Answer

1 Which animals are currently available for adoption?

2 Which animals have been in the shelter the longest?

3 What medical treatments has each animal received?

4 How many adoption applications were approved or denied this month?

5 Which volunteers logged the most hours or handled the most animals?

## Initial Business Rules

1 Each animal must have exactly one intake record.

2 An animal may receive zero or many medical treatments.

3 An adoption application must be linked to exactly one potential adopter.

4 An animal can only be adopted once and must be marked “unavailable” afterward.

5 A volunteer may be assigned to multiple animals, and an animal may have multiple volunteers assisting.
