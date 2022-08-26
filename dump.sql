--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-08-26 13:25:02

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

--
-- TOC entry 3465 (class 1262 OID 24764)
-- Name: TOKUMO_AI_DB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "TOKUMO_AI_DB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Vietnamese_Vietnam.1258';


ALTER DATABASE "TOKUMO_AI_DB" OWNER TO postgres;

\connect "TOKUMO_AI_DB"

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
-- TOC entry 209 (class 1259 OID 24765)
-- Name: account_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_group (
    id integer NOT NULL,
    account_id character varying(64) NOT NULL,
    group_id character varying(64) NOT NULL,
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.account_group OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24768)
-- Name: account_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_group_id_seq OWNER TO postgres;

--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 210
-- Name: account_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_group_id_seq OWNED BY public.account_group.id;


--
-- TOC entry 229 (class 1259 OID 32991)
-- Name: account_group_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_group_master (
    id integer NOT NULL,
    class_id character varying,
    account_id character varying,
    insert_at timestamp without time zone NOT NULL,
    update_at timestamp without time zone NOT NULL
);


ALTER TABLE public.account_group_master OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 32990)
-- Name: account_group_master_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_group_master_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_group_master_id_seq OWNER TO postgres;

--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 228
-- Name: account_group_master_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_group_master_id_seq OWNED BY public.account_group_master.id;


--
-- TOC entry 211 (class 1259 OID 24769)
-- Name: account_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_master (
    id character varying(64) NOT NULL,
    username character varying(64) NOT NULL,
    password character varying(64) NOT NULL,
    email character varying(64) NOT NULL,
    name character varying(64) NOT NULL,
    entrance_year_term smallint,
    year_term smallint,
    class_id character varying(64) NOT NULL,
    insert_at timestamp without time zone,
    update_at timestamp without time zone,
    group_id character varying(128) NOT NULL,
    school_id character varying(128)
);


ALTER TABLE public.account_master OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 24772)
-- Name: chapter_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chapter_master (
    id character varying(64) NOT NULL,
    chapter_name character varying(64),
    course_id character varying(64) NOT NULL,
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.chapter_master OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 24775)
-- Name: class_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.class_master (
    id character varying(64) NOT NULL,
    school_id character varying(64) NOT NULL,
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.class_master OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24778)
-- Name: course_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_master (
    id character varying(64) NOT NULL,
    course_name character varying(64),
    subject_id character varying(64) NOT NULL,
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.course_master OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 24781)
-- Name: group_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_master (
    id character varying(64) NOT NULL,
    school_id character varying(64) NOT NULL,
    year_term smallint,
    school_year_id character varying(64),
    subject_id character varying(64) NOT NULL,
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.group_master OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24784)
-- Name: knowledge_map; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knowledge_map (
    id integer NOT NULL,
    parent_term_id character varying(64),
    child_term_id character varying(64),
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.knowledge_map OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 24787)
-- Name: knowledge_map_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.knowledge_map_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knowledge_map_id_seq OWNER TO postgres;

--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 217
-- Name: knowledge_map_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.knowledge_map_id_seq OWNED BY public.knowledge_map.id;


--
-- TOC entry 218 (class 1259 OID 24788)
-- Name: learn_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.learn_history (
    id integer NOT NULL,
    account_id character varying(64),
    question_id character varying(64),
    correct smallint,
    hint smallint,
    commentary smallint,
    lecture_type character varying(64),
    response_time bigint,
    answer_datetime timestamp without time zone,
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.learn_history OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 24791)
-- Name: learn_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.learn_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.learn_history_id_seq OWNER TO postgres;

--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 219
-- Name: learn_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.learn_history_id_seq OWNED BY public.learn_history.id;


--
-- TOC entry 220 (class 1259 OID 24792)
-- Name: problem_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.problem_master (
    id character varying(64) NOT NULL,
    problem_grade character varying(64),
    problem_count smallint,
    estimate_time bigint,
    problem_column_type smallint,
    problem_type smallint,
    parent_problem_id character varying(64),
    term_id character varying(64),
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.problem_master OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 32951)
-- Name: problem_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.problem_status (
    id bigint NOT NULL,
    account_id character varying(128) NOT NULL,
    problem_id character varying(128) NOT NULL,
    status character varying NOT NULL,
    insert_at timestamp without time zone NOT NULL,
    update_at timestamp without time zone NOT NULL
);


ALTER TABLE public.problem_status OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 24795)
-- Name: question_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question_master (
    id character varying(64) NOT NULL,
    question_grade character varying(64),
    question_type character varying(64),
    question_selectable_count bigint,
    problem_id character varying(64),
    unanswered_question_flag smallint NOT NULL,
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.question_master OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24798)
-- Name: school_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.school_master (
    id character varying(64) NOT NULL,
    prefecture character varying(64),
    school_type smallint,
    insert_at timestamp without time zone NOT NULL,
    update_at timestamp without time zone NOT NULL
);


ALTER TABLE public.school_master OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 24801)
-- Name: section_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.section_master (
    id character varying(64) NOT NULL,
    section_name character varying(64),
    chapter_id character varying(64) NOT NULL,
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.section_master OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24804)
-- Name: subject_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject_master (
    id character varying(64) NOT NULL,
    subject_name character varying(64),
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.subject_master OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 24807)
-- Name: term_master; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.term_master (
    id character varying(64) NOT NULL,
    term_name character varying(64),
    section_id character varying(64) NOT NULL,
    insert_at timestamp without time zone,
    update_at timestamp without time zone
);


ALTER TABLE public.term_master OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 32975)
-- Name: term_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.term_status (
    id character varying NOT NULL,
    account_id character varying NOT NULL,
    term_id character varying NOT NULL,
    status character varying NOT NULL,
    insert_time timestamp without time zone NOT NULL,
    update_time timestamp without time zone
);


ALTER TABLE public.term_status OWNER TO postgres;

--
-- TOC entry 3231 (class 2604 OID 24810)
-- Name: account_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_group ALTER COLUMN id SET DEFAULT nextval('public.account_group_id_seq'::regclass);


--
-- TOC entry 3234 (class 2604 OID 32994)
-- Name: account_group_master id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_group_master ALTER COLUMN id SET DEFAULT nextval('public.account_group_master_id_seq'::regclass);


--
-- TOC entry 3232 (class 2604 OID 24811)
-- Name: knowledge_map id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledge_map ALTER COLUMN id SET DEFAULT nextval('public.knowledge_map_id_seq'::regclass);


--
-- TOC entry 3233 (class 2604 OID 24812)
-- Name: learn_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learn_history ALTER COLUMN id SET DEFAULT nextval('public.learn_history_id_seq'::regclass);


--
-- TOC entry 3439 (class 0 OID 24765)
-- Dependencies: 209
-- Data for Name: account_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_group (id, account_id, group_id, insert_at, update_at) FROM stdin;
1	1001000	A1-CH-01	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
2	1001001	A1-CH-01	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
3	1001002	A1-CH-01	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
4	1001003	A1-CH-02	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
5	1001004	A1-CH-02	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
\.


--
-- TOC entry 3459 (class 0 OID 32991)
-- Dependencies: 229
-- Data for Name: account_group_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_group_master (id, class_id, account_id, insert_at, update_at) FROM stdin;
\.


--
-- TOC entry 3441 (class 0 OID 24769)
-- Dependencies: 211
-- Data for Name: account_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_master (id, username, password, email, name, entrance_year_term, year_term, class_id, insert_at, update_at, group_id, school_id) FROM stdin;
1001000	test_user0	123456	test_user0@gmail.com	test0	2020	2022	A1	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	A1-CH-01	111111
1001001	test_user1	123456	test_user1@gmail.com	test1	2020	2022	A1	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	A1-CH-01	111111
1001002	test_user2	123456	test_user2@gmail.com	test2	2020	2022	A1	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	A1-CH-02	111111
1001003	test_user3	123456	test_user3@gmail.com	test3	2020	2022	A1	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	A1-CH-02	111111
1001004	test_user4	123456	test_user4@gmail.com	test4	2020	2022	A1	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	A1-CH-02	111112
string	string	string	string	string	2020	2022	A1	2022-08-12 18:44:23.500827	2022-08-12 18:44:23.500827	A1-CH-03	111112
test1	string	string	string	string	1	1	A1	2022-08-17 15:00:58.304911	2022-08-17 15:00:58.304911	A1-CH-02	111113
test2	string	string	string	string	1	1	A1	2022-08-17 15:06:40.737216	2022-08-17 15:06:40.737216	A1-CH-02	111113
string2	string	string	string	string	1	1011	A1	2022-08-24 22:15:27.887405	2022-08-24 22:15:27.887405	A1-CH-01	111111
acc1	string	string	string	string	2	11	A1	2022-08-25 17:34:32.964938	2022-08-25 17:34:32.964938	A1-CH-01	111111
\.


--
-- TOC entry 3442 (class 0 OID 24772)
-- Dependencies: 212
-- Data for Name: chapter_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chapter_master (id, chapter_name, course_id, insert_at, update_at) FROM stdin;
CH-01-01	chapter 1	CH-01	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-02	chapter 2	CH-01	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-03	chapter 3	CH-01	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-04	chapter 4	CH-01	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
string3	string	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
string7	string	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
string8	string	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
string9	string	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
string10	string	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
chap6	string	CH-01	2022-08-25 18:16:58.29	2022-08-25 18:16:58.29
chap7	string	CH-01	2022-08-25 18:16:58.29	2022-08-25 18:16:58.29
chap1	string	CH-01	2022-08-25 18:25:55.825	2022-08-25 18:25:55.825
\.


--
-- TOC entry 3443 (class 0 OID 24775)
-- Dependencies: 213
-- Data for Name: class_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.class_master (id, school_id, insert_at, update_at) FROM stdin;
A1	111111	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
A2	111111	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
A3	111111	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
A4	111111	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
A5	111111	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
A6	111111	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
\.


--
-- TOC entry 3444 (class 0 OID 24778)
-- Dependencies: 214
-- Data for Name: course_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.course_master (id, course_name, subject_id, insert_at, update_at) FROM stdin;
CH-01	Chemistry 1	CH	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-02	Chemistry 2	CH	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
PH-01	Physics 1	PH	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
PH-02	Physics 2	PH	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
s1	string	CH	\N	\N
s2	string	s1	\N	\N
string	CH	CH	\N	\N
co3	string	CH	\N	\N
string5	s	CH	\N	\N
string6	string	CH	\N	\N
string7	string	CH	\N	\N
string8	string	CH	\N	\N
string10	string	CH	\N	\N
string11	string	KH	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
string21	string	KH	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
string22	string	KH	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
string23	string	KH	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
string24	string	KH	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
co6	string	CH	2022-08-25 18:16:58.29	2022-08-25 18:16:58.29
co7	string	CH	2022-08-25 18:16:58.29	2022-08-25 18:16:58.29
cou1	string	CH	2022-08-25 18:25:55.825	2022-08-25 18:25:55.825
\.


--
-- TOC entry 3445 (class 0 OID 24781)
-- Dependencies: 215
-- Data for Name: group_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_master (id, school_id, year_term, school_year_id, subject_id, insert_at, update_at) FROM stdin;
A1-CH-01	111111	2022	2022-10	CH	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
A1-CH-02	111111	2022	2022-10	CH	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
A1-CH-03	111111	2022	2022-10	CH	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
A1-CH-04	111111	2022	2022-10	CH	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
\.


--
-- TOC entry 3446 (class 0 OID 24784)
-- Dependencies: 216
-- Data for Name: knowledge_map; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knowledge_map (id, parent_term_id, child_term_id, insert_at, update_at) FROM stdin;
1	CH-01-010101	CH-01-010102	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
2	CH-01-010102	CH-01-010103	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
3	CH-01-010103	CH-01-010104	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
4	CH-01-010104	CH-01-010105	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
5	CH-01-010105	CH-01-010106	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
\.


--
-- TOC entry 3448 (class 0 OID 24788)
-- Dependencies: 218
-- Data for Name: learn_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.learn_history (id, account_id, question_id, correct, hint, commentary, lecture_type, response_time, answer_datetime, insert_at, update_at) FROM stdin;
1	1001000	CH-01-010101-001-001	1	0	0	lecture-ai	180	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
2	1001000	CH-01-010101-002-001	1	1	0	lecture-ai	210	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
3	1001000	CH-01-010101-003-001	0	0	1	lecture-ai	150	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
4	1001000	CH-01-010101-004-001	1	1	1	lecture-ai	200	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
7	1001002	CH-01-010101-003-001	1	0	1	lecture-assign	150	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
8	1001002	CH-01-010101-004-001	1	1	1	lecture-assign	200	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
5	1001002	CH-01-010202-001-001	1	0	0	lecture-assign	180	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
6	1001002	CH-01-010202-004-001	1	1	0	lecture-assign	210	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
\.


--
-- TOC entry 3450 (class 0 OID 24792)
-- Dependencies: 220
-- Data for Name: problem_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.problem_master (id, problem_grade, problem_count, estimate_time, problem_column_type, problem_type, parent_problem_id, term_id, insert_at, update_at) FROM stdin;
CH-01-010101-001	H	1	180	1	1	\N	CH-01-010101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010101-002	H	1	210	1	1	\N	CH-01-010101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010101-003	H	1	150	1	1	\N	CH-01-010101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010101-004	H	1	200	1	1	\N	CH-01-010101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010204-002	H	4	200	1	1	\N	CH-01-010204	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010202-001	H	1	200	1	1	\N	CH-01-010202	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010202-002	H	1	200	1	1	\N	CH-01-010202	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010202-003	H	1	200	1	1	\N	CH-01-010202	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010202-004	H	1	200	1	1	\N	CH-01-010202	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
pro6	string	1	1	0	0	CH-01-010101-001	CH-01-010101	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
problem7	string	1	1	1	1	CH-01-010101-001	CH-01-010101	2022-08-25 18:16:58.29	2022-08-25 18:16:58.29
problem1	string	1	1	1	1	CH-01-010101-001	CH-01-010101	2022-08-25 18:25:55.825	2022-08-25 18:25:55.825
\.


--
-- TOC entry 3456 (class 0 OID 32951)
-- Dependencies: 226
-- Data for Name: problem_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.problem_status (id, account_id, problem_id, status, insert_at, update_at) FROM stdin;
\.


--
-- TOC entry 3451 (class 0 OID 24795)
-- Dependencies: 221
-- Data for Name: question_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question_master (id, question_grade, question_type, question_selectable_count, problem_id, unanswered_question_flag, insert_at, update_at) FROM stdin;
CH-01-010101-003-001	H	multiple choice	4	CH-01-010101-003	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010101-004-001	H	multiple choice	4	CH-01-010101-004	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010204-002-001	H	multiple choice	4	CH-01-010204-002	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010204-002-002	H	multiple choice	4	CH-01-010204-002	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010202-001-001	H	multiple choice	4	CH-01-010202-001	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010202-003-001	H	multiple choice	4	CH-01-010202-003	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010101-001-001	L	multiple choice	4	CH-01-010101-001	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010202-002-001	L	multiple choice	4	CH-01-010202-002	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010202-004-001	M	multiple choice	4	CH-01-010202-004	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010204-002-003	L	multiple choice	4	CH-01-010204-002	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010204-002-004	L	multiple choice	4	CH-01-010204-002	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010101-002-001	M	multiple choice	4	CH-01-010101-001	0	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
question1	string	string	1	CH-01-010101-001	1	2022-08-25 18:25:55.825	2022-08-25 18:25:55.825
\.


--
-- TOC entry 3452 (class 0 OID 24798)
-- Dependencies: 222
-- Data for Name: school_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.school_master (id, prefecture, school_type, insert_at, update_at) FROM stdin;
111111	Tokyo	1	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
111112	Osaka	2	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
111114	Osaka	2	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
111113	Tokyo	1	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
\.


--
-- TOC entry 3453 (class 0 OID 24801)
-- Dependencies: 223
-- Data for Name: section_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.section_master (id, section_name, chapter_id, insert_at, update_at) FROM stdin;
CH-01-0101	section 1	CH-01-01	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-0102	section 2	CH-01-01	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-0103	section 3	CH-01-01	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-0104	section 4	CH-01-01	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
string4	string	CH-01-01	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
string5	string	CH-01-01	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
string6	string	CH-01-01	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
sec7	string	CH-01-01	2022-08-25 18:16:58.29	2022-08-25 18:16:58.29
sec1	string	CH-01-01	2022-08-25 18:25:55.825	2022-08-25 18:25:55.825
\.


--
-- TOC entry 3454 (class 0 OID 24804)
-- Dependencies: 224
-- Data for Name: subject_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subject_master (id, subject_name, insert_at, update_at) FROM stdin;
CH	Chemistry	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
PH	Physics	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
MA	Mathematics	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
EN	English	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
s1	string	\N	\N
s2	string	\N	\N
string	string	\N	\N
NH	string	\N	\N
string3	string	\N	\N
NH3	string	\N	\N
KH	string	\N	\N
KH1	string	\N	\N
NH4	string	\N	\N
NH6	string	\N	\N
KH9	string	\N	\N
KH10	string	\N	\N
KH11	string	\N	\N
MH	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
MH1	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
MH12	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
MH13	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
MH14	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
MH15	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
MH16	string	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
LH6	string	2022-08-25 18:16:58.29	2022-08-25 18:16:58.29
LH7	string	2022-08-25 18:16:58.29	2022-08-25 18:16:58.29
sub1	string	2022-08-25 18:25:55.825	2022-08-25 18:25:55.825
\.


--
-- TOC entry 3455 (class 0 OID 24807)
-- Dependencies: 225
-- Data for Name: term_master; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.term_master (id, term_name, section_id, insert_at, update_at) FROM stdin;
CH-01-010101	term 1	CH-01-0101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010102	term 2	CH-01-0101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010103	term 3	CH-01-0101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010104	term 4	CH-01-0101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010204	term 3	CH-01-0101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010202	term 4	CH-01-0101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010105	term 5	CH-01-0101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
CH-01-010106	term 6	CH-01-0101	2022-08-03 10:49:07.820041	2022-08-03 10:49:07.820041
t4	string	CH-01-0101	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
t5	string	CH-01-0101	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
t6	string	CH-01-0101	2022-08-25 17:52:46.036	2022-08-25 17:52:46.036
te7	string	CH-01-0101	2022-08-25 18:16:58.29	2022-08-25 18:16:58.29
term1	string	CH-01-0101	2022-08-25 18:25:55.825	2022-08-25 18:25:55.825
\.


--
-- TOC entry 3457 (class 0 OID 32975)
-- Dependencies: 227
-- Data for Name: term_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.term_status (id, account_id, term_id, status, insert_time, update_time) FROM stdin;
\.


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 210
-- Name: account_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_group_id_seq', 5, true);


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 228
-- Name: account_group_master_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_group_master_id_seq', 1, false);


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 217
-- Name: knowledge_map_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knowledge_map_id_seq', 5, true);


--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 219
-- Name: learn_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.learn_history_id_seq', 8, true);


--
-- TOC entry 3269 (class 2606 OID 33000)
-- Name: account_group_master account_group_master_insert_at_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_group_master
    ADD CONSTRAINT account_group_master_insert_at_key UNIQUE (insert_at);


--
-- TOC entry 3271 (class 2606 OID 32998)
-- Name: account_group_master account_group_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_group_master
    ADD CONSTRAINT account_group_master_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 33002)
-- Name: account_group_master account_group_master_update_at_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_group_master
    ADD CONSTRAINT account_group_master_update_at_key UNIQUE (update_at);


--
-- TOC entry 3236 (class 2606 OID 24814)
-- Name: account_group account_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_group
    ADD CONSTRAINT account_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3239 (class 2606 OID 24816)
-- Name: account_master account_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_master
    ADD CONSTRAINT account_pkey PRIMARY KEY (id);


--
-- TOC entry 3241 (class 2606 OID 24818)
-- Name: chapter_master chapter_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chapter_master
    ADD CONSTRAINT chapter_master_pkey PRIMARY KEY (id);


--
-- TOC entry 3243 (class 2606 OID 24820)
-- Name: class_master class_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_master
    ADD CONSTRAINT class_master_pkey PRIMARY KEY (id);


--
-- TOC entry 3245 (class 2606 OID 24822)
-- Name: course_master course_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_master
    ADD CONSTRAINT course_master_pkey PRIMARY KEY (id);


--
-- TOC entry 3247 (class 2606 OID 24824)
-- Name: group_master group_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_master
    ADD CONSTRAINT group_master_pkey PRIMARY KEY (id);


--
-- TOC entry 3249 (class 2606 OID 24826)
-- Name: knowledge_map knowledge_map_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledge_map
    ADD CONSTRAINT knowledge_map_pkey PRIMARY KEY (id);


--
-- TOC entry 3253 (class 2606 OID 24828)
-- Name: learn_history learn_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learn_history
    ADD CONSTRAINT learn_history_pkey PRIMARY KEY (id);


--
-- TOC entry 3255 (class 2606 OID 24830)
-- Name: problem_master problem_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.problem_master
    ADD CONSTRAINT problem_master_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 32957)
-- Name: problem_status problem_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.problem_status
    ADD CONSTRAINT problem_status_pkey PRIMARY KEY (id, update_at);


--
-- TOC entry 3257 (class 2606 OID 24832)
-- Name: question_master question_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_master
    ADD CONSTRAINT question_master_pkey PRIMARY KEY (id);


--
-- TOC entry 3259 (class 2606 OID 24834)
-- Name: school_master school_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.school_master
    ADD CONSTRAINT school_master_pkey PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 24836)
-- Name: section_master section_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.section_master
    ADD CONSTRAINT section_master_pkey PRIMARY KEY (id);


--
-- TOC entry 3263 (class 2606 OID 24838)
-- Name: subject_master subject_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject_master
    ADD CONSTRAINT subject_master_pkey PRIMARY KEY (id);


--
-- TOC entry 3265 (class 2606 OID 24840)
-- Name: term_master term_master_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.term_master
    ADD CONSTRAINT term_master_pkey PRIMARY KEY (id);


--
-- TOC entry 3274 (class 1259 OID 33013)
-- Name: ix_account_group_master_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ix_account_group_master_id ON public.account_group_master USING btree (id);


--
-- TOC entry 3251 (class 1259 OID 24841)
-- Name: learn_history_index_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX learn_history_index_1 ON public.learn_history USING btree (account_id, question_id, answer_datetime);


--
-- TOC entry 3237 (class 1259 OID 24842)
-- Name: relationship_index_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX relationship_index_1 ON public.account_group USING btree (account_id, group_id);


--
-- TOC entry 3250 (class 1259 OID 24843)
-- Name: term_relationship_index_1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX term_relationship_index_1 ON public.knowledge_map USING btree (parent_term_id, child_term_id);


--
-- TOC entry 3295 (class 2606 OID 32963)
-- Name: problem_status account_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.problem_status
    ADD CONSTRAINT account_fk FOREIGN KEY (account_id) REFERENCES public.account_master(id);


--
-- TOC entry 3296 (class 2606 OID 32980)
-- Name: term_status account_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.term_status
    ADD CONSTRAINT account_fk FOREIGN KEY (account_id) REFERENCES public.account_master(id);


--
-- TOC entry 3299 (class 2606 OID 33008)
-- Name: account_group_master account_group_master_account_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_group_master
    ADD CONSTRAINT account_group_master_account_id_fkey FOREIGN KEY (account_id) REFERENCES public.account_master(id);


--
-- TOC entry 3298 (class 2606 OID 33003)
-- Name: account_group_master account_group_master_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_group_master
    ADD CONSTRAINT account_group_master_class_id_fkey FOREIGN KEY (class_id) REFERENCES public.class_master(id);


--
-- TOC entry 3275 (class 2606 OID 24844)
-- Name: account_group fk_account_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_group
    ADD CONSTRAINT fk_account_id FOREIGN KEY (account_id) REFERENCES public.account_master(id);


--
-- TOC entry 3287 (class 2606 OID 24849)
-- Name: learn_history fk_account_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learn_history
    ADD CONSTRAINT fk_account_id FOREIGN KEY (account_id) REFERENCES public.account_master(id);


--
-- TOC entry 3292 (class 2606 OID 24854)
-- Name: section_master fk_chapter_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.section_master
    ADD CONSTRAINT fk_chapter_id FOREIGN KEY (chapter_id) REFERENCES public.chapter_master(id);


--
-- TOC entry 3277 (class 2606 OID 24859)
-- Name: account_master fk_class_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_master
    ADD CONSTRAINT fk_class_id FOREIGN KEY (class_id) REFERENCES public.class_master(id);


--
-- TOC entry 3280 (class 2606 OID 24864)
-- Name: chapter_master fk_course_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chapter_master
    ADD CONSTRAINT fk_course_id FOREIGN KEY (course_id) REFERENCES public.course_master(id);


--
-- TOC entry 3276 (class 2606 OID 24869)
-- Name: account_group fk_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_group
    ADD CONSTRAINT fk_group_id FOREIGN KEY (group_id) REFERENCES public.group_master(id);


--
-- TOC entry 3278 (class 2606 OID 33018)
-- Name: account_master fk_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_master
    ADD CONSTRAINT fk_group_id FOREIGN KEY (group_id) REFERENCES public.group_master(id) NOT VALID;


--
-- TOC entry 3285 (class 2606 OID 24874)
-- Name: knowledge_map fk_knowledge_map_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledge_map
    ADD CONSTRAINT fk_knowledge_map_1 FOREIGN KEY (parent_term_id) REFERENCES public.term_master(id);


--
-- TOC entry 3286 (class 2606 OID 24879)
-- Name: knowledge_map fk_knowledge_map_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knowledge_map
    ADD CONSTRAINT fk_knowledge_map_2 FOREIGN KEY (child_term_id) REFERENCES public.term_master(id);


--
-- TOC entry 3291 (class 2606 OID 24884)
-- Name: question_master fk_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_master
    ADD CONSTRAINT fk_problem_id FOREIGN KEY (problem_id) REFERENCES public.problem_master(id);


--
-- TOC entry 3289 (class 2606 OID 24889)
-- Name: problem_master fk_problem_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.problem_master
    ADD CONSTRAINT fk_problem_id FOREIGN KEY (parent_problem_id) REFERENCES public.problem_master(id);


--
-- TOC entry 3288 (class 2606 OID 24894)
-- Name: learn_history fk_question_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.learn_history
    ADD CONSTRAINT fk_question_id FOREIGN KEY (question_id) REFERENCES public.question_master(id);


--
-- TOC entry 3283 (class 2606 OID 24899)
-- Name: group_master fk_school_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_master
    ADD CONSTRAINT fk_school_id FOREIGN KEY (school_id) REFERENCES public.school_master(id);


--
-- TOC entry 3281 (class 2606 OID 24904)
-- Name: class_master fk_school_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.class_master
    ADD CONSTRAINT fk_school_id FOREIGN KEY (school_id) REFERENCES public.school_master(id);


--
-- TOC entry 3279 (class 2606 OID 33023)
-- Name: account_master fk_school_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_master
    ADD CONSTRAINT fk_school_id FOREIGN KEY (school_id) REFERENCES public.school_master(id) NOT VALID;


--
-- TOC entry 3293 (class 2606 OID 24909)
-- Name: term_master fk_section_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.term_master
    ADD CONSTRAINT fk_section_id FOREIGN KEY (section_id) REFERENCES public.section_master(id);


--
-- TOC entry 3284 (class 2606 OID 24914)
-- Name: group_master fk_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_master
    ADD CONSTRAINT fk_subject_id FOREIGN KEY (subject_id) REFERENCES public.subject_master(id);


--
-- TOC entry 3282 (class 2606 OID 24919)
-- Name: course_master fk_subject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_master
    ADD CONSTRAINT fk_subject_id FOREIGN KEY (subject_id) REFERENCES public.subject_master(id);


--
-- TOC entry 3290 (class 2606 OID 24924)
-- Name: problem_master fk_term_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.problem_master
    ADD CONSTRAINT fk_term_id FOREIGN KEY (term_id) REFERENCES public.term_master(id);


--
-- TOC entry 3294 (class 2606 OID 32958)
-- Name: problem_status problem_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.problem_status
    ADD CONSTRAINT problem_fk FOREIGN KEY (problem_id) REFERENCES public.problem_master(id);


--
-- TOC entry 3297 (class 2606 OID 32985)
-- Name: term_status term_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.term_status
    ADD CONSTRAINT term_fk FOREIGN KEY (term_id) REFERENCES public.term_master(id);


-- Completed on 2022-08-26 13:25:02

--
-- PostgreSQL database dump complete
--

