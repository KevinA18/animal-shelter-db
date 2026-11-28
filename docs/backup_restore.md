# Backup and Recovery

## Creating a Backup

This project uses MySQL on Ubuntu with administrative access provided through sudo.

To create a complete backup of the database:

```bash
sudo mysqldump animal_shelter_db > animal_shelter_db_backup.sql
```

This command creates a SQL backup file containing:

- Database schema
- Tables
- Constraints
- Data
- Views
- Indexes

---

## Restoring a Backup

To restore the database from a backup file:

```bash
sudo mysql animal_shelter_db < animal_shelter_db_backup.sql
```

This command recreates the tables, constraints, and data stored in the backup file.

---

## Verifying the Restoration

After restoring the database:

```bash
sudo mysql
```

```sql
USE animal_shelter_db;

SHOW TABLES;
```

The following tables should be present:

- Animal
- Medical_Treatment
- Volunteer
- Volunteer_Assignment
- Adopter
- Adoption_Application
- Adoption

To verify the data:

```sql
SELECT COUNT(*) FROM Animal;
SELECT COUNT(*) FROM Volunteer;
SELECT COUNT(*) FROM Adopter;
```

These queries should return the records loaded into the database.

---

## Importan*e of Backups

Backups help protect*the database from:

- Hardware fai*ure
- Accidental deletion
- Data c*rruption
- Human error

Regular backups are an important part of database administration and disaster re*overy planning.
