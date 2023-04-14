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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    description text,
    distance_from_earth numeric,
    name character varying(50) NOT NULL,
    name_id text,
    star_id integer
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
    age_in_millions_of_years integer NOT NULL,
    is_not_a_moon_but_a_space_station character varying(50),
    description text,
    distance_from_earth numeric,
    name character varying(50) NOT NULL,
    galaxy_id integer,
    destroid boolean DEFAULT false,
    planet_id integer,
    name_id text
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
    galaxy_id integer,
    name character varying(50) NOT NULL,
    planet_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    description text,
    distance_from_earth numeric,
    destroid boolean DEFAULT false,
    star_id integer,
    name_id text
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
    age_in_millions_of_years integer NOT NULL,
    description text,
    distance_from_earth numeric,
    name character varying(50) NOT NULL,
    galaxy_id integer,
    name_id text
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
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


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
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, '1', NULL);
INSERT INTO public.fifth_table VALUES (2, '2', NULL);
INSERT INTO public.fifth_table VALUES (3, '3', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, NULL, 'galaxy_far_far_away', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, NULL, 'G2', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, NULL, 'G3', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, NULL, 'G4', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, NULL, 'G5', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, NULL, 'G6', NULL, NULL);
INSERT INTO public.galaxy VALUES (7, NULL, NULL, NULL, 'G7', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, NULL, NULL, NULL, 'M1', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (2, 2, NULL, NULL, NULL, 'M2', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (3, 3, NULL, NULL, NULL, 'M3', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (4, 3, NULL, NULL, NULL, 'M4', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (5, 3, NULL, NULL, NULL, 'M5', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (6, 3, NULL, NULL, NULL, 'M6', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (7, 4, NULL, NULL, NULL, 'M6', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (8, 4, NULL, NULL, NULL, 'M7', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (9, 9, NULL, NULL, NULL, 'M8', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (11, 11, NULL, NULL, NULL, 'M9', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (12, 10, NULL, NULL, NULL, 'M10', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (13, 1011, NULL, NULL, NULL, 'M11', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (14, 10211, NULL, NULL, NULL, 'M12', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (15, 91, NULL, NULL, NULL, 'M13', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (16, 191, NULL, NULL, NULL, 'M14', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (17, 1291, NULL, NULL, NULL, 'M15', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (18, 221, NULL, NULL, NULL, 'M16', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (19, 221, NULL, NULL, NULL, 'M17', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (20, 221, NULL, NULL, NULL, 'M18', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (21, 221, NULL, NULL, NULL, 'M19', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (22, 2221, NULL, NULL, NULL, 'M20', NULL, false, 1, NULL);
INSERT INTO public.moon VALUES (23, 42, NULL, NULL, NULL, 'M21', NULL, false, 1, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, 'P1', 1, 3, NULL, NULL, false, 4, NULL);
INSERT INTO public.planet VALUES (NULL, 'P2', 3, 2, NULL, NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (NULL, 'P3', 4, 2, NULL, NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (NULL, 'P4', 5, 2, NULL, NULL, false, 2, NULL);
INSERT INTO public.planet VALUES (NULL, 'P5', 6, 1, NULL, NULL, false, 3, NULL);
INSERT INTO public.planet VALUES (NULL, 'P6', 7, 6, NULL, NULL, false, 3, NULL);
INSERT INTO public.planet VALUES (NULL, 'P7', 8, 4, NULL, NULL, false, 3, NULL);
INSERT INTO public.planet VALUES (NULL, 'P8', 9, 1, NULL, NULL, false, 3, NULL);
INSERT INTO public.planet VALUES (NULL, 'P9', 10, 9, NULL, NULL, false, 3, NULL);
INSERT INTO public.planet VALUES (NULL, 'P10', 11, 9, NULL, NULL, false, 5, NULL);
INSERT INTO public.planet VALUES (NULL, 'P11', 12, 111, NULL, NULL, false, 6, NULL);
INSERT INTO public.planet VALUES (NULL, 'P12', 13, 211, NULL, NULL, false, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 2, NULL, NULL, 'S1', 1, NULL);
INSERT INTO public.star VALUES (3, 1, NULL, NULL, 'S2', 2, NULL);
INSERT INTO public.star VALUES (4, 5, NULL, NULL, 'S3', 1, NULL);
INSERT INTO public.star VALUES (5, 8, NULL, NULL, 'S4', 4, NULL);
INSERT INTO public.star VALUES (6, 3, NULL, NULL, 'S5', 4, NULL);
INSERT INTO public.star VALUES (7, 3, NULL, NULL, 'S6', 4, NULL);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: fifth_table fifth_table_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_description_key UNIQUE (description);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


--
-- Name: galaxy galaxy_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_id_key UNIQUE (name_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_is_not_a_moon_but_a_space_station_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_is_not_a_moon_but_a_space_station_key UNIQUE (is_not_a_moon_but_a_space_station);


--
-- Name: moon moon_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_id_key UNIQUE (name_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_id_key UNIQUE (name_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_id_key UNIQUE (name_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

