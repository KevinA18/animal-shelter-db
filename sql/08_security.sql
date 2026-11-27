USE animal_shelter_db;

-- Replace <SET_PASSWORD_HERE> before execution.
-- Never commit actual passwords to GitHub.

CREATE USER IF NOT EXISTS 'reporting_user'@'localhost'
IDENTIFIED BY '<SET_PASSWORD_HERE>';

CREATE USER IF NOT EXISTS 'shelter_staff'@'localhost'
IDENTIFIED BY '<SET_PASSWORD_HERE>';

GRANT SELECT
ON animal_shelter_db.*
TO 'reporting_user'@'localhost';

GRANT SELECT, INSERT, UPDATE
ON animal_shelter_db.*
TO 'shelter_staff'@'localhost';

FLUSH PRIVILEGES;
