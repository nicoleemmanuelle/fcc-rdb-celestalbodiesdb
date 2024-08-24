--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: another_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.another_table (
    another_table_id integer NOT NULL,
    name character varying(30) NOT NULL,
    another_column character varying(30) NOT NULL
);


ALTER TABLE public.another_table OWNER TO freecodecamp;

--
-- Name: another_table_another_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.another_table_another_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.another_table_another_table_id_seq OWNER TO freecodecamp;

--
-- Name: another_table_another_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.another_table_another_table_id_seq OWNED BY public.another_table.another_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_types integer,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    distance_from_earth numeric,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    description text,
    distance_from_earth numeric,
    is_spherical boolean,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    distance_from_earth numeric,
    age_in_millions_of_years integer NOT NULL
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
-- Name: another_table another_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table ALTER COLUMN another_table_id SET DEFAULT nextval('public.another_table_another_table_id_seq'::regclass);


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
-- Data for Name: another_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.another_table VALUES (1, 'name 1', 'something');
INSERT INTO public.another_table VALUES (2, 'name 2', 'something');
INSERT INTO public.another_table VALUES (3, 'name 3', 'something');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy 1', NULL, NULL, 1);
INSERT INTO public.galaxy VALUES (2, 'galaxy 2', NULL, NULL, 2);
INSERT INTO public.galaxy VALUES (3, 'galaxy 3', NULL, NULL, 3);
INSERT INTO public.galaxy VALUES (4, 'galaxy 4', NULL, NULL, 4);
INSERT INTO public.galaxy VALUES (5, 'galaxy 5', NULL, NULL, 5);
INSERT INTO public.galaxy VALUES (6, 'galaxy 6', NULL, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'moon 1', 1, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (22, 'planet 2', 2, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (23, 'moon 3', 3, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (24, 'moon 4', 4, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (25, 'moon 5', 5, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (26, 'moon 6', 6, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (27, 'moon 7', 13, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (28, 'moon 8', 14, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (29, 'moon 9', 15, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (30, 'moon 10', 16, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (31, 'moon 11', 1, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (32, 'planet 12', 2, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (33, 'moon 13', 3, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (34, 'moon 14', 4, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (35, 'moon 15', 5, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (36, 'moon 16', 6, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (37, 'moon 17', 13, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (38, 'moon 18', 14, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (39, 'moon 19', 15, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (40, 'moon 20', 16, NULL, NULL, NULL, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet 1', 1, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planet 2', 2, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'planet 3', 3, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'planet 4', 4, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'planet 5', 5, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'planet 6', 6, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (13, 'planet 7', 1, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (14, 'planet 8', 2, NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (15, 'planet 9', 3, NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (16, 'planet 10', 4, NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (17, 'planet 11', 5, NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (18, 'planet 12', 6, NULL, NULL, NULL, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star 1', 1, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'star 2', 2, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'star 3', 3, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'star 4', 4, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'star 5', 5, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'star 6', 6, NULL, NULL, 6);


--
-- Name: another_table_another_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.another_table_another_table_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: another_table another_table_another_table_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table
    ADD CONSTRAINT another_table_another_table_id_key UNIQUE (another_table_id);


--
-- Name: another_table another_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.another_table
    ADD CONSTRAINT another_table_pkey PRIMARY KEY (another_table_id);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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

