# Business Rules

## Animal and Medical Treatment

1. An ANIMAL may receive zero, one, or many MEDICAL_TREATMENTS.
2. Every MEDICAL_TREATMENT must belong to exactly one ANIMAL.

## Animal and Volunteer Assignment

3. An ANIMAL may have zero, one, or many VOLUNTEER_ASSIGNMENTS.
4. Every VOLUNTEER_ASSIGNMENT must involve exactly one ANIMAL.

## Volunteer and Volunteer Assignment

5. A VOLUNTEER may participate in zero, one, or many VOLUNTEER_ASSIGNMENTS.
6. Every VOLUNTEER_ASSIGNMENT must involve exactly one VOLUNTEER.

## Animal and Adoption Application

7. An ANIMAL may have zero, one, or many ADOPTION_APPLICATIONS.
8. Every ADOPTION_APPLICATION must reference exactly one ANIMAL.

## Adopter and Adoption Application

9. An ADOPTER may submit zero, one, or many ADOPTION_APPLICATIONS.
10. Every ADOPTION_APPLICATION must belong to exactly one ADOPTER.

## Animal and Adoption

11. An ANIMAL may be adopted at most once.
12. Every ADOPTION must involve exactly one ANIMAL.

## Adopter and Adoption

13. An ADOPTER may complete zero, one, or many ADOPTIONS.
14. Every ADOPTION must belong to exactly one ADOPTER.
