# Animal Shelter Management System Requirements

The animal shelter receives animals from the public, animal control agencies, and rescue organizations. Shelter staff track intake information, medical treatments, volunteer activities, adoption applications, and completed adoptions. Volunteers assist with animal care, while prospective adopters submit applications to adopt animals.

## Entities

1. Animal
2. Medical_Treatment
3. Volunteer
4. Volunteer_Assignment
5. Adopter
6. Adoption_Application
7. Adoption

## Key Attributes

- Animal_ID
- Treatment_ID
- Volunteer_ID
- Assignment_ID
- Adopter_ID
- Application_ID
- Adoption_ID

## Relationships

- Animal receives Medical_Treatment
- Animal participates in Volunteer_Assignment
- Volunteer participates in Volunteer_Assignment
- Animal is referenced by Adoption_Application
- Adopter submits Adoption_Application
- Animal is involved in Adoption
- Adopter completes Adoption
