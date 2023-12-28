--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
    name character varying(20) NOT NULL,
    description text NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(20,1),
    is_spherical boolean,
    has_life boolean,
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galazy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galazy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galazy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galazy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galazy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(20,1),
    is_spherical boolean,
    has_life boolean,
    size integer,
    planet_id integer
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
-- Name: new_table_name_planet_with_two_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.new_table_name_planet_with_two_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.new_table_name_planet_with_two_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(20,1),
    is_spherical boolean,
    has_life boolean,
    size integer,
    star_id integer
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
-- Name: planet_with_two_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_with_two_star (
    name character varying(20) NOT NULL,
    description text NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(20,1),
    is_spherical boolean,
    has_life boolean,
    size integer,
    star_id integer,
    planet_with_two_star_id integer NOT NULL
);


ALTER TABLE public.planet_with_two_star OWNER TO freecodecamp;

--
-- Name: planet_with_two_star_planet_with_two_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_with_two_star_planet_with_two_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_with_two_star_planet_with_two_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_with_two_star_planet_with_two_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_with_two_star_planet_with_two_star_id_seq OWNED BY public.planet_with_two_star.planet_with_two_star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years numeric(20,1),
    is_spherical boolean,
    has_life boolean,
    size integer,
    galaxy_id integer
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galazy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_with_two_star planet_with_two_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_with_two_star ALTER COLUMN planet_with_two_star_id SET DEFAULT nextval('public.planet_with_two_star_planet_with_two_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The home galaxy of Earth and the Solar System', 0, 13500.0, true, true, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The nearest major galaxy to the Milky Way and the largest in the Local Group', 3, 10000.0, true, true, 220000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'The third-largest member of the Local Group and a spiral galaxy', 3, 14000.0, false, true, 60000);
INSERT INTO public.galaxy VALUES (4, 'Magellanic Clouds', 'Two irregular dwarf galaxies that orbit the Milky Way', 0, 13000.0, false, true, 14000);
INSERT INTO public.galaxy VALUES (5, 'Virgo Cluster', 'A large cluster of about 1500 galaxies in the constellation of Virgo', 50, 12000.0, true, true, 15000000);
INSERT INTO public.galaxy VALUES (6, 'Coma Cluster', 'A dense cluster of about 1000 galaxies in the constellation of Coma Berenices', 100, 11000.0, true, true, 20000000);
INSERT INTO public.galaxy VALUES (7, 'Sombrero', 'A spiral galaxy with a prominent dust lane and a bright halo', 28, 9000.0, false, false, 50000);
INSERT INTO public.galaxy VALUES (8, 'Whirlpool', 'A spiral galaxy with a smaller companion galaxy and a grand design structure', 23, 8000.0, false, false, 60000);
INSERT INTO public.galaxy VALUES (9, 'Pinwheel', 'A face-on spiral galaxy with bright regions of star formation', 21, 7000.0, false, false, 170000);
INSERT INTO public.galaxy VALUES (10, 'Centaurus A', 'An elliptical galaxy with a prominent dust lane and a powerful radio source', 11, 6000.0, false, false, 60000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'The only natural satellite of Earth and the fifth-largest moon in the Solar System', 0, 4500.0, true, false, 0, 3);
INSERT INTO public.moon VALUES (2, 'Io', 'The innermost and most volcanically active of the four Galilean moons of Jupiter', 628, 4500.0, true, false, 0, 4);
INSERT INTO public.moon VALUES (3, 'Europa', 'The smallest of the four Galilean moons of Jupiter and a potential abode for life', 628, 4500.0, true, true, 0, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'The largest and most massive moon in the Solar System and the only moon known to have a magnetic field', 628, 4500.0, true, false, 0, 4);
INSERT INTO public.moon VALUES (5, 'Callisto', 'The second-largest of the four Galilean moons of Jupiter and the most heavily cratered object in the Solar System', 628, 4500.0, true, false, 0, 4);
INSERT INTO public.moon VALUES (6, 'Titan', 'The largest moon of Saturn and the only moon in the Solar System with a substantial atmosphere', 1196, 4500.0, true, false, 0, 16);
INSERT INTO public.moon VALUES (7, 'Enceladus', 'A small icy moon of Saturn and one of the most geologically active worlds in the Solar System', 1196, 4500.0, true, false, 0, 16);
INSERT INTO public.moon VALUES (8, 'Triton', 'The largest and most unusual moon of Neptune and the only large moon in the Solar System with a retrograde orbit', 4300, 4500.0, true, false, 0, 8);
INSERT INTO public.moon VALUES (9, 'Charon', 'The largest of the five known moons of Pluto and the most massive known binary companion in the Solar System', 5900, 4500.0, true, false, 0, 9);
INSERT INTO public.moon VALUES (10, 'Phobos', 'The larger and innermost of the two natural satellites of Mars and the closest moon to its parent planet in the Solar System', 401, 4500.0, false, false, 0, 4);
INSERT INTO public.moon VALUES (12, 'Luna', 'A frozen moon with a thick ice crust and a subsurface ocean', 2000, 4000.0, true, true, 0, 6);
INSERT INTO public.moon VALUES (13, 'Raxus', 'A rocky moon with a thin atmosphere and a high radiation level', 3000, 2000.0, false, false, 0, 7);
INSERT INTO public.moon VALUES (14, 'Zara', 'A volcanic moon with a sulfur-rich surface and a dense cloud cover', 4000, 3000.0, true, false, 0, 8);
INSERT INTO public.moon VALUES (15, 'Orion', 'A forested moon with a rich biodiversity and a low gravity', 5000, 5000.0, true, true, 0, 15);
INSERT INTO public.moon VALUES (16, 'Nova', 'A metallic moon with a strong magnetic field and a fast rotation', 6000, 1000.0, true, false, 0, 9);
INSERT INTO public.moon VALUES (17, 'Tara', 'A gas giant moon with a thick atmosphere and a stormy weather', 7000, 6000.0, true, false, 1, 9);
INSERT INTO public.moon VALUES (18, 'Kira', 'A coral moon with a shallow ocean and a colorful reef system', 8000, 7000.0, true, true, 1, 9);
INSERT INTO public.moon VALUES (19, 'Draco', 'A dragon-shaped moon with a rocky core and a dusty tail', 9000, 8000.0, false, false, 1, 10);
INSERT INTO public.moon VALUES (20, 'Lila', 'A flower-shaped moon with a soft surface and a fragrant scent', 10000, 9000.0, false, true, 1, 10);
INSERT INTO public.moon VALUES (21, 'Nero', 'A dark moon with a hidden interior and a mysterious origin', 11000, 10000.0, true, false, 1, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest and innermost planet in the Solar System', 77, 4500.0, true, false, 0, 9);
INSERT INTO public.planet VALUES (2, 'Venus', 'The second planet from the Sun and the hottest planet in the Solar System', 261, 4500.0, true, false, 1, 8);
INSERT INTO public.planet VALUES (3, 'Earth', 'The third planet from the Sun and the only known planet to harbor life', 0, 4500.0, true, true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The fourth planet from the Sun and the second-smallest planet in the Solar System', 401, 4500.0, true, false, 0, 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The fifth planet from the Sun and the largest planet in the Solar System', 890, 4500.0, true, false, 318, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'The sixth planet from the Sun and the second-largest planet in the Solar System', 1650, 4500.0, true, false, 95, 5);
INSERT INTO public.planet VALUES (7, 'Uranus', 'The seventh planet from the Sun and the third-largest planet in the Solar System', 3000, 4500.0, true, false, 15, 5);
INSERT INTO public.planet VALUES (8, 'Neptune', 'The eighth and farthest-known planet from the Sun in the Solar System', 4350, 4500.0, true, false, 17, 5);
INSERT INTO public.planet VALUES (9, 'Pluto', 'A dwarf planet in the Kuiper belt, a ring of bodies beyond Neptune', 5900, 4500.0, true, false, 0, 5);
INSERT INTO public.planet VALUES (10, 'Eris', 'The most massive and second-largest known dwarf planet in the Solar System', 10100, 4500.0, true, false, 0, 5);
INSERT INTO public.planet VALUES (15, 'Zarcon', 'A desert planet with a thin atmosphere and a rich mineral deposit', 5000, 3000.0, true, false, 1, 5);
INSERT INTO public.planet VALUES (16, 'Nimrod', 'A lush planet with a diverse biosphere and a high level of oxygen', 1000, 5000.0, true, true, 1, 5);


--
-- Data for Name: planet_with_two_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_with_two_star VALUES ('Kepler-16b', 'A circumbinary planet that orbits a pair of stars in the constellation Cygnus', 200, 4500.0, true, false, 1, NULL, 1);
INSERT INTO public.planet_with_two_star VALUES ('Kepler-34b', 'A circumbinary planet that orbits a pair of stars in the constellation Lyra', 5000, 3500.0, true, false, 0, NULL, 2);
INSERT INTO public.planet_with_two_star VALUES ('Kepler-35b', 'A circumbinary planet that orbits a pair of stars in the constellation Cygnus', 5400, 4000.0, true, false, 0, NULL, 3);
INSERT INTO public.planet_with_two_star VALUES ('Kepler-38b', 'A circumbinary planet that orbits a pair of stars in the constellation Cygnus', 4200, 3000.0, true, false, 0, NULL, 4);
INSERT INTO public.planet_with_two_star VALUES ('Kepler-47b', 'A circumbinary planet that orbits a pair of stars in the constellation Cygnus', 4900, 2000.0, true, false, 0, NULL, 5);
INSERT INTO public.planet_with_two_star VALUES ('Kepler-47c', 'A circumbinary planet that orbits a pair of stars in the constellation Cygnus', 4900, 2000.0, true, false, 0, NULL, 6);
INSERT INTO public.planet_with_two_star VALUES ('Kepler-64b', 'A circumbinary planet that orbits a pair of stars in the constellation Draco', 5000, 2500.0, true, false, 1, NULL, 7);
INSERT INTO public.planet_with_two_star VALUES ('Kepler-413b', 'A circumbinary planet that orbits a pair of stars in the constellation Cygnus', 2700, 1500.0, true, false, 0, NULL, 8);
INSERT INTO public.planet_with_two_star VALUES ('Kepler-453b', 'A circumbinary planet that orbits a pair of stars in the constellation Lyra', 1400, 6000.0, true, false, 0, NULL, 9);
INSERT INTO public.planet_with_two_star VALUES ('Kepler-1647b', 'A circumbinary planet that orbits a pair of stars in the constellation Cygnus', 3700, 4500.0, true, false, 2, NULL, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'The star at the center of the Solar System and the source of most of the energy on Earth', 0, 4600.0, true, false, 1, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'The brightest star in the night sky and a binary star system consisting of Sirius A and Sirius B', 9, 300.0, true, false, 2, 10);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'A red supergiant star in the constellation of Orion and one of the largest and most luminous stars visible to the naked eye', 643, 10000.0, true, false, 887, 6);
INSERT INTO public.star VALUES (4, 'Polaris', 'The North Star and the closest Cepheid variable star to Earth', 434, 70.0, true, false, 5, 6);
INSERT INTO public.star VALUES (5, 'Rigel', 'The brightest star in the constellation of Orion and a blue supergiant star', 860, 8000.0, true, false, 79, 6);
INSERT INTO public.star VALUES (6, 'Vega', 'The fifth-brightest star in the night sky and the second-brightest star in the northern celestial hemisphere', 25, 455.0, true, false, 2, 8);
INSERT INTO public.star VALUES (7, 'Antares', 'The brightest star in the constellation of Scorpius and a red supergiant star', 550, 12000.0, true, false, 883, 6);
INSERT INTO public.star VALUES (8, 'Canopus', 'The second-brightest star in the night sky and a yellow-white supergiant star', 310, 12000.0, true, false, 65, 6);
INSERT INTO public.star VALUES (9, 'Arcturus', 'The brightest star in the constellation of Boötes and the fourth-brightest star in the night sky', 37, 7000.0, true, false, 25, 7);
INSERT INTO public.star VALUES (10, 'Alpha Centauri', 'The closest star system to the Solar System and a triple star system consisting of Alpha Centauri A, Alpha Centauri B, and Proxima Centauri', 4, 5000.0, true, false, 1, 2);


--
-- Name: galaxy_galazy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galazy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: new_table_name_planet_with_two_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.new_table_name_planet_with_two_star_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: planet_with_two_star_planet_with_two_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_with_two_star_planet_with_two_star_id_seq', 10, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 18, true);


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
-- Name: planet_with_two_star planet_with_two_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_with_two_star
    ADD CONSTRAINT planet_with_two_star_pkey PRIMARY KEY (planet_with_two_star_id);


--
-- Name: planet_with_two_star planet_with_two_star_planet_with_two_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_with_two_star
    ADD CONSTRAINT planet_with_two_star_planet_with_two_star_id_key UNIQUE (planet_with_two_star_id);


--
-- Name: planet_with_two_star planet_with_two_star_planet_with_two_star_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_with_two_star
    ADD CONSTRAINT planet_with_two_star_planet_with_two_star_id_key1 UNIQUE (planet_with_two_star_id);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

