-- create rangers table
create table rangers(
    ranger_id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    region VARCHAR (50) NOT NULL
)

create table species(
    species_id INTEGER PRIMARY KEY,
    common_name VARCHAR(50) NOT NULL,
    scientific_name VARCHAR(50) NOT NULL,
    discovery_date DATE NOT NULL,
    conservation_status VARCHAR(20) NOT NULL
)

create table sightings(
    sighting_id INTEGER PRIMARY KEY,
    ranger_id INTEGER REFERENCES rangers(ranger_id),
    species_id INTEGER REFERENCES species(species_id),
    sighting_time DATE NOT NULL,
    location VARCHAR(50) NOT NULL,
    notes VARCHAR(100),
)