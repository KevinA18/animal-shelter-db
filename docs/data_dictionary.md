# Data Dictionary

## Animal

| Column | Type | Key | NULL | Description |
| --- | --- | --- | --- | --- |
| Animal_ID | INT | PK | No | Unique animal identifier |
| Name | VARCHAR(50) | | No | Animal name |
| Species | VARCHAR(30) | | No | Animal species |
| Breed | VARCHAR(30) | | No | Animal breed |
| Age | INT | | No | Animal age |
| Sex | VARCHAR(30) | | No | Animal sex |
| Intake_Date | DATE | | No | Date animal entered shelter |
| Adoption_Status | VARCHAR(30) | | No | Current adoption status |

## Medical_Treatment

| Column | Type | Key | NULL | Description |
| --- | --- | --- | --- | --- |
| Treatment_ID | INT | PK | No | Unique treatment identifier |
| Animal_ID | INT | FK | No | Animal receiving treatment |
| Treatment_Date | DATE | | No | Date treatment was performed |
| Treatment_Type | VARCHAR(45) | | No | Type of treatment |
| Medication | VARCHAR(45) | | Yes | Medication administered, if applicable |
| Cost | DECIMAL(8,2) | | No | Cost of treatment |

## Volunteer

| Column | Type | Key | NULL | Description |
| --- | --- | --- | --- | --- |
| Volunteer_ID | INT | PK | No | Unique volunteer identifier |
| First_Name | VARCHAR(45) | | No | Volunteer first name |
| Last_Name | VARCHAR(45) | | No | Volunteer last name |
| Phone | VARCHAR(45) | | No | Volunteer phone number |
| Email | VARCHAR(45) | | No | Volunteer email address |
| Availability | VARCHAR(45) | | No | Volunteer availability schedule |

## Volunteer_Assignment

| Column | Type | Key | NULL | Description |
| --- | --- | --- | --- | --- |
| Assignment_ID | INT | PK | No | Unique assignment identifier |
| Animal_ID | INT | FK | No | Assigned animal |
| Volunteer_ID | INT | FK | No | Assigned volunteer |
| Assignment_Date | DATE | | No | Date of assignment |
| Assignment_Type | VARCHAR(45) | | No | Type of volunteer activity |

## Adopter

| Column | Type | Key | NULL | Description |
| --- | --- | --- | --- | --- |
| Adopter_ID | INT | PK | No | Unique adopter identifier |
| First_Name | VARCHAR(45) | | No | Adopter first name |
| Last_Name | VARCHAR(45) | | No | Adopter last name |
| Phone | VARCHAR(45) | | No | Adopter phone number |
| Email | VARCHAR(45) | | No | Adopter email address |
| Address | VARCHAR(100) | | No | Adopter address |
| Housing_Type | VARCHAR(45) | | No | Type of residence |

## Adoption_Application

| Column | Type | Key | NULL | Description |
| --- | --- | --- | --- | --- |
| Application_ID | INT | PK | No | Unique application identifier |
| Animal_ID | INT | FK | No | Animal being applied for |
| Adopter_ID | INT | FK | No | Applicant submitting the application |
| Application_Date | DATE | | No | Date application submitted |
| Status | VARCHAR(45) | | No | Application status |
| Other_Pets | TINYINT(1) | | No | Indicates whether applicant owns other pets |
| Application_Notes | VARCHAR(200) | | Yes | Notes regarding the application |

## Adoption

| Column | Type | Key | NULL | Description |
| --- | --- | --- | --- | --- |
| Adoption_ID | INT | PK | No | Unique adoption identifier |
| Animal_ID | INT | FK | No | Adopted animal |
| Adopter_ID | INT | FK | No | Adopter who adopted the animal |
| Adoption_Date | DATE | | No | Date adoption was finalized |
| Adoption_Fee | DECIMAL(8,2) | | No | Adoption fee paid |
