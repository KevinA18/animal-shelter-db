# Integrity Rules

## Primary Keys

The following primary keys uniquely identify records:

- Animal(Animal_ID)
- Medical_Treatment(Treatment_ID)
- Volunteer(Volunteer_ID)
- Volunteer_Assignment(Assignment_ID)
- Adopter(Adopter_ID)
- Adoption_Application(Application_ID)
- Adoption(Adoption_ID)

---

## Foreign Keys

### Medical_Treatment

FOREIGN KEY (Animal_ID)
REFERENCES Animal(Animal_ID)

### Volunteer_Assignment

FOREIGN KEY (Animal_ID)
REFERENCES Animal(Animal_ID)

FOREIGN KEY (Volunteer_ID)
REFERENCES Volunteer(Volunteer_ID)

### Adoption_Application

FOREIGN KEY (Animal_ID)
REFERENCES Animal(Animal_ID)

FOREIGN KEY (Adopter_ID)
REFERENCES Adopter(Adopter_ID)

### Adoption

FOREIGN KEY (Animal_ID)
REFERENCES Animal(Animal_ID)

FOREIGN KEY (Adopter_ID)
REFERENCES Adopter(Adopter_ID)

---

## NOT NULL Constraints

### Animal

- Animal_ID
- Name
- Species
- Breed
- Sex
- Intake_Date
- Adoption_Status

### Medical_Treatment

- Treatment_ID
- Animal_ID
- Treatment_Date
- Treatment_Type
- Cost

### Volunteer

- Volunteer_ID
- First_Name
- Last_Name
- Phone
- Email
- Availability

### Volunteer_Assignment

- Assignment_ID
- Animal_ID
- Volunteer_ID
- Assignment_Date
- Assignment_Type

### Adopter

- Adopter_ID
- First_Name
- Last_Name
- Phone
- Email
- Address
- Housing_Type

### Adoption_Application

- Application_ID
- Animal_ID
- Adopter_ID
- Application_Date
- Status
- Other_Pets

### Adoption

- Adoption_ID
- Animal_ID
- Adopter_ID
- Adoption_Date
- Adoption_Fee

---

## UNIQUE Constraints

The following fields should contain unique values:

Volunteer

UNIQUE (Email)

Adopter

UNIQUE (Email)

---

## CHECK Constraints

Animal age cannot be negative:

CHECK (Age >= 0)

Animal sex must contain a valid value:

CHECK (Sex IN ('Male', 'Female'))

Medical treatment cost cannot be negative:

CHECK (Cost >= 0)

Adoption fee cannot be negative:

CHECK (Adoption_Fee >= 0)

Application status must contain a valid value:

CHECK (Status IN ('Pending', 'Approved', 'Denied'))

Other_Pets must be either Yes or No:

CHECK (Other_Pets IN (0,1))

---

## Default Values

Animal adoption status defaults to Available:

DEFAULT 'Available'

for:

Animal.Adoption_Status

Application status defaults to Pending:

DEFAULT 'Pending'

for:

Adoption_Application.Status

Other_Pets defaults to No:

DEFAULT 0

for:

Adoption_Application.Other_Pets

---

## Referential Actions

### Animal

RESTRICT DELETE

An animal cannot be deleted if related records exist in:

- Medical_Treatment
- Volunteer_Assignment
- Adoption_Application
- Adoption

### Volunteer

RESTRICT DELETE

A volunteer cannot be deleted if assignment records exist in Volunteer_Assignment.

### Adopter

RESTRICT DELETE

An adopter cannot be deleted if related records exist in:

- Adoption_Application
- Adoption

### UPDATE Actions

CASCADE UPDATE

Changes to primary keys should automatically update related foreign keys in child tables.
