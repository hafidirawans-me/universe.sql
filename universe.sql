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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    name character varying(10),
    galaxy_id character varying(10) NOT NULL,
    earth_id character varying(10) NOT NULL,
    age_in_millions integer,
    earth_number integer
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20),
    galaxy_types character varying(20) NOT NULL,
    galaxy_id character varying(10) NOT NULL,
    galaxy_num integer,
    distance integer,
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    description text,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth integer,
    moon_id character varying(10) NOT NULL,
    planet_id character varying(10) NOT NULL,
    name character varying(10),
    moon_num integer,
    number_moon numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    has_life boolean,
    is_spherical boolean,
    age_in_millions integer,
    distance_from_earth integer,
    name character varying(20),
    planet_id character varying(5) NOT NULL,
    star_id character varying(5) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions integer,
    distance_from_earth integer,
    star_id character varying(5) NOT NULL,
    galaxy_id character varying(10),
    name character varying(10)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES ('earth 1', 'GA001', 'E0001', 1200, 1);
INSERT INTO public.earth VALUES ('earth 2', 'GA002', 'E0002', 1000, 2);
INSERT INTO public.earth VALUES ('earth 3', 'GA003', 'E0003', 2000, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Skyrax', 'GT001', 'GA001', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Termux', 'GT002', 'GA002', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Holan', 'GT003', 'GA003', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Spritux', 'GT004', 'GA004', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Polanski', 'GT005', 'GA005', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Planetux', 'GT006', 'GA006', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Silatrux', 'GT007', 'GA007', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Pilatrux', 'GT008', 'GA008', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Skatrax', 'GT009', 'GA009', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Pkatrax', 'GT010', 'GA010', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Pkatrax twins', 'GT011', 'GA011', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Little Pilatrux', 'GT012', 'GA012', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Little Skatrux', 'GT013', 'GA013', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Lovrax', 'GT014', 'GA014', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Novrax', 'GT015', 'GA015', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('PilaNovrax', 'GT016', 'GA016', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Little PilaNovrax', 'GT017', 'GA017', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Little Novrax', 'GT018', 'GA018', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Nowratrax', 'GT019', 'GA019', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES ('Powratrax', 'GT020', 'GA020', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('never big', false, true, 30000, 'M0001', 'P0001', 'benet 02', 1, NULL);
INSERT INTO public.moon VALUES ('hmm', false, true, 10000, 'M0002', 'P0002', 'benet 04', 2, NULL);
INSERT INTO public.moon VALUES ('tittt', false, true, 14000, 'M0003', 'P0003', 'monlu', 3, NULL);
INSERT INTO public.moon VALUES ('tittt', false, true, 24000, 'M0004', 'P0004', 'poll', 4, NULL);
INSERT INTO public.moon VALUES ('woo', false, true, 34000, 'M0005', 'P0005', 'wepoll', 5, NULL);
INSERT INTO public.moon VALUES ('moo', false, true, 30000, 'M0006', 'P0006', 'nevers', 6, NULL);
INSERT INTO public.moon VALUES ('big', false, true, 39000, 'M0007', 'P0007', 'big nevers', 7, NULL);
INSERT INTO public.moon VALUES ('qwwerty', false, true, 49000, 'M0008', 'P0008', 'rivers', 8, NULL);
INSERT INTO public.moon VALUES ('qwerty', false, true, 40000, 'M0009', 'P0009', 'toms', 9, NULL);
INSERT INTO public.moon VALUES ('tohh', false, true, 20000, 'M0010', 'P0010', 'litt toms', 10, NULL);
INSERT INTO public.moon VALUES ('beep', false, true, 31000, 'M0011', 'P0011', 'pom toms', 11, NULL);
INSERT INTO public.moon VALUES ('dark', false, true, 11000, 'M0012', 'P0012', 'poms', 12, NULL);
INSERT INTO public.moon VALUES ('big dark', false, true, 41000, 'M0013', 'P0013', 'drock', 13, NULL);
INSERT INTO public.moon VALUES ('big dark again?', false, true, 21000, 'M0014', 'P0014', 'pilodrock', 14, NULL);
INSERT INTO public.moon VALUES ('wow', false, true, 10000, 'M0015', 'P0015', 'wdrock', 15, NULL);
INSERT INTO public.moon VALUES ('woww', false, true, 13200, 'M0016', 'P0016', 'posk', 16, NULL);
INSERT INTO public.moon VALUES ('wowww', false, true, 14200, 'M0017', 'P0017', 'wowposk', 17, NULL);
INSERT INTO public.moon VALUES ('owww', false, true, 24200, 'M0018', 'P0018', 'nowposk', 18, NULL);
INSERT INTO public.moon VALUES ('mmine', false, true, 14200, 'M0019', 'P0019', 'mines', 19, NULL);
INSERT INTO public.moon VALUES ('yurs', false, true, 4200, 'M0020', 'P0020', 'youres', 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (true, true, 4500, 450000, 'skytax', 'P0001', 'ST001');
INSERT INTO public.planet VALUES (true, true, 4000, 400000, 'tkytax', 'P0002', 'ST002');
INSERT INTO public.planet VALUES (true, true, 8000, 300000, 'pontax', 'P0003', 'ST003');
INSERT INTO public.planet VALUES (true, true, 300, 500000, 'stylirux', 'P0004', 'ST004');
INSERT INTO public.planet VALUES (true, true, 1000, 550000, 'ponlirux', 'P0005', 'ST005');
INSERT INTO public.planet VALUES (true, true, 1500, 500000, 'sagitarius', 'P0006', 'ST006');
INSERT INTO public.planet VALUES (false, true, 1200, 120000, 'pilo', 'P0007', 'ST007');
INSERT INTO public.planet VALUES (false, true, 2200, 100000, 'nilo', 'P0008', 'ST008');
INSERT INTO public.planet VALUES (false, true, 2200, 200000, 'globral', 'P0009', 'ST009');
INSERT INTO public.planet VALUES (true, true, 1200, 220000, 'little globral', 'P0010', 'ST010');
INSERT INTO public.planet VALUES (true, true, 1000, 120000, 'skylinux', 'P0011', 'ST011');
INSERT INTO public.planet VALUES (true, true, 4000, 420000, 'plato', 'P0012', 'ST012');
INSERT INTO public.planet VALUES (true, true, 4000, 220000, 'floris', 'P0013', 'ST013');
INSERT INTO public.planet VALUES (true, true, 2000, 220000, 'moris', 'P0014', 'ST014');
INSERT INTO public.planet VALUES (true, true, 1000, 120000, 'little moris', 'P0015', 'ST015');
INSERT INTO public.planet VALUES (true, true, 400, 100000, 'little floris', 'P0016', 'ST016');
INSERT INTO public.planet VALUES (true, true, 1400, 160000, 'wolfram', 'P0017', 'ST017');
INSERT INTO public.planet VALUES (true, true, 1400, 100000, 'wolfram twins', 'P0018', 'ST018');
INSERT INTO public.planet VALUES (true, true, 1400, 50000, 'little wolfram', 'P0019', 'ST019');
INSERT INTO public.planet VALUES (true, true, 1000, 30000, 'little plato', 'P0020', 'ST020');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('that star is shining', true, true, 450000, 5000, 'ST001', 'GA001', NULL);
INSERT INTO public.star VALUES ('glamourous star', false, true, 400000, 45000, 'ST002', 'GA002', NULL);
INSERT INTO public.star VALUES ('star is beautiful', false, true, 300000, 40000, 'ST003', 'GA003', NULL);
INSERT INTO public.star VALUES ('is it big?', false, true, 350000, 30000, 'ST004', 'GA004', NULL);
INSERT INTO public.star VALUES ('is it shining?', false, true, 300000, 35000, 'ST005', 'GA005', NULL);
INSERT INTO public.star VALUES ('is it shining?part 2', false, true, 350000, 30000, 'ST006', 'GA006', NULL);
INSERT INTO public.star VALUES ('yeah', false, true, 120000, 45000, 'ST007', 'GA007', NULL);
INSERT INTO public.star VALUES ('yeah its coming', false, true, 120000, 45000, 'ST008', 'GA008', NULL);
INSERT INTO public.star VALUES ('yeah its coming again', false, true, 110000, 35000, 'ST009', 'GA009', NULL);
INSERT INTO public.star VALUES ('its coming again', false, true, 310000, 15000, 'ST010', 'GA010', NULL);
INSERT INTO public.star VALUES ('coming again', false, true, 300000, 14000, 'ST011', 'GA011', NULL);
INSERT INTO public.star VALUES ('open your eyes', false, true, 100000, 4000, 'ST012', 'GA012', NULL);
INSERT INTO public.star VALUES ('my eyes', false, true, 130000, 9000, 'ST013', 'GA013', NULL);
INSERT INTO public.star VALUES ('look at that star', false, true, 130000, 91000, 'ST014', 'GA014', NULL);
INSERT INTO public.star VALUES ('look at that star', false, true, 130000, 90000, 'ST015', 'GA015', NULL);
INSERT INTO public.star VALUES ('I can reach it', false, true, 130000, 75000, 'ST016', 'GA016', NULL);
INSERT INTO public.star VALUES ('I have been reached it', false, true, 100000, 45000, 'ST017', 'GA017', NULL);
INSERT INTO public.star VALUES ('you must to reach that star', false, true, 100000, 25000, 'ST018', 'GA018', NULL);
INSERT INTO public.star VALUES ('its mine', false, true, 100000, 15000, 'ST019', 'GA019', NULL);
INSERT INTO public.star VALUES ('thats yours', false, true, 100000, 15000, 'ST020', 'GA020', NULL);


--
-- Name: earth earth_earth_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_earth_id_key UNIQUE (earth_id);


--
-- Name: earth earth_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: moon moon_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_key UNIQUE (star_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

