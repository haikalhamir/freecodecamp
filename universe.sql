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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age_in_million_of_years integer,
    skibidi integer,
    skibidi2 integer,
    abuya integer DEFAULT 0 NOT NULL,
    abuya2 integer DEFAULT 0 NOT NULL,
    unique_id integer
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
    name character varying(30),
    planet_id integer,
    skibidi integer,
    skibidi2 integer,
    abuya integer DEFAULT 0 NOT NULL,
    abuya2 integer DEFAULT 0 NOT NULL,
    unique_id integer
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
-- Name: others; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.others (
    abuya integer DEFAULT 0 NOT NULL,
    abuya2 integer DEFAULT 0 NOT NULL,
    abuya3 integer DEFAULT 0 NOT NULL,
    others_id integer NOT NULL,
    name character varying(30)
);


ALTER TABLE public.others OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    distance_from_earth numeric(10,2),
    has_life boolean,
    number_of_moon integer,
    star_id integer,
    abuya integer DEFAULT 0 NOT NULL,
    abuya2 integer DEFAULT 0 NOT NULL,
    unique_id integer
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
    name character varying(30),
    is_spherical boolean,
    galaxy_id integer,
    skibidi integer,
    abuya integer DEFAULT 0 NOT NULL,
    abuya2 integer DEFAULT 0 NOT NULL,
    unique_id integer
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirpool', NULL, NULL, NULL, 0, 0, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messiah 81', NULL, NULL, NULL, 0, 0, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 3, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 3, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 3, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 3, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 6, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (10, 'Triton', 5, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (11, 'Enceladus', 6, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (12, 'Miranda', 7, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (13, 'Titania', 7, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (14, 'Oberon', 7, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (15, 'Iapetus', 6, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (16, 'Hyperion', 6, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (17, 'Dione', 6, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (18, 'Mimas', 6, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (19, 'Ganymedes', 8, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (20, 'Lysithea', 2, NULL, NULL, 0, 0, NULL);
INSERT INTO public.moon VALUES (21, 'S/2003 J 12', 3, NULL, NULL, 0, 0, NULL);


--
-- Data for Name: others; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.others VALUES (1, 0, 0, 1, NULL);
INSERT INTO public.others VALUES (2, 0, 0, 2, NULL);
INSERT INTO public.others VALUES (3, 0, 0, 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Mars', 'skibidi', 10.00, true, 1, 1, 0, 0, NULL);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'skibidi', 10.00, true, 1, 1, 0, 0, NULL);
INSERT INTO public.planet VALUES (5, 'Neptune', 'skibidi', 10.00, true, 1, 1, 0, 0, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 'skibidi', 10.00, true, 1, 1, 0, 0, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 'skibidi', 10.00, true, 1, 1, 0, 0, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima b', 'skibidi', 10.00, true, 1, 2, 0, 0, NULL);
INSERT INTO public.planet VALUES (10, 'Betelgeuse b', 'skibidi', 10.00, true, 1, 3, 0, 0, NULL);
INSERT INTO public.planet VALUES (11, 'Sirius b', 'skibidi', 10.00, true, 1, 2, 0, 0, NULL);
INSERT INTO public.planet VALUES (12, 'Sirius c', 'skibidi', 10.00, true, 1, 2, 0, 0, NULL);
INSERT INTO public.planet VALUES (1, 'Earth', 'skibidi', 10.00, true, 1, 1, 0, 0, NULL);
INSERT INTO public.planet VALUES (4, 'Mercury', 'skibidi', 10.00, true, 1, 1, 0, 0, NULL);
INSERT INTO public.planet VALUES (8, 'Venus', 'skibidi', 10.00, true, 1, 1, 0, 0, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 1, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', NULL, 1, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (3, 'Betelgeuese', NULL, 1, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', NULL, 1, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (5, 'Vega', NULL, 2, NULL, 0, 0, NULL);
INSERT INTO public.star VALUES (6, 'Antari', NULL, 3, NULL, 0, 0, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_id_key UNIQUE (unique_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_id_key UNIQUE (unique_id);


--
-- Name: others others_pk; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.others
    ADD CONSTRAINT others_pk PRIMARY KEY (others_id);


--
-- Name: others others_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.others
    ADD CONSTRAINT others_unique_id_key UNIQUE (others_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_id_key UNIQUE (unique_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_id_key UNIQUE (unique_id);


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

