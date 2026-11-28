# Performance

## Overview

Several indexes were added to improve database performance.

Indexes help MySQL locate records more efficiently and reduce the need for full table scans when searching tables or performing JOIN operations.

---

## Implemented Indexes

### idx_animal_status

Table: Animal

Column: Adoption_Status

Purpose:

Improves searches for animals based on adoption status, such as finding animals currently available for adoption.

---

### idx_treatment_animal

Table: Medical_Treatment

Column: Animal_ID

Purpose:

Improves joins between Animal and Medical_Treatment.

---

### idx_application_status

Table: Adoption_Application

Column: Status

Purpose:

Improves reporting on pending, approved, and denied applications.

---

### idx_assignment_volunteer

Table: Volunteer_Assignment

Column: Volunteer_ID

Purpose:

Improves volunteer activity and assignment lookups.

---

### idx_assignment_animal

Table: Volunteer_Assignment

Column: Animal_ID

Purpose:

Improves searches for assignments associated with specific animals.

---

## Query Analysis with EXPLAIN

MySQL provides the EXPLAIN statement to examine how queries are executed.

Example:

```sql
EXPLAIN
SELECT *
FROM Animal
WHERE Adoption_Status = 'Available';
```

EXPLAIN can be used to verify that MySQL uses available indexes rather than performing a full table scan.

---

## Performance Benefits

The implemented indexes improve performance for:

- Animal adoption searches
- Medical treatment lookups
- Adoption application reporting
- Volunteer assignment reporting
- JOIN operations between related tables

As the database grows, indexes help maintain efficient query performance and reduce execution time.
