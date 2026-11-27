# Performance and Indexing

Several indexes were created to improve query performance.

## idx_animal_status

Table:
Animal

Column:
Adoption_Status

Reason:

This column is frequently searched when staff need to find animals available for adoption.

Example:

SELECT *
FROM Animal
WHERE Adoption_Status = 'Available';

---

## idx_treatment_animal

Table:
Medical_Treatment

Column:
Animal_ID

Reason:

Improves joins between Animal and Medical_Treatment.

---

## idx_application_status

Table:
Adoption_Application

Column:
Status

Reason:

Speeds reporting on approved, denied, and pending applications.

---

## idx_assignment_volunteer

Table:
Volunteer_Assignment

Column:
Volunteer_ID

Reason:

Supports volunteer activity reports.

---

## idx_assignment_animal

Table:
Volunteer_Assignment

Column:
Animal_ID

Reason:

Improves animal assignment searches.

---

## EXPLAIN Example

The following command can be used to verify that MySQL uses an index:

EXPLAIN
SELECT *
FROM Animal
WHERE Adoption_Status = 'Available';

The EXPLAIN output should show that MySQL can use the idx_animal_status index rather than scanning the entire table.
