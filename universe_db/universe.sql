--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    number_of_stars_in_billion integer,
    distance_light_years integer,
    age_billions_years numeric(10,2),
    has_black_hole boolean NOT NULL,
    has_spiral_arms boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    surface_temperature_kelvin integer,
    radius_km integer,
    mass_kg numeric(50,10),
    has_atmosphere boolean NOT NULL,
    is_habitable boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    radius_km integer,
    surface_temperature_kelvin integer,
    mass_kg numeric(50,10),
    has_atmosphere boolean NOT NULL,
    has_life boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    age_billions_years integer,
    temperature_kelvin integer,
    luminosity numeric(10,2),
    has_planets boolean NOT NULL,
    has_pulsar boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: universe_component; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe_component (
    universe_component_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text
);


ALTER TABLE public.universe_component OWNER TO freecodecamp;

--
-- Name: universe_component_universe_component_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_component_universe_component_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_component_universe_component_id_seq OWNER TO freecodecamp;

--
-- Name: universe_component_universe_component_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_component_universe_component_id_seq OWNED BY public.universe_component.universe_component_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: universe_component universe_component_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_component ALTER COLUMN universe_component_id SET DEFAULT nextval('public.universe_component_universe_component_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that contains our solar system.', 100, 25000, 13.50, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest spiral galaxy to the milky way.', 1000, 2200000, 10.10, false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'The small spiral galaxy near the andromeda galaxy.', 40, 3000000, 12.00, false, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'A spiral galaxy with a distinctive shape', 30, 29000, 11.50, true, true);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 'A ring galaxy with a distinctive shape', 150, 500000000, 0.30, false, false);
INSERT INTO public.galaxy VALUES (6, 'Tadpole', 'A peculiar galaxy with a long tidal tail', 10, 420000000, 1.40, false, false);
INSERT INTO public.galaxy VALUES (7, 'Kepler-186', 'A red dwarf star system in the Cygnus constellation', 1, 500, 5.50, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earth''s natural satellite', 197, 1737, 73500000000000000000000.0000000000, false, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mar''s innermost and larger moon', -23, 11, 10800000000000000.0000000000, false, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Mar''s smaller and outermost moon', -23, 6, 2400000000000000.0000000000, false, false, 2);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanic moon with sulfur surface', 110, 1821, 89300000000000000000000.0000000000, true, false, 8);
INSERT INTO public.moon VALUES (5, 'Europa', 'Moon with subsurface ocean and potential for life', 102, 1561, 48000000000000000000000.0000000000, true, true, 8);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in the solar system', 110, 2634, 148000000000000000000000.0000000000, true, false, 8);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Moon with heavily created surface and possible surface ocean', 134, 2408, 108000000000000000000000.0000000000, true, false, 8);
INSERT INTO public.moon VALUES (8, 'Himalia', 'Irregularity shaped moon with unknown comosition', 124, 85, 4000000000000000000.0000000000, true, false, 8);
INSERT INTO public.moon VALUES (9, 'Elara', 'Irrigularity shaped moon with unknown composition', 86, 43, 870000000000000000.0000000000, true, false, 8);
INSERT INTO public.moon VALUES (10, 'Lysithea', 'Irrigularity shaped moon with unknown compositiion', 50, 80, 100000000000000000.0000000000, true, false, 8);
INSERT INTO public.moon VALUES (11, 'Ananke', 'Irrigularity shaped moon with unknown composition', 50, 28, 100000000000000000.0000000000, true, false, 8);
INSERT INTO public.moon VALUES (12, 'Titan', 'Saturn''s largest moon and the only moon in the solar system with a  thick atmosphere', 94, 5150, 135000000000000000000000.0000000000, true, true, 7);
INSERT INTO public.moon VALUES (13, 'Encelandus', 'Saturn''s sixth largest moon with active geysers', 75, 252, 108000000000000000000.0000000000, true, true, 7);
INSERT INTO public.moon VALUES (14, 'Mimas', 'Saturn''s smallest and innermost moon', 64, 396, 37500000000000000000.0000000000, false, false, 7);
INSERT INTO public.moon VALUES (15, 'Nereid', 'Neptune''s third largest moon and one of the most eccentric orbits of any moon in the solar system', -201, 340, 31000000000000000000.0000000000, true, false, 5);
INSERT INTO public.moon VALUES (16, 'Proteus', 'Neptune''s second largest moon and one of the most irregularly shaped object in solar system', -201, 420, 44000000000000000000.0000000000, true, false, 5);
INSERT INTO public.moon VALUES (17, 'Miranda', 'Uranus''s smallest and innermost of the five major moons', 60, 236, 65900000000000000000.0000000000, false, false, 6);
INSERT INTO public.moon VALUES (18, 'Titania', 'Uranus''s largest moon and the eight largest moon in the solar system', -195, 1577, 3490000000000000000000.0000000000, true, false, 6);
INSERT INTO public.moon VALUES (19, 'Ariel', 'Uranus''s fourth largest moon with a highly refelective surface', -195, 578, 1350000000000000000000.0000000000, true, false, 6);
INSERT INTO public.moon VALUES (20, 'Oberon', 'Uranus''s outermost and second largest moon with a heavily created surface', -193, 761, 3010000000000000000000.0000000000, true, false, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Blue planet with diverse ecosystems', 6371, 288, 5970000000000000000000000.0000000000, true, true, 3);
INSERT INTO public.planet VALUES (2, 'Mars', 'Red planet with polar ice caps', 3389, 210, 639000000000000000000000.0000000000, true, false, 3);
INSERT INTO public.planet VALUES (3, 'Venus', 'Hottest planet in the solar system', 6051, 737, 4870000000000000000000000.0000000000, true, false, 3);
INSERT INTO public.planet VALUES (4, 'Mercury', 'Smallest planet closest to the sun', 2439, 440, 330000000000000000000000.0000000000, false, false, 3);
INSERT INTO public.planet VALUES (5, 'Neptune', 'Blue planet with windy conditions', 24622, -201, 102000000000000000000000000.0000000000, true, false, 3);
INSERT INTO public.planet VALUES (6, 'Uranus', 'Ice giant with tilted axis of rotation', 25362, -197, 86800000000000000000000000.0000000000, true, false, 3);
INSERT INTO public.planet VALUES (7, 'Saturn', 'Ringed gas giant with many moon', 28232, -138, 568000000000000000000000000.0000000000, true, false, 3);
INSERT INTO public.planet VALUES (8, 'Jupiter', 'Largest planet in the solar system', 69911, -108, 1900000000000000000000000000.0000000000, true, false, 3);
INSERT INTO public.planet VALUES (9, 'Proxima Centuari b', 'Exoplanet in the habitable zone of Proxima Centuari', 11830, -39, 12700000000000000000000000.0000000000, true, true, 4);
INSERT INTO public.planet VALUES (10, 'Alpha Centuary Bb', 'Exoplanet orbiting Alpha Centuari B', 8236, 1500, 11300000000000000000000000.0000000000, true, false, 2);
INSERT INTO public.planet VALUES (11, 'Sirius B', 'White dwarf companion to Sirius A', 5000, 25000, 1020000000000000000000000000000.0000000000, false, false, 5);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', 'First Earth-sized exoplanet discovered in habiatable zone', 6371, -64, 3940000000000000000000000.0000000000, true, true, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Alpha Centuari B', 'The secondary star of the Alpha Centuari star system', 6, 5260, 0.50, true, false, 1);
INSERT INTO public.star VALUES (1, 'Alpha Centuari A', 'The primary star of the Alpha Centuari star system', 6, 5790, 1.52, true, false, 1);
INSERT INTO public.star VALUES (3, 'Sun', 'The star at the center of our solar system', 4, 5778, 1.00, true, false, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centuari', 'The closest star to our solar system', 4, 3042, 0.00, false, false, 1);
INSERT INTO public.star VALUES (5, 'Sirius A', 'The brightest star in the sky', 23, 9940, 26.10, false, false, 1);
INSERT INTO public.star VALUES (6, 'Polaris', 'The north star, also known as the pole star', 4, 5893, 3.97, false, false, 1);
INSERT INTO public.star VALUES (7, 'Kepler-186', 'A red dwarf star in the kepler-186 system', 4, 3590, 0.08, true, false, 7);


--
-- Data for Name: universe_component; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe_component VALUES (2, 'star', 'A massive, luminous ball of plasma held together by gravity.');
INSERT INTO public.universe_component VALUES (3, 'planet', 'A celestial body that orbits a star and is not a star itself.
');
INSERT INTO public.universe_component VALUES (4, 'moon', 'A natural satellite that orbits a planet or other astronomical object.');
INSERT INTO public.universe_component VALUES (1, 'galaxy', 'A large collection of stars, gas and dust held together by gravity.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_component_universe_component_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_component_universe_component_id_seq', 4, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe_component unique_component_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_component
    ADD CONSTRAINT unique_component_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: universe_component universe_component_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe_component
    ADD CONSTRAINT universe_component_pkey PRIMARY KEY (universe_component_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--