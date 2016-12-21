DROP TABLE IF EXISTS person;


CREATE TABLE person (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

ALTER TABLE person RENAME TO peoples;

ALTER TABLE peoples ADD COLUMN hatred INTEGER;

ALTER TABLE peoples RENAME TO person;

.schema person

DROP TABLE person;
