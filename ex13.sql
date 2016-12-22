ALTER TABLE person ADD COLUMN dead INTEGER;
ALTER TABLE person ADD COLUMN phone_number INTEGER;
ALTER TABLE person ADD COLUMN salary FLOAT;
ALTER TABLE person ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN dob DATETIME;
ALTER TABLE pet ADD COLUMN parent_id INTEGER;
ALTER TABLE person_pet ADD COLUMN purchased DATETIME;

UPDATE person
    SET
        dead = 0,
        phone_number = 1234567,
        salary = 1.2,
        dob = date()
    WHERE id = 0;

UPDATE pet SET dob = date();

UPDATE person_pet SET purchased = date();

INSERT INTO person (
    first_name,
    last_name,
    age,
    height,
    weight,
    phone_number,
    salary,
    dob
) VALUES (
    'Bob',
    'Dobs',
    120,
    57,
    180,
    1231231234,
    2322.40,
    date('1979-02-14')
);

INSERT INTO person (
    first_name,
    last_name,
    age,
    height,
    weight,
    phone_number,
    salary,
    dob
) VALUES (
    'Sally',
    'Dobs',
    99,
    45,
    100,
    1231231234,
    222.0,
    date('1982-02-14')
);

INSERT INTO person (
    first_name,
    last_name,
    age,
    height,
    weight,
    phone_number,
    salary,
    dob
) VALUES (
    'Deborah',
    'Dobs',
    50,
    40,
    60,
    1231231234,
    22.0,
    date('2011-02-14')
);

INSERT INTO pet (
    name,
    breed,
    age,
    dead,
    dob
) VALUES (
    'Cat',
    'cat',
    10,
    0,
    date()
);

INSERT INTO pet (
    name,
    breed,
    age,
    dead,
    dob,
    parent_id
) VALUES (
    'Baby Cat',
    'cat',
    3,
    0,
    date(),
    (SELECT id FROM pet WHERE name = 'Cat')
);

INSERT INTO pet (
    name,
    breed,
    age,
    dead,
    dob,
    parent_id
) VALUES (
    'Sister Cat',
    'cat',
    8,
    0,
    date(),
    (SELECT id FROM pet WHERE name = 'Cat')
);

INSERT INTO pet (
    name,
    breed,
    age,
    dead,
    dob,
    parent_id
) VALUES (
    'Killer robot',
    'robot',
    899,
    1,
    date(),
    0
);
