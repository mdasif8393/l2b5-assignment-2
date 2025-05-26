-- create rangers table
create table rangers(
    ranger_id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    region VARCHAR (50) NOT NULL
)

insert into rangers(ranger_id, name, region)
    VALUES 
        (1, 'Alice Green', 'Northern Hills'),
        (2, 'Bob White', 'River Delta'),
        (3, 'Carol King', 'Mountain Range')

select * from rangers

create table species(
    species_id INTEGER PRIMARY KEY,
    common_name VARCHAR(50) NOT NULL,
    scientific_name VARCHAR(50) NOT NULL,
    discovery_date DATE NOT NULL,
    conservation_status VARCHAR(20) NOT NULL
)

insert into species(species_id, common_name, scientific_name, discovery_date, conservation_status)
    VALUES (1, 'Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
        (2, 'Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Vulnerable'),
        (3, 'Red Panda', 'Ailurus fulgens', '1825-01-01', 'Endangered'),
        (4, 'Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered')

select * from species

create table sightings(
    sighting_id INTEGER PRIMARY KEY,
    ranger_id INTEGER NOT NULL REFERENCES rangers(ranger_id),
    species_id INTEGER NOT NULL REFERENCES species(species_id),
    sighting_time TIMESTAMP NOT NULL,
    location VARCHAR(50) NOT NULL,
    notes VARCHAR(100)
)

insert into sightings(sighting_id, species_id, ranger_id, location, sighting_time, notes)
    VALUES
        (1, 1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
        (2, 2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
        (3, 3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
        (4, 1, 2, 'Snowfall Pass', '2024-05-18 18:30:00', NULL)

select * from sightings

-- 1️⃣ Register a new ranger with provided data with name = 'Derek Fox' and region = 'Coastal Plains'
insert into rangers(ranger_id, name, region)
    VALUES (4, 'Derek Fox', 'Coastal Plains');

-- 2️⃣ Count unique species ever sighted.
select count(DISTINCT species_id) as unique_species_count 
    from sightings;

-- 3️⃣ Find all sightings where the location includes "Pass".
SELECT * from sightings where location LIKE '%Pass';

-- 4️⃣ List each ranger's name and their total number of sightings.

select * from 
    rangers as r join sightings as s
        on s.ranger_id = r.ranger_id
