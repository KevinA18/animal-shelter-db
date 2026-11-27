# Security

The database uses two different user accounts with different levels of access.

## reporting_user

Permissions:

- SELECT

Purpose:

This user is intended for reporting and analytics. The account can view data but cannot create, modify, or delete records.

---

## shelter_staff

Permissions:

- SELECT
- INSERT
- UPDATE

Purpose:

This user is intended for shelter employees who need to view records, add records, and update existing information.

---

## Password Security

Passwords are intentionally omitted from the repository.

The file:

sql/08_security.sql

contains the placeholder:

<SET_PASSWORD_HERE>

Before execution, the database administrator should replace the placeholder with secure passwords appropriate for the deployment environment.

No actual credentials are stored in GitHub.
