# Normalization Analysis
Side note: I did some normalization before reaching this milestone with copilot smart mode. Removing the veterinarian table was something I did before even starting on workbench and Copilot gave me the idea to make assignments their own table.
## First Normal Form (1NF)

A table is in First Normal Form if:

- Each table has a primary key.
- Each column contains atomic (single) values.
- There are no repeating groups.

The Animal Shelter database satisfies 1NF because:

- Every table contains a primary key.
- Each attribute stores a single value.
- No table contains repeating columns or multi-valued fields.

Examples:

- Animal stores one species, one breed, and one adoption status per record.
- Medical_Treatment stores one treatment per record.
- Volunteer_Assignment stores one assignment per record.

---

## Second Normal Form (2NF)

A table is in Second Normal Form if:

- It is already in 1NF.
- Every non-key attribute depends on the entire primary key.

The Animal Shelter database satisfies 2NF because:

- Each table uses a single-column primary key.
- Every non-key attribute depends on the table's primary key.
- No partial dependencies exist.

Examples:

- In Animal, Species, Breed, and Adoption_Status depend on Animal_ID.
- In Adoption_Application, Status and Application_Notes depend on Application_ID.
- In Volunteer_Assignment, Assignment_Date and Assignment_Type depend on Assignment_ID.

---

## Third Normal Form (3NF)

A table is in Third Normal Form if:

- It is already in 2NF.
- No transitive dependencies exist.

The Animal Shelter database satisfies 3NF because:

- Non-key attributes depend only on their table's primary key.
- Animal information is stored only in the Animal table.
- Volunteer information is stored only in the Volunteer table.
- Adopter information is stored only in the Adopter table.
- Medical treatment details are stored only in the Medical_Treatment table.

Examples:

- Adopter contact information is stored only in Adopter rather than being repeated in Adoption or Adoption_Application.
- Volunteer information is stored only in Volunteer rather than being repeated in Volunteer_Assignment.
- Animal information is stored only in Animal rather than being repeated in Medical_Treatment or Adoption records.

---

## Normalization Changes

During the design process, several changes were made to reduce redundancy and improve data integrity.

### Volunteer and Animal Relationship

Originally, volunteers and animals had a many-to-many relationship.

A volunteer may assist multiple animals, and an animal may be assisted by multiple volunteers.

To normalize the design, the Volunteer_Assignment associative table was created.

Before:

Volunteer ↔ Animal

After:

Volunteer → Volunteer_Assignment ← Animal

This separates assignment information from volunteer and animal information and eliminates duplicate records.

### Medical Treatment Information

Medical treatment information was separated from Animal records.

Before:

Animal
- Treatment_Date
- Treatment_Type
- Medication
- Cost

After:

Medical_Treatment
- Treatment_ID
- Animal_ID
- Treatment_Date
- Treatment_Type
- Medication
- Cost

This allows animals to receive multiple treatments without duplicating animal data.

### Veterinarian Entity Evaluation

An initial design included a separate Veterinarian entity connected to Medical_Treatment.

Initial Design:

Veterinarian
- Veterinarian_ID
- First_Name
- Last_Name
- Clinic_Name

Medical_Treatment
- Treatment_ID
- Veterinarian_ID

After evaluating the project requirements, the Veterinarian entity was removed because the database does not need to maintain detailed veterinarian records.

Instead, the focus of the database remains on shelter operations, including animals, volunteers, adopters, applications, and adoptions.

Removing the Veterinarian entity simplified the schema while preserving the information necessary to meet project requirements.

### Adoption Applications

Adoption application information was separated from Adopter information.

Before:

Adopter
- Name
- Address
- Housing_Type
- Application_Date
- Status

After:

Adopter
- Name
- Address
- Housing_Type

Adoption_Application
- Application_Date
- Status
- Other_Pets
- Application_Notes

This prevents repeated adopter information when multiple applications are submitted.

### Adoptions

Completed adoptions were separated from adoption applications.

Before:

Adoption_Application
- Application_Date
- Status
- Adoption_Date
- Adoption_Fee

After:

Adoption_Application
- Application_Date
- Status

Adoption
- Adoption_Date
- Adoption_Fee

This separates the application process from the final adoption event and reduces null values.

---

## Conclusion

The Animal Shelter database satisfies:

- First Normal Form (1NF)
- Second Normal Form (2NF)
- Third Normal Form (3NF)

The design minimizes data redundancy, prevents update anomalies, and maintains data integrity through the use of primary keys, foreign keys, and associative tables.
