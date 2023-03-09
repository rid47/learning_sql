-- Database: universe

-- Primary key
ALTER TABLE galaxy ADD COLUMN galaxy_id SERIAL PRIMARY KEY;
ALTER TABLE moon ADD COLUMN moon_id SERIAL PRIMARY KEY;
ALTER TABLE planet ADD COLUMN planet_id SERIAL PRIMARY KEY;
ALTER TABLE star ADD COLUMN star_id SERIAL PRIMARY KEY;


-- name column
ALTER TABLE galaxy ADD COLUMN name VARCHAR (100);
ALTER TABLE moon ADD COLUMN name VARCHAR (100);
ALTER TABLE planet ADD COLUMN name VARCHAR (100);
ALTER TABLE star ADD COLUMN name VARCHAR (100);

-- description column
ALTER TABLE galaxy ADD COLUMN description TEXT;
ALTER TABLE moon ADD COLUMN description TEXT;
ALTER TABLE planet ADD COLUMN description TEXT;
ALTER TABLE star ADD COLUMN description TEXT;

-- INT data type for two column which is not PK or FK
ALTER TABLE galaxy ADD COLUMN age__in_millions_of_years INT;
ALTER TABLE galaxy RENAME COLUMN age__in_millions_of_years TO age_in_millions_of_years;
ALTER TABLE galaxy ADD COLUMN distance_from_earch INT;
ALTER TABLE galaxy ADD COLUMN has_black_hole BOOLEAN NOT NULL;
ALTER TABLE galaxy ADD COLUMN has_life BOOLEAN NOT NULL;
ALTER TABLE galaxy ADD COLUMN mass NUMERIC(10,2);
ALTER TABLE galaxy RENAME COLUMN distance_from_earch TO distance_from_earth

-- making name not null
ALTER TABLE galaxy ALTER COLUMN name SET NOT NULL;
ALTER TABLE moon ALTER COLUMN name SET NOT NULL;
ALTER TABLE planet ALTER COLUMN name SET NOT NULL;
ALTER TABLE star ALTER COLUMN name SET NOT NULL;

-- making foregn key relations

ALTER TABLE star ADD COLUMN galaxy_id INT NOT NULL REFERENCES galaxy(galaxy_id);
ALTER TABLE planet ADD COLUMN star_id INT NOT NULL REFERENCES star(star_id);
ALTER TABLE moon ADD COLUMN planet_id INT NOT NULL REFERENCES planet(planet_id);

-- alter galaxy table
ALTER TABLE galaxy RENAME COLUMN age_in_millions_of_years TO num_stars
ALTER TABLE galaxy RENAME COLUMN num_stars TO number_of_stars
ALTER TABLE galaxy RENAME COLUMN distance_from_earth TO distance_light_years 

-- alter star table
ALTER TABLE STAR ADD COLUMN age_years INT;
ALTER TABLE star ADD COLUMN  temperature_kelvin INTEGER
ALTER TABLE star ADD COLUMN   luminosity NUMERIC(10, 2);
ALTER TABLE star ADD COLUMN    has_planets BOOLEAN;
ALTER TABLE star ADD COLUMN    has_pulsar BOOLEAN;


ALTER TABLE galaxy RENAME COLUMN mass to age_billions_years

