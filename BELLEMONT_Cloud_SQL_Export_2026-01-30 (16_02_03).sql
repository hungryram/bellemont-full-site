--
-- PostgreSQL database dump
--

\restrict hdkeCwUimT8tlu7Svj8P9At7bIxTkrljfSxTdNRbSH561TeYlF3uHqoOwQvqWmh

-- Dumped from database version 13.23
-- Dumped by pg_dump version 13.23

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
-- Name: articles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    "Title" character varying(255),
    "Date" date,
    "Description" text,
    category integer,
    "ArticleSource" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    "LogoText" character varying(255)
);


--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    "Title" character varying(255),
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: components_availability_list_availability_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_availability_list_availability_items (
    id integer NOT NULL,
    "Beds" character varying(255),
    "Baths" character varying(255),
    "CC" character varying(255),
    "FloorPlan" character varying(255),
    "Int" character varying(255),
    "Ext" character varying(255),
    "Unit" character varying(255),
    "Price" character varying(255),
    "Ret" character varying(255)
);


--
-- Name: components_availability_list_availability_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_availability_list_availability_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_availability_list_availability_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_availability_list_availability_items_id_seq OWNED BY public.components_availability_list_availability_items.id;


--
-- Name: components_category_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.components_category_categories (
    id integer NOT NULL,
    "Title" character varying(255)
);


--
-- Name: components_category_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.components_category_categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: components_category_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.components_category_categories_id_seq OWNED BY public.components_category_categories.id;


--
-- Name: core_store; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.core_store (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


--
-- Name: core_store_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.core_store_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: core_store_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.core_store_id_seq OWNED BY public.core_store.id;


--
-- Name: i18n_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.i18n_locales (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.i18n_locales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.i18n_locales_id_seq OWNED BY public.i18n_locales.id;


--
-- Name: strapi_administrator; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_administrator (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255) NOT NULL,
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "registrationToken" character varying(255),
    "isActive" boolean,
    blocked boolean,
    "preferedLanguage" character varying(255)
);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_administrator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_administrator_id_seq OWNED BY public.strapi_administrator.id;


--
-- Name: strapi_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_permission (
    id integer NOT NULL,
    action character varying(255) NOT NULL,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    role integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_permission_id_seq OWNED BY public.strapi_permission.id;


--
-- Name: strapi_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_role (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_role_id_seq OWNED BY public.strapi_role.id;


--
-- Name: strapi_users_roles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_users_roles (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_users_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_users_roles_id_seq OWNED BY public.strapi_users_roles.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: the_availability_pages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.the_availability_pages (
    id integer NOT NULL,
    published_at timestamp with time zone,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: the_availability_pages_components; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.the_availability_pages_components (
    id integer NOT NULL,
    field character varying(255) NOT NULL,
    "order" integer NOT NULL,
    component_type character varying(255) NOT NULL,
    component_id integer NOT NULL,
    the_availability_page_id integer NOT NULL
);


--
-- Name: the_availability_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.the_availability_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: the_availability_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.the_availability_pages_components_id_seq OWNED BY public.the_availability_pages_components.id;


--
-- Name: the_availability_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.the_availability_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: the_availability_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.the_availability_pages_id_seq OWNED BY public.the_availability_pages.id;


--
-- Name: upload_file; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.upload_file (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    "alternativeText" character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255) NOT NULL,
    ext character varying(255),
    mime character varying(255) NOT NULL,
    size numeric(10,2) NOT NULL,
    url character varying(255) NOT NULL,
    "previewUrl" character varying(255),
    provider character varying(255) NOT NULL,
    provider_metadata jsonb,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: upload_file_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.upload_file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: upload_file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.upload_file_id_seq OWNED BY public.upload_file.id;


--
-- Name: upload_file_morph; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.upload_file_morph (
    id integer NOT NULL,
    upload_file_id integer,
    related_id integer,
    related_type text,
    field text,
    "order" integer
);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.upload_file_morph_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.upload_file_morph_id_seq OWNED BY public.upload_file_morph.id;


--
-- Name: users-permissions_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."users-permissions_permission" (
    id integer NOT NULL,
    type character varying(255) NOT NULL,
    controller character varying(255) NOT NULL,
    action character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    policy character varying(255),
    role integer,
    created_by integer,
    updated_by integer
);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."users-permissions_permission_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."users-permissions_permission_id_seq" OWNED BY public."users-permissions_permission".id;


--
-- Name: users-permissions_role; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."users-permissions_role" (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255),
    created_by integer,
    updated_by integer
);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."users-permissions_role_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."users-permissions_role_id_seq" OWNED BY public."users-permissions_role".id;


--
-- Name: users-permissions_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."users-permissions_user" (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    provider character varying(255),
    password character varying(255),
    "resetPasswordToken" character varying(255),
    "confirmationToken" character varying(255),
    confirmed boolean,
    blocked boolean,
    role integer,
    created_by integer,
    updated_by integer,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."users-permissions_user_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."users-permissions_user_id_seq" OWNED BY public."users-permissions_user".id;


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: components_availability_list_availability_items id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_availability_list_availability_items ALTER COLUMN id SET DEFAULT nextval('public.components_availability_list_availability_items_id_seq'::regclass);


--
-- Name: components_category_categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_category_categories ALTER COLUMN id SET DEFAULT nextval('public.components_category_categories_id_seq'::regclass);


--
-- Name: core_store id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_store ALTER COLUMN id SET DEFAULT nextval('public.core_store_id_seq'::regclass);


--
-- Name: i18n_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locales ALTER COLUMN id SET DEFAULT nextval('public.i18n_locales_id_seq'::regclass);


--
-- Name: strapi_administrator id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_administrator ALTER COLUMN id SET DEFAULT nextval('public.strapi_administrator_id_seq'::regclass);


--
-- Name: strapi_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_permission ALTER COLUMN id SET DEFAULT nextval('public.strapi_permission_id_seq'::regclass);


--
-- Name: strapi_role id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_role ALTER COLUMN id SET DEFAULT nextval('public.strapi_role_id_seq'::regclass);


--
-- Name: strapi_users_roles id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_users_roles ALTER COLUMN id SET DEFAULT nextval('public.strapi_users_roles_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: the_availability_pages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.the_availability_pages ALTER COLUMN id SET DEFAULT nextval('public.the_availability_pages_id_seq'::regclass);


--
-- Name: the_availability_pages_components id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.the_availability_pages_components ALTER COLUMN id SET DEFAULT nextval('public.the_availability_pages_components_id_seq'::regclass);


--
-- Name: upload_file id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_file ALTER COLUMN id SET DEFAULT nextval('public.upload_file_id_seq'::regclass);


--
-- Name: upload_file_morph id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_file_morph ALTER COLUMN id SET DEFAULT nextval('public.upload_file_morph_id_seq'::regclass);


--
-- Name: users-permissions_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_permission" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_permission_id_seq"'::regclass);


--
-- Name: users-permissions_role id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_role" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_role_id_seq"'::regclass);


--
-- Name: users-permissions_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_user" ALTER COLUMN id SET DEFAULT nextval('public."users-permissions_user_id_seq"'::regclass);


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.articles (id, "Title", "Date", "Description", category, "ArticleSource", published_at, created_by, updated_by, created_at, updated_at, "LogoText") FROM stdin;
6	30 High-End Contracts Signed in Manhattan Last Week	2021-02-08	Last week, 30 high-end contracts asking $4 million or more entered into contract in Manhattan, according to a weekly report from Olshan Realty. That’s the most since November 2019, when 30 contracts were also signed. The breakdown of home types was 21 condos, four co-ops and five townhouses.	2	https://www.mansionglobal.com/articles/30-high-end-contracts-signed-in-manhattan-last-week-223441	2021-10-22 20:28:50.486+00	9	9	2021-10-22 19:55:21.412+00	2021-10-22 20:44:40.459+00	Mansion Global
11	London Sees U.K.’s Second-Priciest 2020 Sale; Upper East Side Penthouse in Contract	2020-11-20	The 6,600-square-foot penthouse of Upper East Side condominium The Benson has gone into contract at its full asking price of $35 million, the Wall Street Journal reports. The seven-bedroom spread has multiple terraces, hand-painted cabinetry designed by Christopher Peacock, fireplaces with Pietra Gray marble hearths, and radiant-heated bathroom floors. The Peter Pennoyer-designed building features a host of amenities, including a rooftop lounge overlooking Central Park, a half basketball court, a gym, and a spa. Developer Miki Naftali predicts The Benson will be ready for move-ins by the end of 2021.	2	https://www.lxcollection.com/article/london-penthouse-sale-real-estate-news/	2021-10-25 16:33:16.994+00	9	11	2021-10-22 21:08:26.741+00	2021-10-25 17:31:22.082+00	LX Collection
12	 New York Penthouse Sells for $35 Million, Offering Glimmer of Hope to Struggling Real-Estate Market	2020-11-10	Amid the pandemic-plagued New York City real-estate market, a luxury penthouse condominium has gone into contract for $35 million, marking one of the biggest deals in the city in recent months.\n\nMiki Naftali, a veteran real-estate developer, said the deal is for the priciest apartment at the Benson, a 19-story building currently under construction on the Upper East Side.	2	https://www.wsj.com/articles/new-york-penthouse-sells-35-million-amid-pandemic-11605029463	2021-10-25 16:33:21.621+00	9	11	2021-10-22 21:12:23.497+00	2021-10-25 17:32:44.352+00	The Wall Street Journal
43	February wrapped Manhattan luxury market’s record-breaking start to 2022	2022-02-28	After kicking off the year with a bang, Manhattan’s luxury market remained ablaze — even reaching another record as February drew to a close.\n\nIn the first two months of 2022, 244 contracts were signed at $4 million and above, according to Olshan Realty’s weekly report. That’s the strongest start of any year since the report began tracking in 2006....	1	https://therealdeal.com/2022/02/28/february-wrapped-manhattan-luxury-markets-record-breaking-start-to-2022/	2022-02-28 19:34:57.425+00	6	6	2022-02-28 19:34:55.413+00	2022-02-28 19:34:57.462+00	The Real Deal
10	Upper East Side Turns From Glass Boxes To Classic Architecture	2021-03-23	Is there a Manhattan enclave more synonymous with timeless style and grace than the Upper East Side? Long a bastion of class, distinction and old money, the enclave sets its own tone, forgoing passing fads. Now, the neighborhood is returning to its roots by investing a select few all-new buildings with the time-honored architecture, bespoke detailing and Roaring Twenties Art Deco style that cemented its status a century ago.	2	https://www.forbes.com/sites/jeffsteele/2021/03/23/upper-east-side-turns-from-glass-boxes-to-classic-architecture/?sh=10306a957111	2021-10-25 16:33:35.375+00	9	10	2021-10-22 21:03:30.048+00	2021-10-25 17:19:59.724+00	Forbes
9	10 Questions With… Achille Salvagni	2021-04-13	I wanted it to have the sensibility of a chic “Parisian maison,” starting with iron double doors leading to an oval jewel box of reception. The entry vestibule features elegant woods and stones. The lobby, taking inspiration from wooden stringed instruments, has a rounded ceiling, fluted walls, and a central, backlit onyx fireplace...	2	https://interiordesign.net/designwire/10-questions-with-achille-salvagni/	2021-10-22 21:02:52.648+00	6	6	2021-10-22 21:02:49.036+00	2021-10-22 21:02:52.696+00	Interior Design 
14	New York State of Mind: Optimism Fuels the Property Market	2021-03-05	New York’s rebirth began in mid-February, after the final dump of snow, while Texas shivered in an unforeseen freeze. Spring came all at once, with blue skies and jostling for the outdoor tables at the coffee shop around the corner. For months, they had lain as empty as a seaside promenade in winter.	2	https://www.ft.com/content/1cba37ce-1782-4121-9fcc-507013f5f5e6	2021-10-25 16:33:25.874+00	9	11	2021-10-22 21:20:08.129+00	2021-10-25 17:32:54.716+00	Financial Times
40	15 Central Park West tops Manhattan’s luxury contracts	2022-02-07	The first week of February may have brought a harsh wintry mix to Manhattan, but the borough’s luxury market appeared to warm up.\n\nBetween Jan. 31 and Feb. 6, 40 luxury contracts were signed, according to Olshan Realty’s weekly report. Five weeks into the new year, the period marked the first time in 2022 the luxury market has cracked 30 or more contracts signed at $4 million and above....	1	https://therealdeal.com/2022/02/07/15-central-park-west-tops-manhattans-luxury-contracts/	2022-02-08 21:48:53.366+00	6	6	2022-02-08 21:48:48.31+00	2022-02-08 21:48:53.403+00	The Real Deal
13	The First New Condos on Madison Ave. in 20 Years Just Hit the Market	2020-09-17	While so much of New York City real estate has become increasingly premium, the Upper East Side still holds a certain allure with its proximity to Central Park, the Guggenheim, and the boutique shopping along storied Madison Ave.	2	https://robbreport.com/shelter/new-construction/madison-ave-condos-nyc-1234569682/	2021-10-25 16:33:32.149+00	9	11	2021-10-22 21:17:20.236+00	2021-10-25 17:31:35.096+00	Robb Report
46	NYC new developments report 26% more sponsor contracts in February 2022	2022-03-04	February was another strong month for new development sales across New York City. Developers reported 402 new sponsor contracts, a 26% increase from the month prior and a 35% increase over the same period last year.\n\nFollowing a record year for new development sales with 5,000 sponsor units sold, the city’s total sponsor inventory has decreased approximately 7% since February 2021, from 15,000 units to 14,100, accounting for 3,900 units that were added to total inventory...	1	https://www.amny.com/news/nyc-new-developments-report-25-more-sponsor-contracts-in-february-2022/	2022-03-07 16:26:06.343+00	6	6	2022-03-07 16:26:04.683+00	2022-03-07 16:26:06.387+00	amNY
15	Plaza Sweet: Miki Naftali’s Journey to New York and Why He’s Not Going Anywhere	2020-10-27	About 20 years ago, Miki Naftali nearly gave up on New York. He left a high-flying role in commercial real estate investment and development in Israel to take on New York with Elad Properties, then a small investor and developer working out of two rooms in Fort Lee, N.J. But he found himself wanting. “It was a position in a small company,” he said. “I didn’t have any relationships —I didn’t know any brokers or banks, or anybody. At the time, they had a small project in Neptune, N.J., of all places; a bunch of townhomes they built. I said to myself, ‘This is not what I signed up for.’ 	2	https://www.ft.com/content/1cba37ce-1782-4121-9fcc-507013f5f5e6	2021-10-25 16:33:29.031+00	9	9	2021-10-22 21:22:29.146+00	2021-10-25 16:33:29.058+00	Commercial Observer
21	Led by $67M deal at Naftali’s Bellemont, buyers flock to pricey UES condos	2021-11-08	If pricey condo sales are any indication, the Upper East Side is back. The affluent uptown neighborhood dominated Manhattan’s luxury market last week, according to Olshan Realty’s report tracking contract signings for homes asking $4 million and up....	1	https://therealdeal.com/2021/11/08/led-by-67m-deal-at-naftalis-bellemont-buyers-flock-to-pricey-ues-condos/	2021-11-09 16:38:00.98+00	6	6	2021-11-09 15:41:39.326+00	2021-11-09 16:38:01.02+00	The Real Deal
18	New York City Apartment Slated to Sell for $66.5 Million	2021-11-03	A new construction penthouse on Manhattan’s Upper East Side has gone into contract for $66.5 million, according to the developer. The buyer is combining the top two units at the Bellemont condominium at 1165 Madison Avenue, according to Miki Naftali, chairman and CEO of Naftali Group, the building’s developer. The completed unit will comprise four full-floors spanning roughly 13,000 square feet, plus approximately 2,300 square feet of outdoor space, he said...	1	https://www.mansionglobal.com/articles/new-york-city-apartment-slated-to-sell-for-66-5-million-01635959945	2021-11-09 16:37:01.512+00	6	6	2021-11-09 15:35:31.03+00	2021-11-09 16:37:01.539+00	Mansion Global
31	Top 10 Upper East Side Condos: Wealthy buyers covet traditional design	2022-01-19	During the Gilded Age, the Upper East Side was known for the opulent mansions lining the streets. More than 100 years later, period drama The Gilded Age is set to premiere on HBO and a new Gilded Age appears to be taking shape off-screen. This time, instead of single-family mansions, a new crop of luxury condominiums is taking shape alongside Landmarks-protected townhouses and cooperatives. The units inside feature expansive floor plans to begin with, but some buyers are opting to combine apartments into one massive home with multiple levels and private outdoor space. The only discernible difference between this and the townhouses lining the blocks are the access to deluxe amenities and white-glove service...	1	https://www.cityrealty.com/nyc/market-insight/features/future-nyc/top-10-upper-east-side-condos-wealthy-buyers-covet-traditional-design/54201	2022-01-21 17:29:31.188+00	6	6	2022-01-21 17:29:29.268+00	2022-01-21 17:29:31.219+00	City Realty
19	New Upper East Side condo goes under contract for $66.5M	2021-11-04	A luxury condo in a new construction building one block from Central Park has gone under contract for $66.5 million, building developer Miki Naftali of the Naftali Group told the Wall Street Journal. The deal will combine the two uppermost units of the Bellemont condominium located at 1165 Madison Ave. on the corner of East 86th Street. In total, the home will have four full floors occupying about 13,000 square feet, as well as 2,300 square feet of outdoor space....	1	https://www.inman.com/2021/11/04/new-upper-east-side-condo-goes-under-contract-for-66-5m/	2021-11-09 16:37:22.147+00	6	6	2021-11-09 15:38:06.379+00	2021-11-09 16:37:22.183+00	Inman
20	Buyer Spends $66.5 Million on UES Condo	2021-11-05	An unidentified buyer has committed a whopping $66.5 million to combine the top two apartments of The Bellemont, a new development condominium at 1165 Madison Avenue at the corner East 86th Street. The developer, Miki Naftali of the Naftali Group, has confirmed this as a ‘signed contract’ with the Wall Street Journal. The Bellemont is one of two Madison Avenue condos under development by the Naftali Group....	1	https://eastsidefeed.com/real-estate/buyer-spends-66-5-million-on-ues-condo/	2021-11-09 16:37:39.571+00	6	6	2021-11-09 15:39:44.867+00	2021-11-09 16:37:39.596+00	East Side Feed
16	New York City Apartment Slated to Sell for $66.5 million	2021-11-03	A new construction penthouse on Manhattan’s Upper East Side has gone into contract for $66.5 million, according to the developer. The buyer is combining the top two units at the Bellemont condominium at 1165 Madison Avenue, according to Miki Naftali, chairman and CEO of Naftali Group, the building’s developer. The completed unit will comprise four full-floors spanning roughly 13,000 square feet, plus approximately 2,300 square feet of outdoor space...	1	https://www.wsj.com/articles/new-york-city-apartment-slated-to-sell-for-66-5-million-11635950369	2021-11-09 16:36:24.951+00	6	6	2021-11-03 16:22:34.023+00	2021-11-09 16:36:24.987+00	The Wall Street Journal 
22	Manhattan’s Luxury Housing ‘Hot Streak’ Persists Into the Fall	2021-11-08	A $66.5 million two-unit combo penthouse on the Upper East Side was the most expensive of 46 luxury home deals made in Manhattan last week, according to Olshan Realty’s weekly market roundup on Monday. It marked a continuation of the borough’s “rip-roaring hot streak,” with five straight weeks where contracts were signed on 40 or more luxury homes, wrote Donna Olshan, author of the report and president of Olshan Realty, which defines a luxury property as one priced at $4 million or more....	1	https://www.mansionglobal.com/articles/manhattans-luxury-housing-hot-streak-persists-into-the-fall-01636395334	2021-11-09 16:38:31.006+00	6	11	2021-11-09 15:44:52.397+00	2021-11-09 17:43:02.973+00	Mansion Global
41	Top Sales & Contracts: Norman Lear's $17.5M deal at 15CPW among top sales	2022-02-07	One month into 2022, the New York real estate market is still going strong. In January 2022, CityRealty data shows that the average price paid for a Manhattan apartment was $2.14 million. This is up 12 percent year-over-year. Moreover, with 1,410 transactions recorded, volume is up a staggering 81 percent year-over-year...	1	https://www.cityrealty.com/nyc/market-insight/features/great-listings/top-sales-amp-contracts-norman-lear039s-175m-deal-15cpw-among-top-sales/54521	2022-02-09 16:07:53.746+00	6	6	2022-02-09 15:03:12.876+00	2022-02-09 16:07:53.777+00	City Realty
38	Central Park West luxury condo deal leads sector’s busiest week of 2022 so far	2022-02-07	The good numbers keep rolling in for Manhattan’s luxury residential real estate market.\nThe sector, already on the heels of its strongest January since at least 2006, notched its busiest week of the year last\nweek, with 40 contracts signed at $4 million or more, according to the Olshan report. This was the first time in 2022 that 30\nor more contracts were signed in one week....	1	https://www.crainsnewyork.com/residential-real-estate/central-park-west-luxury-condo-deal-leads-sectors-busiest-week-2022-so-far	2022-02-08 21:44:47.355+00	6	6	2022-02-08 21:44:45.268+00	2022-02-08 21:45:13.748+00	Crain's
44	Manhattan’s Luxury Housing Kicks off Year With a Record-Breaking Start	2022-02-28	Manhattan’s luxury real estate market continues to have a stellar 2022, breaking records for the number of contracts for the first two months of the year.\n\nThere were 34 contracts signed for houses asking $4 million or more in Manhattan in the week ending Sunday, four fewer than the previous week, according to Monday’s weekly report from Olshan Realty. Last week’s contracts included 24 condos, six co-ops and four townhouses, with a total asking price sales volume of $272.695 million and a median asking price of $6.645 million...	1	https://www.mansionglobal.com/articles/manhattans-luxury-housing-kicks-off-year-with-a-record-breaking-start-01646076670	2022-02-28 19:52:40.53+00	6	6	2022-02-28 19:52:38.565+00	2022-02-28 19:52:40.567+00	Mansion Global
45	Manhattan Contracts: Tudor City penthouse from Godfather II and Spiderman finds buyer; The Bellemont nears sellout	2022-02-28	As Olshan Realty's market report shows, the past week was another triumphant one for buildings by Robert A.M. Stern Architects - the top contract was for a 5-bedroom, 5.5-bath, 4,784-square-foot penthouse at The Bellemont. The full-floor penthouse has access to two private terraces, and its asking price of $24.95 million is up $3.45 million from the original offering plan price of $21.5 million. Sales at The Bellemont launched in fall 2021; with this contract, only one unit in the building remains on the market....	1	https://www.cityrealty.com/nyc/market-insight/features/future-nyc/manhattan-contracts-tudor-city-penthouse-godfather-ii-spiderman-finds-buyer-the-bellemont-nears-sellout/54701	2022-03-01 20:03:07.603+00	6	6	2022-03-01 20:02:52.733+00	2022-03-01 20:03:07.632+00	City Realty
47	Apartment Sales in New Manhattan Developments on the Rise: Brown Harris Stevens	2022-03-04	New Yorkers buying into new developments in Manhattan have experts feeling as though the market is stabilizing after two years of upset by the pandemic.\n\nA monthly contract analysis by Brown Harris Stevens Development Marketing shows a 10 percent increase in contract activity in February and a 29 percent uptick in sales volume from January....	1	https://commercialobserver.com/2022/03/apartment-sales-in-new-manhattan-developments-on-the-rise-brown-harris-stevens/	2022-03-07 16:28:02.757+00	6	6	2022-03-07 16:27:58.087+00	2022-03-07 16:28:02.819+00	Commercial Observer
42	Upper East Side, New York: Old-School Glamour and World-Class Museums Abound	2022-02-23	For more than a century, people have yearned to call Manhattan’s tony Upper East Side home. To riff on John Updike’s famous quote, the true Upper East Sider secretly believes that people living anywhere else have to be, in some sense, kidding. The exclusive residential neighborhood has recently undergone a renaissance in building development and has seen a burst of new restaurants and upscale shopping boutiques. This is in no small part thanks to the long-anticipated opening of the Second Avenue Subway in 2017. (Emphasis on “long-anticipated”; plans had been in the works since the 1920s.)....	1	https://www.lxcollection.com/article/upper-east-side-neighborhood-guide-condos-museums/?utm_source=lxcollection&utm_medium=email&utm_campaign=newsletter_lxcollection	2022-02-25 15:28:15.191+00	6	6	2022-02-25 15:16:51.772+00	2022-02-25 15:35:57.077+00	LX Collection
23	Manhattan Sales & Contracts: $444M in sales led by former Google CEO's purchase; Massive combo unit at The Bellemont enters contract with $66.5M ask	2021-11-08	Nine of the past week’s top ten contracts took place on the Upper East Side, and the top contract by far was #PHC/D, asking $66.5 million, at The Bellemont, a new 12-unit condominium developed by Naftali Group, designed by Robert A.M. Stern, and located at 1165 Madison Avenue. The Wall Street Journal announced the deal and noted that the buyer, identified only as a New Yorker who made the purchase off floor plans, is paying slightly more than the asking prices of $39.65 million for a seven-bedroom penthouse and $26.5 million for a four-bedroom penthouse for the developer to deliver a combined unit. This will result in a four-story apartment with 13,011 interior square feet, its own interior elevator, and eight private terraces totaling 2,350 exterior square feet. This is not the most expensive Upper East Side deal above 59th Street - the 2015 sale of a co-op at 834 Fifth Avenue for $77.5 million still holds that distinction - but it’s up there....	1	https://www.cityrealty.com/nyc/market-insight/features/future-nyc/manhattan-sales-amp-contracts-444m-sales-led-former-google-ceo039s-purchase-massive-combo-unit-the-bellemont-enters-contract-665m-ask/53381	2021-11-09 16:38:54.346+00	6	6	2021-11-09 15:54:38.055+00	2021-11-09 16:38:54.371+00	City Realty
24	Manhattan Sales & Contracts: Two penthouses at 56 Leonard Street lead top sales; 60 luxury contracts with $500M+ asking price volume	2021-11-15	From November 7-13, 2021, a total of 299 condo, co-op, and condop sales closed in Manhattan, aggregating to a total of $587,211,863 and showing a climb from last week, when no sales were recorded on the city's Election Day holiday. The 136 condo sales recorded came to a median price of $1.78 million, or $1,626 per square foot. The 155 co-op sales came to a median price of $752,500...	1	https://www.cityrealty.com/nyc/market-insight/features/future-nyc/manhattan-sales-amp-contracts-two-penthouses-56-leonard-street-lead-top-sales-60-luxury-contracts-500m-asking-price-volume/53501	2021-11-15 21:47:28.72+00	6	6	2021-11-15 21:39:15.242+00	2021-11-15 21:47:28.75+00	City Realty
26	Luxury real estate is booming on Upper East Side	2021-11-20	The once sedate Upper East Side is suddenly sizzling as luxe home sales are surging after being cratered by the pandemic. More contracts for homes priced at $4 million and up were signed on the Upper East Side than in any other Manhattan neighborhood during the first week of November, according to a report compiled by Donna Olshan of Olshan Realty...\n\n	1	https://nypost.com/2021/11/20/luxury-real-estate-booming-on-upper-east-side-in-nyc/	2021-11-29 19:15:50.948+00	6	6	2021-11-29 19:15:13.37+00	2021-11-29 19:15:50.977+00	New York Post 
25	Manhattan luxury homes market sees strongest week in a decade	2021-11-15	Manhattan’s luxury market just finished up its strongest week in almost a decade. The borough saw 60 contracts signed last week worth about $554 million, according to the Olshan Report, which defines a luxury deal as one worth $4 million or more. This was the strongest week for Manhattan by dollar volume since the week of Dec. 16, 2013, when the borough saw 72 deals worth about $576 million. It was the busiest week of the year by sales volume as well and just the fourth week of the year with 50 or more signed contracts...	1	https://www.crainsnewyork.com/residential-real-estate/manhattan-luxury-homes-market-sees-strongest-week-decade	2021-11-16 15:30:44.113+00	6	6	2021-11-16 15:21:42.96+00	2021-11-16 15:30:44.17+00	Crain's
28	Luxury Real Estate Deals in Manhattan Slowed Over Holidays, but Remained Strong	2022-01-03	Even when sales are down, Manhattan’s luxury real estate market is still setting records. There were 22 contracts signed for $4 million or more in the week ending Sunday, according to Monday’s Olshan Report. It was 20 fewer than the previous week, but still enough to set a record for the typically slow week between Christmas and New Year’s...	1	https://www.mansionglobal.com/articles/luxury-real-estate-deals-in-manhattan-slowed-over-holidays-but-remained-strong-01641229209	2022-01-04 20:18:09.425+00	6	6	2022-01-04 20:18:07.875+00	2022-01-04 20:18:09.457+00	Mansion Global
27	Luxury real estate kicks off 2022 by breaking a record	2022-01-03	Manhattan’s luxury real estate market is starting the year on a high note.\nThe 22 contracts signed during the week ending Jan. 2 broke the record for the most ever recorded above $4 million at this\ntime of year, according to a report by Olshan Realty. The previous high was 15 signed contracts as the city was ringing in 2017, the data shows....	1	https://www.crainsnewyork.com/residential-real-estate/new-york-citys-luxury-real-estate-market-has-record-breaking-start-2022	2022-01-04 20:16:04.608+00	6	6	2022-01-04 20:14:31.147+00	2022-01-04 20:16:04.637+00	Crain's
29	Deals in new developments top Manhattan luxury market’s new year	2022-01-03	Manhattan’s luxury market started 2022 with a relative bang, counting 22 luxury contracts signed between Dec. 27 and Jan. 2. Though it’s 20 fewer than the previous week, last week’s total marks the highest start of the year since Olshan Realty’s luxury market report launched in 2006. The previous record was 15 contracts signed in 2017...	1	https://therealdeal.com/2022/01/03/deals-in-new-developments-top-manhattan-luxury-markets-new-year/	2022-01-04 20:26:38.35+00	6	6	2022-01-04 20:19:59.099+00	2022-01-04 20:26:38.379+00	The Real Deal
30	Manhattan Sales & Contracts: December 2021 records $2.4B in sales; Upper East Side dominates luxury contracts	2022-01-03	As 2021 drew to a close and 2022 began, downtown condos made up the majority of top sales. A quadruplex penthouse at 601 Washington Street with 6 bedrooms, 6.5 baths, one balcony, and two terraces closed for $31,000,000. Further uptown, a penthouse at The Greenwich Lane sold for $22,375,000, or 5.7 percent above its last listing price, in what appeared to be an off-market deal...	1	https://www.cityrealty.com/nyc/market-insight/features/future-nyc/manhattan-sales-amp-contracts-december-2021-records-24b-sales-upper-east-side-dominates-luxury-contracts/54061	2022-01-12 15:14:07.678+00	1	10	2022-01-11 16:44:55.902+00	2022-01-25 13:26:28.732+00	CityRealty
39	A Promising Start to February for Manhattan Luxury Home Sales	2022-02-07	Manhattan’s luxury real estate market had a strong start to February, surpassing 30 deals within a week for the first time in 2022.\n\nThere were 40 contracts signed for homes asking $4 million or more  in the week ending Sunday, the most this year, and 11 more than previous week, according to Monday’s weekly Olshan Report. \n\nThe deals included 27 condos, nine co-ops and three townhouses, with a total sales volume of $300.24 million....	1	https://www.mansionglobal.com/articles/a-promising-start-to-february-for-manhattan-luxury-home-sales-01644260227?mod=top_markets_new_york	2022-02-08 21:47:12.193+00	6	6	2022-02-08 21:47:09.653+00	2022-02-08 21:47:12.242+00	Mansion Global
48	Achille Salvagni Imbues a Manhattan Residential Tower With Parisian Touches	2022-03-14	The Rome-based interior designer’s first condo building, The Bellemont, blends 19th-century European grandeur with contemporary minimalist style on the Upper East Side...	1	https://www.surfacemag.com/articles/project-spotlight-achille-salvagni-designs-bellemont-residences-new-york/	2022-03-15 14:02:58.522+00	6	6	2022-03-15 14:02:55.874+00	2022-03-15 14:02:58.554+00	Surface
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.categories (id, "Title", published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	PRESS FOR THE BELLEMONT	2021-09-20 10:47:47.128+00	2	2	2021-09-20 10:47:44.274+00	2021-09-20 10:47:47.158+00
2	NAFTALI IN THE NEWS - THE BENSON	2021-09-20 10:48:01.803+00	2	2	2021-09-20 10:47:59.931+00	2021-09-20 10:48:01.821+00
\.


--
-- Data for Name: components_availability_list_availability_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_availability_list_availability_items (id, "Beds", "Baths", "CC", "FloorPlan", "Int", "Ext", "Unit", "Price", "Ret") FROM stdin;
3	4	4,5	4,500	VIEW PLAN	3,400	150	8TH FLOOR	12,000,000	5,500
4	4	4,5	4,500	VIEW PLAN	3,400	150	3 N	12,000,000	5,500
5	4	4,5	4,500	VIew Plan	3,400	-	Duplex	12,000,000	5,500
6	4	4,5	4,500	View Plan	3,400	150	12TH FLOOR	12,000,000	5,500
7	4	4,5	4,500	View Plan	3,400	150	PENTHOUSE A	12,000,000	5,500
8	4	4,5	4,500	View Plan	3,400	-	3 S	12,000,000	5,500
9	4	4,5	4,500	View Plan	3,400	-	10TH FLOOR	12,000,000	5,500
10	4	4,5	4,500	View Plan	3,400	150	PENTHOUSE C	12,000,000	5,500
\.


--
-- Data for Name: components_category_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.components_category_categories (id, "Title") FROM stdin;
\.


--
-- Data for Name: core_store; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.core_store (id, key, value, type, environment, tag) FROM stdin;
7	model_def_strapi::webhooks	{"uid":"strapi::webhooks","collectionName":"strapi_webhooks","info":{"name":"Strapi webhooks","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string"},"url":{"type":"text"},"headers":{"type":"json"},"events":{"type":"json"},"enabled":{"type":"boolean"}}}	object	\N	\N
20	plugin_i18n_default_locale	"en"	string		
8	model_def_strapi::permission	{"uid":"strapi::permission","collectionName":"strapi_permission","kind":"collectionType","info":{"name":"Permission","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"model":"role","plugin":"admin"}}}	object	\N	\N
9	model_def_strapi::role	{"uid":"strapi::role","collectionName":"strapi_role","kind":"collectionType","info":{"name":"Role","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"collection":"user","via":"roles","plugin":"admin","attribute":"user","column":"id","isVirtual":true},"permissions":{"configurable":false,"plugin":"admin","collection":"permission","via":"role","isVirtual":true}}}	object	\N	\N
11	model_def_plugins::i18n.locale	{"uid":"plugins::i18n.locale","collectionName":"i18n_locales","kind":"collectionType","info":{"name":"locale","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
3	model_def_category.category	{"uid":"category.category","collectionName":"components_category_categories","info":{"name":"Category","icon":"equals"},"options":{"timestamps":false},"attributes":{"Title":{"type":"string"}}}	object	\N	\N
5	model_def_application::category.category	{"uid":"application::category.category","collectionName":"categories","kind":"collectionType","info":{"name":"Category"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
6	model_def_application::the-availability-page.the-availability-page	{"uid":"application::the-availability-page.the-availability-page","collectionName":"the_availability_pages","kind":"singleType","info":{"name":"The Availability Page"},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"AvailabilityItem":{"type":"component","repeatable":true,"component":"availability-list.availability-item"},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
16	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true}	object	production	
17	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}	object		
10	model_def_strapi::user	{"uid":"strapi::user","collectionName":"strapi_administrator","kind":"collectionType","info":{"name":"User","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"collection":"role","collectionName":"strapi_users_roles","via":"users","dominant":true,"plugin":"admin","configurable":false,"private":true,"attribute":"role","column":"id","isVirtual":true},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}}}	object	\N	\N
15	model_def_plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","collectionName":"users-permissions_user","kind":"collectionType","info":{"name":"user","description":""},"options":{"draftAndPublish":false,"timestamps":["created_at","updated_at"]},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"model":"role","via":"users","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
19	plugin_content_manager_configuration_components::category.category	{"uid":"category.category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title"],"edit":[[{"name":"Title","size":6}]],"editRelations":[]},"isComponent":true}	object		
18	plugin_content_manager_configuration_components::availability-list.availability-item	{"uid":"availability-list.availability-item","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Unit","defaultSortBy":"Beds","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":false,"sortable":false}},"Beds":{"edit":{"label":"Beds","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Beds","searchable":true,"sortable":true}},"Baths":{"edit":{"label":"Baths","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Baths","searchable":true,"sortable":true}},"CC":{"edit":{"label":"CC","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CC","searchable":true,"sortable":true}},"FloorPlan":{"edit":{"label":"FloorPlan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FloorPlan","searchable":true,"sortable":true}},"Int":{"edit":{"label":"Int","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Int","searchable":true,"sortable":true}},"Ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"Unit":{"edit":{"label":"Unit","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Unit","searchable":true,"sortable":true}},"Price":{"edit":{"label":"Price","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Price","searchable":true,"sortable":true}},"Ret":{"edit":{"label":"Ret","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ret","searchable":true,"sortable":true}},"FloorPlanFile":{"edit":{"label":"FloorPlanFile","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FloorPlanFile","searchable":false,"sortable":false}}},"layouts":{"list":["id","Beds","Baths","CC"],"edit":[[{"name":"Unit","size":6}],[{"name":"Beds","size":6},{"name":"Baths","size":6}],[{"name":"Int","size":6},{"name":"Ext","size":6}],[{"name":"Price","size":6},{"name":"CC","size":6}],[{"name":"Ret","size":6},{"name":"FloorPlan","size":6}],[{"name":"FloorPlanFile","size":6}]],"editRelations":[]},"isComponent":true}	object		
21	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object		
13	model_def_plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","collectionName":"users-permissions_permission","kind":"collectionType","info":{"name":"permission","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"type":{"type":"string","required":true,"configurable":false},"controller":{"type":"string","required":true,"configurable":false},"action":{"type":"string","required":true,"configurable":false},"enabled":{"type":"boolean","required":true,"configurable":false},"policy":{"type":"string","configurable":false},"role":{"model":"role","via":"permissions","plugin":"users-permissions","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
22	plugin_content_manager_configuration_content_types::plugins::users-permissions.permission	{"uid":"plugins::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"type","defaultSortBy":"type","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"controller":{"edit":{"label":"Controller","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Controller","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"enabled":{"edit":{"label":"Enabled","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Enabled","searchable":true,"sortable":true}},"policy":{"edit":{"label":"Policy","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Policy","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","controller","action"],"editRelations":["role"],"edit":[[{"name":"type","size":6},{"name":"controller","size":6}],[{"name":"action","size":6},{"name":"enabled","size":4}],[{"name":"policy","size":6}]]}}	object		
33	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object		
12	model_def_plugins::upload.file	{"uid":"plugins::upload.file","collectionName":"upload_file","kind":"collectionType","info":{"name":"file","description":""},"options":{"timestamps":["created_at","updated_at"]},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"collection":"*","filter":"field","configurable":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
24	plugin_content_manager_configuration_content_types::plugins::i18n.locale	{"uid":"plugins::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","created_at"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object		
23	plugin_content_manager_configuration_content_types::plugins::upload.file	{"uid":"plugins::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"AlternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AlternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"Caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"Width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Width","searchable":true,"sortable":true}},"height":{"edit":{"label":"Height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"Formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"Hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"Ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"Mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"Size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Size","searchable":true,"sortable":true}},"url":{"edit":{"label":"Url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"PreviewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreviewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"Provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Provider_metadata","searchable":false,"sortable":false}},"related":{"edit":{"label":"Related","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Related","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":["related"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}	object		
25	plugin_content_manager_configuration_content_types::strapi::user	{"uid":"strapi::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"Firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"Lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"RegistrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"RegistrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"IsActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"IsActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"Roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"PreferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PreferedLanguage","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}	object		
26	plugin_content_manager_configuration_content_types::application::category.category	{"uid":"application::category.category","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"Title","size":6}]]}}	object		
28	plugin_content_manager_configuration_content_types::strapi::permission	{"uid":"strapi::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"action":{"edit":{"label":"Action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"Subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"Properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"Conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}	object		
29	plugin_content_manager_configuration_content_types::strapi::role	{"uid":"strapi::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"code":{"edit":{"label":"Code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Code","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"Users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}	object		
30	plugin_content_manager_configuration_content_types::application::the-availability-page.the-availability-page	{"uid":"application::the-availability-page.the-availability-page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"AvailabilityItem":{"edit":{"label":"AvailabilityItem","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AvailabilityItem","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","created_at","updated_at"],"editRelations":[],"edit":[[{"name":"AvailabilityItem","size":12}]]}}	object		
31	plugin_content_manager_configuration_content_types::plugins::users-permissions.user	{"uid":"plugins::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"username":{"edit":{"label":"Username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Username","searchable":true,"sortable":true}},"email":{"edit":{"label":"Email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"Provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"Password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"ResetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ResetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"ConfirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"ConfirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"Confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"Blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"Role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"Role","searchable":true,"sortable":true}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}	object		
32	plugin_content_manager_configuration_content_types::plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"type":{"edit":{"label":"Type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"Permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"type"},"list":{"label":"Permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"Users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"Users","searchable":false,"sortable":false}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}	object		
34	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null}}	object		
1	model_def_strapi::core-store	{"uid":"strapi::core-store","collectionName":"core_store","info":{"name":"core_store","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"key":{"type":"string"},"value":{"type":"text"},"type":{"type":"string"},"environment":{"type":"string"},"tag":{"type":"string"}}}	object	\N	\N
2	model_def_availability-list.availability-item	{"uid":"availability-list.availability-item","collectionName":"components_availability_list_availability_items","info":{"name":"AvailabilityItem","icon":"align-justify","description":""},"options":{"timestamps":false},"attributes":{"Beds":{"type":"string"},"Baths":{"type":"string"},"CC":{"type":"string"},"FloorPlan":{"type":"string"},"Int":{"type":"string"},"Ext":{"type":"string"},"Unit":{"type":"string"},"Price":{"type":"string"},"Ret":{"type":"string"},"FloorPlanFile":{"model":"file","via":"related","allowedTypes":["files","images"],"plugin":"upload","required":false,"pluginOptions":{}}}}	object	\N	\N
14	model_def_plugins::users-permissions.role	{"uid":"plugins::users-permissions.role","collectionName":"users-permissions_role","kind":"collectionType","info":{"name":"role","description":""},"options":{"timestamps":false},"pluginOptions":{"content-manager":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"collection":"permission","via":"role","plugin":"users-permissions","configurable":false,"isVirtual":true},"users":{"collection":"user","via":"role","configurable":false,"plugin":"users-permissions","isVirtual":true},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
4	model_def_application::articles.articles	{"uid":"application::articles.articles","collectionName":"articles","kind":"collectionType","info":{"name":"Articles","description":""},"options":{"increments":true,"timestamps":["created_at","updated_at"],"draftAndPublish":true},"pluginOptions":{},"attributes":{"Title":{"type":"string","required":true},"Date":{"type":"date","required":true},"Logo":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"Description":{"type":"text","required":true},"category":{"model":"category","required":true},"ArticleSource":{"type":"string","required":true},"LogoText":{"type":"string","required":true},"Thumb":{"model":"file","via":"related","allowedTypes":["images"],"plugin":"upload","required":true,"pluginOptions":{}},"published_at":{"type":"datetime","configurable":false,"writable":true,"visible":false},"created_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true},"updated_by":{"model":"user","plugin":"admin","configurable":false,"writable":false,"visible":false,"private":true}}}	object	\N	\N
27	plugin_content_manager_configuration_content_types::application::articles.articles	{"uid":"application::articles.articles","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"Id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"Date":{"edit":{"label":"Date","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Date","searchable":true,"sortable":true}},"Logo":{"edit":{"label":"Logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Logo","searchable":false,"sortable":false}},"Description":{"edit":{"label":"Description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Description","searchable":true,"sortable":true}},"category":{"edit":{"label":"Category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"Category","searchable":true,"sortable":true}},"ArticleSource":{"edit":{"label":"ArticleSource","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ArticleSource","searchable":true,"sortable":true}},"LogoText":{"edit":{"label":"LogoText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"LogoText","searchable":true,"sortable":true}},"Thumb":{"edit":{"label":"Thumb","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Thumb","searchable":false,"sortable":false}},"created_at":{"edit":{"label":"Created_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Created_at","searchable":true,"sortable":true}},"updated_at":{"edit":{"label":"Updated_at","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"Updated_at","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","Date","Logo"],"edit":[[{"name":"Title","size":6},{"name":"Date","size":4}],[{"name":"Logo","size":6},{"name":"Thumb","size":6}],[{"name":"Description","size":6},{"name":"ArticleSource","size":6}],[{"name":"LogoText","size":6}]],"editRelations":["category"]}}	object		
\.


--
-- Data for Name: i18n_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.i18n_locales (id, name, code, created_by, updated_by, created_at, updated_at) FROM stdin;
1	English (en)	en	\N	\N	2021-09-20 08:39:01.071+00	2021-09-20 08:39:01.071+00
\.


--
-- Data for Name: strapi_administrator; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_administrator (id, firstname, lastname, username, email, password, "resetPasswordToken", "registrationToken", "isActive", blocked, "preferedLanguage") FROM stdin;
1	Ilya	Derets	\N	ilya.derets@dbox.com	$2a$10$WPVbyXSG4VHeG6/paMIGhOfgsCyFxuFwAbCWd9DuYK/QRNScohzKm	\N	\N	t	\N	\N
4	Danielle	Naftali	\N	dnaftali@naftaligroup.com	\N	\N	29156952c29812caa2d6fc8913923a709b59d617	f	\N	\N
5	Ben	Franco	\N	bfranco@naftaligroup.com	\N	\N	9a40343b0961fe5f4cf0eec8ac5b1b36c1fd6be0	f	\N	\N
8	Kelly	Onder	\N	kelly.onder@compass.com	$2a$10$8r8rMSbS.Pe.mgh.mQbHlefhKmtmY8d0hZQ8qG2rss.1VncPx7C3q	\N	\N	t	\N	\N
6	Gabrielle	Sami	\N	gabrielle.sami@compass.com	$2a$10$giL79tk9Tat.BqXL869wGerC6KIQS1.MZ5oMTEE.cNnvAwq1rbtNK	\N	\N	t	\N	\N
7	Sales	Gallery	\N	info@the-bellemont.com	$2a$10$GNGqvQKWRQbXqNvkcfHZReHXiHlHie6b/m7g5aDtnwDuba3rWsPCG	\N	\N	t	\N	\N
2	Mykola	Hubytskyi	\N	mhubytskyi@proffiz.com	$2a$10$Ek9VZYYuixyOoc7l7cDqx.yLLSQwbxGXJhPqME45TH34UOwwGjfSa	\N	\N	t	\N	en
10	Nazar	Malets	\N	nmalets@proffiz.com	$2a$10$7hUTgll522ALyhnVeHjm4u0mzWlKQAKtxqOWyGxOliQMNEoLHKfOq	\N	\N	t	\N	\N
12	Tatiana	Brieva	\N	tatiana.brieva@dbox.com	$2a$10$qgsHQBkR/0wTmBv1tdpIReYvnEBIezdguUB.14jTTvybq/B2v6H4S	\N	\N	t	\N	\N
13	support	hungryram	\N	support@hungryram.com	\N	\N	e1fcb8e695f922db5af0650da579c37e6eeaacaa	f	\N	\N
14	Ram	Hungryram	\N	ram@hungryram.com	$2a$10$zDrEHnqIDx.hSqxqTzVuNeGAHbdbwN/nX1zBWe3dPMHSrSG2pYNjO	\N	\N	t	\N	\N
\.


--
-- Data for Name: strapi_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_permission (id, action, subject, properties, conditions, role, created_at, updated_at) FROM stdin;
6	plugins::content-manager.explorer.create	application::the-availability-page.the-availability-page	{"fields": ["AvailabilityItem.Beds", "AvailabilityItem.Baths", "AvailabilityItem.CC", "AvailabilityItem.FloorPlan", "AvailabilityItem.Int", "AvailabilityItem.Ext", "AvailabilityItem.Unit", "AvailabilityItem.Price", "AvailabilityItem.Ret"]}	[]	2	2021-09-20 08:39:03.676+00	2021-09-20 08:39:03.702+00
4	plugins::content-manager.explorer.publish	application::articles.articles	{}	[]	2	2021-09-20 08:39:03.676+00	2021-09-20 08:39:03.702+00
3	plugins::content-manager.explorer.delete	application::articles.articles	{}	[]	2	2021-09-20 08:39:03.677+00	2021-09-20 08:39:03.702+00
1	plugins::content-manager.explorer.publish	application::category.category	{}	[]	2	2021-09-20 08:39:03.671+00	2021-09-20 08:39:03.702+00
5	plugins::content-manager.explorer.delete	application::category.category	{}	[]	2	2021-09-20 08:39:03.676+00	2021-09-20 08:39:03.702+00
11	plugins::content-manager.explorer.publish	application::the-availability-page.the-availability-page	{}	[]	2	2021-09-20 08:39:03.676+00	2021-09-20 08:39:03.709+00
7	plugins::content-manager.explorer.update	application::category.category	{"fields": ["Title"]}	[]	2	2021-09-20 08:39:03.677+00	2021-09-20 08:39:03.702+00
9	plugins::content-manager.explorer.update	application::the-availability-page.the-availability-page	{"fields": ["AvailabilityItem.Beds", "AvailabilityItem.Baths", "AvailabilityItem.CC", "AvailabilityItem.FloorPlan", "AvailabilityItem.Int", "AvailabilityItem.Ext", "AvailabilityItem.Unit", "AvailabilityItem.Price", "AvailabilityItem.Ret"]}	[]	2	2021-09-20 08:39:03.676+00	2021-09-20 08:39:03.702+00
2	plugins::content-manager.explorer.create	application::category.category	{"fields": ["Title"]}	[]	2	2021-09-20 08:39:03.671+00	2021-09-20 08:39:03.702+00
13	plugins::content-manager.explorer.read	application::the-availability-page.the-availability-page	{"fields": ["AvailabilityItem.Beds", "AvailabilityItem.Baths", "AvailabilityItem.CC", "AvailabilityItem.FloorPlan", "AvailabilityItem.Int", "AvailabilityItem.Ext", "AvailabilityItem.Unit", "AvailabilityItem.Price", "AvailabilityItem.Ret"]}	[]	2	2021-09-20 08:39:03.676+00	2021-09-20 08:39:03.711+00
10	plugins::content-manager.explorer.read	application::category.category	{"fields": ["Title"]}	[]	2	2021-09-20 08:39:03.674+00	2021-09-20 08:39:03.702+00
14	plugins::content-manager.explorer.delete	application::the-availability-page.the-availability-page	{}	[]	2	2021-09-20 08:39:03.677+00	2021-09-20 08:39:03.713+00
16	plugins::upload.assets.create	\N	{}	[]	2	2021-09-20 08:39:03.751+00	2021-09-20 08:39:03.761+00
17	plugins::upload.read	\N	{}	[]	2	2021-09-20 08:39:03.751+00	2021-09-20 08:39:03.762+00
20	plugins::upload.assets.copy-link	\N	{}	[]	2	2021-09-20 08:39:03.754+00	2021-09-20 08:39:03.763+00
19	plugins::upload.assets.download	\N	{}	[]	2	2021-09-20 08:39:03.754+00	2021-09-20 08:39:03.764+00
18	plugins::upload.assets.update	\N	{}	[]	2	2021-09-20 08:39:03.753+00	2021-09-20 08:39:03.763+00
265	plugins::content-manager.explorer.update	application::the-availability-page.the-availability-page	{"fields": ["AvailabilityItem.Beds", "AvailabilityItem.Baths", "AvailabilityItem.CC", "AvailabilityItem.FloorPlan", "AvailabilityItem.Int", "AvailabilityItem.Ext", "AvailabilityItem.Unit", "AvailabilityItem.Price", "AvailabilityItem.Ret", "AvailabilityItem.FloorPlanFile"]}	[]	1	2021-10-19 09:11:52.09+00	2021-10-19 09:11:52.152+00
8	plugins::content-manager.explorer.read	application::articles.articles	{"fields": ["Title", "Date", "Logo", "Description", "category", "ArticleSource", "Thumb", "LogoText"]}	[]	2	2021-09-20 08:39:03.676+00	2022-01-25 15:27:34.534+00
15	plugins::content-manager.explorer.create	application::articles.articles	{"fields": ["Title", "Date", "Logo", "Description", "category", "ArticleSource", "Thumb", "LogoText"]}	[]	2	2021-09-20 08:39:03.677+00	2022-01-25 15:27:34.538+00
12	plugins::content-manager.explorer.update	application::articles.articles	{"fields": ["Title", "Date", "Logo", "Description", "category", "ArticleSource", "Thumb", "LogoText"]}	[]	2	2021-09-20 08:39:03.676+00	2022-01-25 15:27:34.538+00
21	plugins::content-manager.explorer.create	application::the-availability-page.the-availability-page	{"fields": ["AvailabilityItem.Beds", "AvailabilityItem.Baths", "AvailabilityItem.CC", "AvailabilityItem.FloorPlan", "AvailabilityItem.Int", "AvailabilityItem.Ext", "AvailabilityItem.Unit", "AvailabilityItem.Price", "AvailabilityItem.Ret"]}	["admin::is-creator"]	3	2021-09-20 08:39:03.789+00	2021-09-20 08:39:03.811+00
42	plugins::content-manager.explorer.update	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-09-20 08:39:03.996+00	2021-09-20 08:39:04.032+00
75	plugins::users-permissions.roles.delete	\N	{}	[]	1	2021-09-20 08:39:04.198+00	2021-09-20 08:39:04.254+00
89	admin::users.read	\N	{}	[]	1	2021-09-20 08:39:04.303+00	2021-09-20 08:39:04.362+00
60	plugins::upload.assets.update	\N	{}	[]	1	2021-09-20 08:39:04.082+00	2021-09-20 08:39:04.105+00
71	plugins::users-permissions.roles.read	\N	{}	[]	1	2021-09-20 08:39:04.198+00	2021-09-20 08:39:04.253+00
86	admin::webhooks.update	\N	{}	[]	1	2021-09-20 08:39:04.297+00	2021-09-20 08:39:04.357+00
23	plugins::content-manager.explorer.update	application::articles.articles	{"fields": ["Title", "Date", "Logo", "Description", "category", "ArticleSource", "Thumb", "LogoText"]}	["admin::is-creator"]	3	2021-09-20 08:39:03.789+00	2022-01-25 15:27:34.534+00
22	plugins::content-manager.explorer.create	application::category.category	{"fields": ["Title"]}	["admin::is-creator"]	3	2021-09-20 08:39:03.789+00	2021-09-20 08:39:03.811+00
59	plugins::email.settings.read	\N	{}	[]	1	2021-09-20 08:39:04.082+00	2021-09-20 08:39:04.113+00
77	plugins::users-permissions.providers.read	\N	{}	[]	1	2021-09-20 08:39:04.202+00	2021-09-20 08:39:04.262+00
92	admin::users.delete	\N	{}	[]	1	2021-09-20 08:39:04.31+00	2021-09-20 08:39:04.374+00
24	plugins::upload.assets.create	\N	{}	[]	3	2021-09-20 08:39:03.794+00	2021-09-20 08:39:03.819+00
36	plugins::upload.assets.copy-link	\N	{}	[]	3	2021-09-20 08:39:03.881+00	2021-09-20 08:39:03.888+00
67	plugins::i18n.locale.update	\N	{}	[]	1	2021-09-20 08:39:04.094+00	2021-09-20 08:39:04.164+00
82	admin::marketplace.read	\N	{}	[]	1	2021-09-20 08:39:04.221+00	2021-09-20 08:39:04.271+00
95	admin::roles.delete	\N	{}	[]	1	2021-09-20 08:39:04.357+00	2021-09-20 08:39:04.386+00
29	plugins::content-manager.explorer.delete	application::category.category	{}	["admin::is-creator"]	3	2021-09-20 08:39:03.796+00	2021-09-20 08:39:03.819+00
61	plugins::upload.assets.download	\N	{}	[]	1	2021-09-20 08:39:04.082+00	2021-09-20 08:39:04.112+00
72	plugins::content-manager.components.configure-layout	\N	{}	[]	1	2021-09-20 08:39:04.198+00	2021-09-20 08:39:04.224+00
87	admin::webhooks.read	\N	{}	[]	1	2021-09-20 08:39:04.296+00	2021-09-20 08:39:04.362+00
27	plugins::upload.assets.update	\N	{}	["admin::is-creator"]	3	2021-09-20 08:39:03.794+00	2021-09-20 08:39:03.819+00
37	plugins::upload.assets.download	\N	{}	[]	3	2021-09-20 08:39:03.881+00	2021-09-20 08:39:03.887+00
47	plugins::content-manager.explorer.create	application::category.category	{"fields": ["Title"]}	[]	1	2021-09-20 08:39:03.997+00	2021-09-20 08:39:04.036+00
65	plugins::i18n.locale.read	\N	{}	[]	1	2021-09-20 08:39:04.091+00	2021-09-20 08:39:04.15+00
80	plugins::users-permissions.advanced-settings.update	\N	{}	[]	1	2021-09-20 08:39:04.207+00	2021-09-20 08:39:04.267+00
94	admin::roles.read	\N	{}	[]	1	2021-09-20 08:39:04.357+00	2021-09-20 08:39:04.386+00
25	plugins::upload.read	\N	{}	["admin::is-creator"]	3	2021-09-20 08:39:03.795+00	2021-09-20 08:39:03.819+00
345	plugins::content-manager.explorer.update	application::articles.articles	{"fields": ["Title", "Date", "Logo", "Description", "category", "ArticleSource", "LogoText", "Thumb"]}	[]	1	2021-10-22 20:23:04.291+00	2021-10-22 20:23:04.326+00
62	plugins::upload.assets.create	\N	{}	[]	1	2021-09-20 08:39:04.082+00	2021-09-20 08:39:04.113+00
73	plugins::users-permissions.roles.create	\N	{}	[]	1	2021-09-20 08:39:04.198+00	2021-09-20 08:39:04.253+00
88	admin::webhooks.delete	\N	{}	[]	1	2021-09-20 08:39:04.303+00	2021-09-20 08:39:04.362+00
31	plugins::content-manager.explorer.update	application::the-availability-page.the-availability-page	{"fields": ["AvailabilityItem.Beds", "AvailabilityItem.Baths", "AvailabilityItem.CC", "AvailabilityItem.FloorPlan", "AvailabilityItem.Int", "AvailabilityItem.Ext", "AvailabilityItem.Unit", "AvailabilityItem.Price", "AvailabilityItem.Ret"]}	["admin::is-creator"]	3	2021-09-20 08:39:03.794+00	2021-09-20 08:39:03.82+00
26	plugins::content-manager.explorer.delete	application::the-availability-page.the-availability-page	{}	["admin::is-creator"]	3	2021-09-20 08:39:03.794+00	2021-09-20 08:39:03.819+00
7257	plugins::content-manager.explorer.delete	application::articles.articles	{}	[]	1	2026-01-29 04:44:09.503+00	2026-01-29 04:44:09.519+00
39	plugins::content-manager.explorer.update	application::category.category	{"fields": ["Title"]}	[]	1	2021-09-20 08:39:03.996+00	2021-09-20 08:39:04.032+00
68	plugins::content-manager.collection-types.configure-view	\N	{}	[]	1	2021-09-20 08:39:04.188+00	2021-09-20 08:39:04.206+00
69	plugins::content-manager.single-types.configure-view	\N	{}	[]	1	2021-09-20 08:39:04.188+00	2021-09-20 08:39:04.214+00
84	admin::webhooks.create	\N	{}	[]	1	2021-09-20 08:39:04.285+00	2021-09-20 08:39:04.31+00
83	admin::marketplace.plugins.install	\N	{}	[]	1	2021-09-20 08:39:04.279+00	2021-09-20 08:39:04.31+00
30	plugins::content-manager.explorer.update	application::category.category	{"fields": ["Title"]}	["admin::is-creator"]	3	2021-09-20 08:39:03.795+00	2021-09-20 08:39:03.82+00
40	plugins::content-manager.explorer.read	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-09-20 08:39:03.997+00	2021-09-20 08:39:04.032+00
55	plugins::content-type-builder.read	\N	{}	[]	1	2021-09-20 08:39:04.077+00	2021-09-20 08:39:04.105+00
70	plugins::i18n.locale.delete	\N	{}	[]	1	2021-09-20 08:39:04.188+00	2021-09-20 08:39:04.214+00
85	admin::marketplace.plugins.uninstall	\N	{}	[]	1	2021-09-20 08:39:04.285+00	2021-09-20 08:39:04.353+00
273	plugins::content-manager.explorer.read	application::the-availability-page.the-availability-page	{"fields": ["AvailabilityItem.Beds", "AvailabilityItem.Baths", "AvailabilityItem.CC", "AvailabilityItem.FloorPlan", "AvailabilityItem.Int", "AvailabilityItem.Ext", "AvailabilityItem.Unit", "AvailabilityItem.Price", "AvailabilityItem.Ret", "AvailabilityItem.FloorPlanFile"]}	[]	1	2021-10-19 09:11:52.121+00	2021-10-19 09:11:52.152+00
347	plugins::content-manager.explorer.create	application::articles.articles	{"fields": ["Title", "Date", "Logo", "Description", "category", "ArticleSource", "LogoText", "Thumb"]}	[]	1	2021-10-22 20:23:04.296+00	2021-10-22 20:23:04.326+00
7258	plugins::content-manager.explorer.delete	application::the-availability-page.the-availability-page	{}	[]	1	2026-01-29 04:44:09.505+00	2026-01-29 04:44:09.517+00
41	plugins::content-manager.explorer.read	application::category.category	{"fields": ["Title"]}	[]	1	2021-09-20 08:39:03.998+00	2021-09-20 08:39:04.036+00
58	plugins::upload.read	\N	{}	[]	1	2021-09-20 08:39:04.082+00	2021-09-20 08:39:04.113+00
76	plugins::users-permissions.providers.update	\N	{}	[]	1	2021-09-20 08:39:04.202+00	2021-09-20 08:39:04.254+00
91	admin::users.create	\N	{}	[]	1	2021-09-20 08:39:04.303+00	2021-09-20 08:39:04.367+00
274	plugins::content-manager.explorer.create	application::the-availability-page.the-availability-page	{"fields": ["AvailabilityItem.Beds", "AvailabilityItem.Baths", "AvailabilityItem.CC", "AvailabilityItem.FloorPlan", "AvailabilityItem.Int", "AvailabilityItem.Ext", "AvailabilityItem.Unit", "AvailabilityItem.Price", "AvailabilityItem.Ret", "AvailabilityItem.FloorPlanFile"]}	[]	1	2021-10-19 09:11:52.122+00	2021-10-19 09:11:52.157+00
7259	plugins::content-manager.explorer.delete	application::category.category	{}	[]	1	2026-01-29 04:44:09.505+00	2026-01-29 04:44:09.519+00
32	plugins::content-manager.explorer.read	application::articles.articles	{"fields": ["Title", "Date", "Logo", "Description", "category", "ArticleSource", "Thumb", "LogoText"]}	["admin::is-creator"]	3	2021-09-20 08:39:03.795+00	2022-01-25 15:27:34.534+00
33	plugins::content-manager.explorer.read	application::category.category	{"fields": ["Title"]}	["admin::is-creator"]	3	2021-09-20 08:39:03.796+00	2021-09-20 08:39:03.828+00
7260	plugins::content-manager.explorer.publish	application::articles.articles	{}	[]	1	2026-01-29 04:44:09.505+00	2026-01-29 04:44:09.519+00
63	plugins::upload.assets.copy-link	\N	{}	[]	1	2021-09-20 08:39:04.082+00	2021-09-20 08:39:04.149+00
78	plugins::users-permissions.email-templates.update	\N	{}	[]	1	2021-09-20 08:39:04.207+00	2021-09-20 08:39:04.267+00
96	admin::roles.update	\N	{}	[]	1	2021-09-20 08:39:04.357+00	2021-09-20 08:39:04.385+00
7261	plugins::content-manager.explorer.delete	plugins::users-permissions.user	{}	[]	1	2026-01-29 04:44:09.505+00	2026-01-29 04:44:09.52+00
64	plugins::upload.settings.read	\N	{}	[]	1	2021-09-20 08:39:04.083+00	2021-09-20 08:39:04.15+00
79	plugins::users-permissions.email-templates.read	\N	{}	[]	1	2021-09-20 08:39:04.207+00	2021-09-20 08:39:04.267+00
34	plugins::content-manager.explorer.create	application::articles.articles	{"fields": ["Title", "Date", "Logo", "Description", "category", "ArticleSource", "Thumb", "LogoText"]}	["admin::is-creator"]	3	2021-09-20 08:39:03.796+00	2022-01-25 15:27:34.531+00
35	plugins::content-manager.explorer.read	application::the-availability-page.the-availability-page	{"fields": ["AvailabilityItem.Beds", "AvailabilityItem.Baths", "AvailabilityItem.CC", "AvailabilityItem.FloorPlan", "AvailabilityItem.Int", "AvailabilityItem.Ext", "AvailabilityItem.Unit", "AvailabilityItem.Price", "AvailabilityItem.Ret"]}	["admin::is-creator"]	3	2021-09-20 08:39:03.796+00	2021-09-20 08:39:03.833+00
48	plugins::content-manager.explorer.create	plugins::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	1	2021-09-20 08:39:03.997+00	2021-09-20 08:39:04.036+00
66	plugins::i18n.locale.create	\N	{}	[]	1	2021-09-20 08:39:04.09+00	2021-09-20 08:39:04.158+00
81	plugins::users-permissions.advanced-settings.read	\N	{}	[]	1	2021-09-20 08:39:04.207+00	2021-09-20 08:39:04.267+00
93	admin::roles.create	\N	{}	[]	1	2021-09-20 08:39:04.353+00	2021-09-20 08:39:04.378+00
7262	plugins::content-manager.explorer.publish	application::the-availability-page.the-availability-page	{}	[]	1	2026-01-29 04:44:09.506+00	2026-01-29 04:44:09.523+00
7263	plugins::content-manager.explorer.publish	application::category.category	{}	[]	1	2026-01-29 04:44:09.505+00	2026-01-29 04:44:09.522+00
353	plugins::content-manager.explorer.read	application::articles.articles	{"fields": ["Title", "Date", "Logo", "Description", "category", "ArticleSource", "LogoText", "Thumb"]}	[]	1	2021-10-22 20:23:04.297+00	2021-10-22 20:23:04.346+00
28	plugins::content-manager.explorer.delete	application::articles.articles	{}	["admin::is-creator"]	3	2021-09-20 08:39:03.794+00	2021-09-20 08:39:03.819+00
74	plugins::users-permissions.roles.update	\N	{}	[]	1	2021-09-20 08:39:04.198+00	2021-09-20 08:39:04.253+00
90	admin::users.update	\N	{}	[]	1	2021-09-20 08:39:04.303+00	2021-09-20 08:39:04.362+00
\.


--
-- Data for Name: strapi_role; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_role (id, name, code, description, created_at, updated_at) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2021-09-20 08:39:03.578+00	2021-09-20 08:39:03.578+00
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2021-09-20 08:39:03.609+00	2021-09-20 08:39:03.609+00
3	Author	strapi-author	Authors can manage the content they have created.	2021-09-20 08:39:03.633+00	2021-09-20 08:39:03.633+00
\.


--
-- Data for Name: strapi_users_roles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_users_roles (id, user_id, role_id) FROM stdin;
1	1	1
2	2	1
4	4	1
5	4	3
6	4	2
7	5	1
8	5	3
9	5	2
10	6	1
11	6	2
12	6	3
13	7	1
14	7	2
15	7	3
16	8	1
17	8	2
18	8	3
22	10	1
23	10	2
24	10	3
28	12	1
29	12	2
30	12	3
31	13	1
32	14	1
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: the_availability_pages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.the_availability_pages (id, published_at, created_by, updated_by, created_at, updated_at) FROM stdin;
1	2021-09-20 10:51:51.803+00	2	2	2021-09-20 10:51:49.286+00	2021-10-19 09:33:42.846+00
\.


--
-- Data for Name: the_availability_pages_components; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.the_availability_pages_components (id, field, "order", component_type, component_id, the_availability_page_id) FROM stdin;
3	AvailabilityItem	1	components_availability_list_availability_items	3	1
4	AvailabilityItem	2	components_availability_list_availability_items	4	1
5	AvailabilityItem	3	components_availability_list_availability_items	5	1
6	AvailabilityItem	4	components_availability_list_availability_items	6	1
7	AvailabilityItem	5	components_availability_list_availability_items	7	1
8	AvailabilityItem	6	components_availability_list_availability_items	8	1
9	AvailabilityItem	7	components_availability_list_availability_items	9	1
10	AvailabilityItem	8	components_availability_list_availability_items	10	1
\.


--
-- Data for Name: upload_file; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.upload_file (id, name, "alternativeText", caption, width, height, formats, hash, ext, mime, size, url, "previewUrl", provider, provider_metadata, created_by, updated_by, created_at, updated_at) FROM stdin;
14	210923_1165_FP_PDF_Download_8thFloor.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f/large_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f.jpg", "hash": "large_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f", "mime": "image/jpeg", "name": "large_210923_1165_FP_PDF_Download_8thFloor.jpg", "path": null, "size": 64.76, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f/small_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f.jpg", "hash": "small_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f", "mime": "image/jpeg", "name": "small_210923_1165_FP_PDF_Download_8thFloor.jpg", "path": null, "size": 18.43, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f/medium_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f.jpg", "hash": "medium_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f", "mime": "image/jpeg", "name": "medium_210923_1165_FP_PDF_Download_8thFloor.jpg", "path": null, "size": 37.41, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f/thumbnail_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f.jpg", "hash": "thumbnail_210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f", "mime": "image/jpeg", "name": "thumbnail_210923_1165_FP_PDF_Download_8thFloor.jpg", "path": null, "size": 3.74, "width": 202, "height": 156}}	210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f	.jpg	image/jpeg	536.71	https://storage.googleapis.com/cms-bellemont/210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f/210923_1165_FP_PDF_Download_8th_Floor_9b7b74a48f.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:18:19.035+00	2021-10-22 19:18:19.053+00
2	Curbed_logo_(white).svg@2x.png			136	70	\N	Curbed_logo_white_svg_2x_6e1769fef6	.png	image/png	3.34	https://storage.googleapis.com/cms-bellemont/Curbed_logo_white_svg_2x_6e1769fef6/Curbed_logo_white_svg_2x_6e1769fef6.png	\N	google-cloud-storage	\N	2	2	2021-09-20 10:49:23.351+00	2021-09-20 10:49:23.369+00
15	210923_1165_FP_PDF_Download_7thFloor.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a/large_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a.jpg", "hash": "large_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a", "mime": "image/jpeg", "name": "large_210923_1165_FP_PDF_Download_7thFloor.jpg", "path": null, "size": 64.86, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a/small_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a.jpg", "hash": "small_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a", "mime": "image/jpeg", "name": "small_210923_1165_FP_PDF_Download_7thFloor.jpg", "path": null, "size": 18.46, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a/medium_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a.jpg", "hash": "medium_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a", "mime": "image/jpeg", "name": "medium_210923_1165_FP_PDF_Download_7thFloor.jpg", "path": null, "size": 37.09, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a/thumbnail_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a.jpg", "hash": "thumbnail_210923_1165_FP_PDF_Download_7th_Floor_9087527c3a", "mime": "image/jpeg", "name": "thumbnail_210923_1165_FP_PDF_Download_7thFloor.jpg", "path": null, "size": 3.72, "width": 202, "height": 156}}	210923_1165_FP_PDF_Download_7th_Floor_9087527c3a	.jpg	image/jpeg	537.53	https://storage.googleapis.com/cms-bellemont/210923_1165_FP_PDF_Download_7th_Floor_9087527c3a/210923_1165_FP_PDF_Download_7th_Floor_9087527c3a.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:18:19.086+00	2021-10-22 19:18:19.103+00
19	210924_1165_FP_PDF_Download_PH-C_Lower.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144/large_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144.jpg", "hash": "large_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Download_PH-C_Lower.jpg", "path": null, "size": 62.47, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144/small_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144.jpg", "hash": "small_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Download_PH-C_Lower.jpg", "path": null, "size": 18.26, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144/medium_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144.jpg", "hash": "medium_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Download_PH-C_Lower.jpg", "path": null, "size": 36.13, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144/thumbnail_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Download_PH-C_Lower.jpg", "path": null, "size": 3.73, "width": 202, "height": 156}}	210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144	.jpg	image/jpeg	436.27	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144/210924_1165_FP_PDF_Download_PH_C_Lower_3c8775c144.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:19:48.628+00	2021-10-22 19:19:48.658+00
3	Mask Group 14@2x.png			2560	1558	{"large": {"ext": ".png", "url": "https://storage.googleapis.com/cms-bellemont/large_Mask_Group_14_2x_26aead5499/large_Mask_Group_14_2x_26aead5499.png", "hash": "large_Mask_Group_14_2x_26aead5499", "mime": "image/png", "name": "large_Mask Group 14@2x.png", "path": null, "size": 1250.39, "width": 1000, "height": 609}, "small": {"ext": ".png", "url": "https://storage.googleapis.com/cms-bellemont/small_Mask_Group_14_2x_26aead5499/small_Mask_Group_14_2x_26aead5499.png", "hash": "small_Mask_Group_14_2x_26aead5499", "mime": "image/png", "name": "small_Mask Group 14@2x.png", "path": null, "size": 316.17, "width": 500, "height": 304}, "medium": {"ext": ".png", "url": "https://storage.googleapis.com/cms-bellemont/medium_Mask_Group_14_2x_26aead5499/medium_Mask_Group_14_2x_26aead5499.png", "hash": "medium_Mask_Group_14_2x_26aead5499", "mime": "image/png", "name": "medium_Mask Group 14@2x.png", "path": null, "size": 701.93, "width": 750, "height": 456}, "thumbnail": {"ext": ".png", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Mask_Group_14_2x_26aead5499/thumbnail_Mask_Group_14_2x_26aead5499.png", "hash": "thumbnail_Mask_Group_14_2x_26aead5499", "mime": "image/png", "name": "thumbnail_Mask Group 14@2x.png", "path": null, "size": 84.56, "width": 245, "height": 149}}	Mask_Group_14_2x_26aead5499	.png	image/png	7558.60	https://storage.googleapis.com/cms-bellemont/Mask_Group_14_2x_26aead5499/Mask_Group_14_2x_26aead5499.png	\N	google-cloud-storage	\N	2	2	2021-09-20 10:49:36.699+00	2021-09-20 10:49:36.713+00
4	The+Real+Deal-logo@2x.png			192	96	\N	The_Real_Deal_logo_2x_45496d7c29	.png	image/png	2.26	https://storage.googleapis.com/cms-bellemont/The_Real_Deal_logo_2x_45496d7c29/The_Real_Deal_logo_2x_45496d7c29.png	\N	google-cloud-storage	\N	2	2	2021-09-21 10:08:15.34+00	2021-09-21 10:08:15.357+00
5	2luxury2.svg			90	16	\N	2luxury2_7915e4d34b	.svg	image/svg+xml	0.28	https://storage.googleapis.com/cms-bellemont/2luxury2_7915e4d34b/2luxury2_7915e4d34b.svg	\N	google-cloud-storage	\N	2	2	2021-09-21 10:12:13.003+00	2021-09-21 10:12:13.017+00
6	test.rar			\N	\N	\N	test_a0d809bef3	.rar	application/octet-stream	80.31	https://storage.googleapis.com/cms-bellemont/test_a0d809bef3/test_a0d809bef3.rar	\N	google-cloud-storage	\N	2	2	2021-10-19 09:33:13.068+00	2021-10-19 09:33:13.09+00
16	210924_1165_FP_PDF_Download_PH-D_Upper.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056/large_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056.jpg", "hash": "large_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Download_PH-D_Upper.jpg", "path": null, "size": 47.1, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056/small_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056.jpg", "hash": "small_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Download_PH-D_Upper.jpg", "path": null, "size": 14.22, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056/medium_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056.jpg", "hash": "medium_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Download_PH-D_Upper.jpg", "path": null, "size": 27.96, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056/thumbnail_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Download_PH-D_Upper.jpg", "path": null, "size": 3.04, "width": 202, "height": 156}}	210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056	.jpg	image/jpeg	309.94	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056/210924_1165_FP_PDF_Download_PH_D_Upper_26b8f75056.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:19:47.949+00	2021-10-22 19:19:48.177+00
17	210924_1165_FP_PDF_Download_PH-C_Upper.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f/large_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f.jpg", "hash": "large_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Download_PH-C_Upper.jpg", "path": null, "size": 53.79, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f/small_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f.jpg", "hash": "small_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Download_PH-C_Upper.jpg", "path": null, "size": 15.99, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f/medium_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f.jpg", "hash": "medium_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Download_PH-C_Upper.jpg", "path": null, "size": 31.71, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f/thumbnail_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Download_PH-C_Upper.jpg", "path": null, "size": 3.31, "width": 202, "height": 156}}	210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f	.jpg	image/jpeg	430.47	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f/210924_1165_FP_PDF_Download_PH_C_Upper_6228b11b8f.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:19:48.509+00	2021-10-22 19:19:48.536+00
18	210924_1165_FP_PDF_Download_PH-D_Lower.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733/large_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733.jpg", "hash": "large_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Download_PH-D_Lower.jpg", "path": null, "size": 53.18, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733/small_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733.jpg", "hash": "small_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Download_PH-D_Lower.jpg", "path": null, "size": 15.91, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733/medium_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733.jpg", "hash": "medium_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Download_PH-D_Lower.jpg", "path": null, "size": 31.08, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733/thumbnail_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Download_PH_D_Lower_e283864733", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Download_PH-D_Lower.jpg", "path": null, "size": 3.34, "width": 202, "height": 156}}	210924_1165_FP_PDF_Download_PH_D_Lower_e283864733	.jpg	image/jpeg	412.22	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Download_PH_D_Lower_e283864733/210924_1165_FP_PDF_Download_PH_D_Lower_e283864733.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:19:48.61+00	2021-10-22 19:19:48.633+00
9	210923_1165_FP_PDF_Download_5S.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a/large_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a.jpg", "hash": "large_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a", "mime": "image/jpeg", "name": "large_210923_1165_FP_PDF_Download_5S.jpg", "path": null, "size": 46.18, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a/small_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a.jpg", "hash": "small_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a", "mime": "image/jpeg", "name": "small_210923_1165_FP_PDF_Download_5S.jpg", "path": null, "size": 13.31, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a/medium_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a.jpg", "hash": "medium_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a", "mime": "image/jpeg", "name": "medium_210923_1165_FP_PDF_Download_5S.jpg", "path": null, "size": 26.98, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a/thumbnail_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a.jpg", "hash": "thumbnail_210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a", "mime": "image/jpeg", "name": "thumbnail_210923_1165_FP_PDF_Download_5S.jpg", "path": null, "size": 2.87, "width": 202, "height": 156}}	210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a	.jpg	image/jpeg	382.95	https://storage.googleapis.com/cms-bellemont/210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a/210923_1165_FP_PDF_Download_5_S_4f4a0b4c2a.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:17:57.968+00	2021-10-22 19:17:58.011+00
7	210923_1165_FP_PDF_Download_3S.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210923_1165_FP_PDF_Download_3_S_b8c527d84a/large_210923_1165_FP_PDF_Download_3_S_b8c527d84a.jpg", "hash": "large_210923_1165_FP_PDF_Download_3_S_b8c527d84a", "mime": "image/jpeg", "name": "large_210923_1165_FP_PDF_Download_3S.jpg", "path": null, "size": 42.47, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210923_1165_FP_PDF_Download_3_S_b8c527d84a/small_210923_1165_FP_PDF_Download_3_S_b8c527d84a.jpg", "hash": "small_210923_1165_FP_PDF_Download_3_S_b8c527d84a", "mime": "image/jpeg", "name": "small_210923_1165_FP_PDF_Download_3S.jpg", "path": null, "size": 12.49, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210923_1165_FP_PDF_Download_3_S_b8c527d84a/medium_210923_1165_FP_PDF_Download_3_S_b8c527d84a.jpg", "hash": "medium_210923_1165_FP_PDF_Download_3_S_b8c527d84a", "mime": "image/jpeg", "name": "medium_210923_1165_FP_PDF_Download_3S.jpg", "path": null, "size": 24.67, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210923_1165_FP_PDF_Download_3_S_b8c527d84a/thumbnail_210923_1165_FP_PDF_Download_3_S_b8c527d84a.jpg", "hash": "thumbnail_210923_1165_FP_PDF_Download_3_S_b8c527d84a", "mime": "image/jpeg", "name": "thumbnail_210923_1165_FP_PDF_Download_3S.jpg", "path": null, "size": 2.77, "width": 202, "height": 156}}	210923_1165_FP_PDF_Download_3_S_b8c527d84a	.jpg	image/jpeg	329.84	https://storage.googleapis.com/cms-bellemont/210923_1165_FP_PDF_Download_3_S_b8c527d84a/210923_1165_FP_PDF_Download_3_S_b8c527d84a.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:17:57.953+00	2021-10-22 19:17:58.004+00
8	210923_1165_FP_PDF_Download_3N.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210923_1165_FP_PDF_Download_3_N_51ae3257cb/large_210923_1165_FP_PDF_Download_3_N_51ae3257cb.jpg", "hash": "large_210923_1165_FP_PDF_Download_3_N_51ae3257cb", "mime": "image/jpeg", "name": "large_210923_1165_FP_PDF_Download_3N.jpg", "path": null, "size": 42.08, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210923_1165_FP_PDF_Download_3_N_51ae3257cb/small_210923_1165_FP_PDF_Download_3_N_51ae3257cb.jpg", "hash": "small_210923_1165_FP_PDF_Download_3_N_51ae3257cb", "mime": "image/jpeg", "name": "small_210923_1165_FP_PDF_Download_3N.jpg", "path": null, "size": 12.45, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210923_1165_FP_PDF_Download_3_N_51ae3257cb/medium_210923_1165_FP_PDF_Download_3_N_51ae3257cb.jpg", "hash": "medium_210923_1165_FP_PDF_Download_3_N_51ae3257cb", "mime": "image/jpeg", "name": "medium_210923_1165_FP_PDF_Download_3N.jpg", "path": null, "size": 24.05, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210923_1165_FP_PDF_Download_3_N_51ae3257cb/thumbnail_210923_1165_FP_PDF_Download_3_N_51ae3257cb.jpg", "hash": "thumbnail_210923_1165_FP_PDF_Download_3_N_51ae3257cb", "mime": "image/jpeg", "name": "thumbnail_210923_1165_FP_PDF_Download_3N.jpg", "path": null, "size": 2.72, "width": 202, "height": 156}}	210923_1165_FP_PDF_Download_3_N_51ae3257cb	.jpg	image/jpeg	313.59	https://storage.googleapis.com/cms-bellemont/210923_1165_FP_PDF_Download_3_N_51ae3257cb/210923_1165_FP_PDF_Download_3_N_51ae3257cb.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:17:57.965+00	2021-10-22 19:17:58.009+00
10	210923_1165_FP_PDF_Download_4S.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210923_1165_FP_PDF_Download_4_S_6091fe0a9b/large_210923_1165_FP_PDF_Download_4_S_6091fe0a9b.jpg", "hash": "large_210923_1165_FP_PDF_Download_4_S_6091fe0a9b", "mime": "image/jpeg", "name": "large_210923_1165_FP_PDF_Download_4S.jpg", "path": null, "size": 42.11, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210923_1165_FP_PDF_Download_4_S_6091fe0a9b/small_210923_1165_FP_PDF_Download_4_S_6091fe0a9b.jpg", "hash": "small_210923_1165_FP_PDF_Download_4_S_6091fe0a9b", "mime": "image/jpeg", "name": "small_210923_1165_FP_PDF_Download_4S.jpg", "path": null, "size": 12.3, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210923_1165_FP_PDF_Download_4_S_6091fe0a9b/medium_210923_1165_FP_PDF_Download_4_S_6091fe0a9b.jpg", "hash": "medium_210923_1165_FP_PDF_Download_4_S_6091fe0a9b", "mime": "image/jpeg", "name": "medium_210923_1165_FP_PDF_Download_4S.jpg", "path": null, "size": 24.27, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210923_1165_FP_PDF_Download_4_S_6091fe0a9b/thumbnail_210923_1165_FP_PDF_Download_4_S_6091fe0a9b.jpg", "hash": "thumbnail_210923_1165_FP_PDF_Download_4_S_6091fe0a9b", "mime": "image/jpeg", "name": "thumbnail_210923_1165_FP_PDF_Download_4S.jpg", "path": null, "size": 2.69, "width": 202, "height": 156}}	210923_1165_FP_PDF_Download_4_S_6091fe0a9b	.jpg	image/jpeg	351.24	https://storage.googleapis.com/cms-bellemont/210923_1165_FP_PDF_Download_4_S_6091fe0a9b/210923_1165_FP_PDF_Download_4_S_6091fe0a9b.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:17:58.025+00	2021-10-22 19:17:58.064+00
11	210923_1165_FP_PDF_Download_Duplex-Upper.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70/large_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70.jpg", "hash": "large_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70", "mime": "image/jpeg", "name": "large_210923_1165_FP_PDF_Download_Duplex-Upper.jpg", "path": null, "size": 43.37, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70/small_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70.jpg", "hash": "small_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70", "mime": "image/jpeg", "name": "small_210923_1165_FP_PDF_Download_Duplex-Upper.jpg", "path": null, "size": 12.96, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70/medium_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70.jpg", "hash": "medium_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70", "mime": "image/jpeg", "name": "medium_210923_1165_FP_PDF_Download_Duplex-Upper.jpg", "path": null, "size": 25.84, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70/thumbnail_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70.jpg", "hash": "thumbnail_210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70", "mime": "image/jpeg", "name": "thumbnail_210923_1165_FP_PDF_Download_Duplex-Upper.jpg", "path": null, "size": 2.76, "width": 202, "height": 156}}	210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70	.jpg	image/jpeg	304.00	https://storage.googleapis.com/cms-bellemont/210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70/210923_1165_FP_PDF_Download_Duplex_Upper_3512339f70.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:18:18.46+00	2021-10-22 19:18:18.481+00
12	210923_1165_FP_PDF_Download_Duplex-Lower.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb/large_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb.jpg", "hash": "large_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb", "mime": "image/jpeg", "name": "large_210923_1165_FP_PDF_Download_Duplex-Lower.jpg", "path": null, "size": 42.3, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb/small_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb.jpg", "hash": "small_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb", "mime": "image/jpeg", "name": "small_210923_1165_FP_PDF_Download_Duplex-Lower.jpg", "path": null, "size": 12.41, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb/medium_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb.jpg", "hash": "medium_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb", "mime": "image/jpeg", "name": "medium_210923_1165_FP_PDF_Download_Duplex-Lower.jpg", "path": null, "size": 25.4, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb/thumbnail_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb.jpg", "hash": "thumbnail_210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb", "mime": "image/jpeg", "name": "thumbnail_210923_1165_FP_PDF_Download_Duplex-Lower.jpg", "path": null, "size": 2.75, "width": 202, "height": 156}}	210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb	.jpg	image/jpeg	365.74	https://storage.googleapis.com/cms-bellemont/210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb/210923_1165_FP_PDF_Download_Duplex_Lower_b979feecdb.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:18:18.86+00	2021-10-22 19:18:18.885+00
13	210923_1165_FP_PDF_Download_9thFloor.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0/large_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0.jpg", "hash": "large_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0", "mime": "image/jpeg", "name": "large_210923_1165_FP_PDF_Download_9thFloor.jpg", "path": null, "size": 69.23, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0/small_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0.jpg", "hash": "small_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0", "mime": "image/jpeg", "name": "small_210923_1165_FP_PDF_Download_9thFloor.jpg", "path": null, "size": 19.45, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0/medium_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0.jpg", "hash": "medium_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0", "mime": "image/jpeg", "name": "medium_210923_1165_FP_PDF_Download_9thFloor.jpg", "path": null, "size": 39.75, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0/thumbnail_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0.jpg", "hash": "thumbnail_210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0", "mime": "image/jpeg", "name": "thumbnail_210923_1165_FP_PDF_Download_9thFloor.jpg", "path": null, "size": 4.05, "width": 202, "height": 156}}	210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0	.jpg	image/jpeg	584.06	https://storage.googleapis.com/cms-bellemont/210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0/210923_1165_FP_PDF_Download_9th_Floor_5c47c2eed0.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:18:19.008+00	2021-10-22 19:18:19.028+00
20	210924_1165_FP_PDF_Downloa_PH-A.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a/large_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a.jpg", "hash": "large_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Downloa_PH-A.jpg", "path": null, "size": 66.94, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a/small_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a.jpg", "hash": "small_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Downloa_PH-A.jpg", "path": null, "size": 19.03, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a/medium_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a.jpg", "hash": "medium_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Downloa_PH-A.jpg", "path": null, "size": 39.06, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a/thumbnail_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Downloa_PH-A.jpg", "path": null, "size": 3.78, "width": 202, "height": 156}}	210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a	.jpg	image/jpeg	546.50	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a/210924_1165_FP_PDF_Downloa_PH_A_2dc3fca19a.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:19:48.721+00	2021-10-22 19:19:48.739+00
21	210924_1165_FP_PDF_Download_PH-B.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Download_PH_B_7369d99dbe/large_210924_1165_FP_PDF_Download_PH_B_7369d99dbe.jpg", "hash": "large_210924_1165_FP_PDF_Download_PH_B_7369d99dbe", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Download_PH-B.jpg", "path": null, "size": 60.96, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Download_PH_B_7369d99dbe/small_210924_1165_FP_PDF_Download_PH_B_7369d99dbe.jpg", "hash": "small_210924_1165_FP_PDF_Download_PH_B_7369d99dbe", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Download_PH-B.jpg", "path": null, "size": 17.56, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Download_PH_B_7369d99dbe/medium_210924_1165_FP_PDF_Download_PH_B_7369d99dbe.jpg", "hash": "medium_210924_1165_FP_PDF_Download_PH_B_7369d99dbe", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Download_PH-B.jpg", "path": null, "size": 35.19, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Download_PH_B_7369d99dbe/thumbnail_210924_1165_FP_PDF_Download_PH_B_7369d99dbe.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Download_PH_B_7369d99dbe", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Download_PH-B.jpg", "path": null, "size": 3.56, "width": 202, "height": 156}}	210924_1165_FP_PDF_Download_PH_B_7369d99dbe	.jpg	image/jpeg	482.88	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Download_PH_B_7369d99dbe/210924_1165_FP_PDF_Download_PH_B_7369d99dbe.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:19:48.803+00	2021-10-22 19:19:48.815+00
22	210924_1165_FP_PDF_Download_PH-B.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Download_PH_B_97f2785c76/large_210924_1165_FP_PDF_Download_PH_B_97f2785c76.jpg", "hash": "large_210924_1165_FP_PDF_Download_PH_B_97f2785c76", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Download_PH-B.jpg", "path": null, "size": 60.96, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Download_PH_B_97f2785c76/small_210924_1165_FP_PDF_Download_PH_B_97f2785c76.jpg", "hash": "small_210924_1165_FP_PDF_Download_PH_B_97f2785c76", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Download_PH-B.jpg", "path": null, "size": 17.56, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Download_PH_B_97f2785c76/medium_210924_1165_FP_PDF_Download_PH_B_97f2785c76.jpg", "hash": "medium_210924_1165_FP_PDF_Download_PH_B_97f2785c76", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Download_PH-B.jpg", "path": null, "size": 35.19, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Download_PH_B_97f2785c76/thumbnail_210924_1165_FP_PDF_Download_PH_B_97f2785c76.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Download_PH_B_97f2785c76", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Download_PH-B.jpg", "path": null, "size": 3.56, "width": 202, "height": 156}}	210924_1165_FP_PDF_Download_PH_B_97f2785c76	.jpg	image/jpeg	482.88	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Download_PH_B_97f2785c76/210924_1165_FP_PDF_Download_PH_B_97f2785c76.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:21:06.468+00	2021-10-22 19:21:06.487+00
23	210924_1165_FP_PDF_Downloa_PH-A.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25/large_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25.jpg", "hash": "large_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Downloa_PH-A.jpg", "path": null, "size": 66.94, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25/small_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25.jpg", "hash": "small_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Downloa_PH-A.jpg", "path": null, "size": 19.03, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25/medium_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25.jpg", "hash": "medium_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Downloa_PH-A.jpg", "path": null, "size": 39.06, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25/thumbnail_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Downloa_PH-A.jpg", "path": null, "size": 3.78, "width": 202, "height": 156}}	210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25	.jpg	image/jpeg	546.50	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25/210924_1165_FP_PDF_Downloa_PH_A_52a8e30f25.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:21:06.522+00	2021-10-22 19:21:06.54+00
24	210924_1165_FP_PDF_Download_PH-C_Lower.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705/large_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705.jpg", "hash": "large_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Download_PH-C_Lower.jpg", "path": null, "size": 62.47, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705/small_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705.jpg", "hash": "small_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Download_PH-C_Lower.jpg", "path": null, "size": 18.26, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705/medium_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705.jpg", "hash": "medium_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Download_PH-C_Lower.jpg", "path": null, "size": 36.13, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705/thumbnail_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Download_PH-C_Lower.jpg", "path": null, "size": 3.73, "width": 202, "height": 156}}	210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705	.jpg	image/jpeg	436.27	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705/210924_1165_FP_PDF_Download_PH_C_Lower_ebcefd7705.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:21:06.525+00	2021-10-22 19:21:06.544+00
25	210924_1165_FP_PDF_Download_PH-D_Upper.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b/large_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b.jpg", "hash": "large_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Download_PH-D_Upper.jpg", "path": null, "size": 47.1, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b/small_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b.jpg", "hash": "small_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Download_PH-D_Upper.jpg", "path": null, "size": 14.22, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b/medium_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b.jpg", "hash": "medium_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Download_PH-D_Upper.jpg", "path": null, "size": 27.96, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b/thumbnail_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Download_PH-D_Upper.jpg", "path": null, "size": 3.04, "width": 202, "height": 156}}	210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b	.jpg	image/jpeg	309.94	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b/210924_1165_FP_PDF_Download_PH_D_Upper_4d3209dd2b.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:21:18.492+00	2021-10-22 19:21:18.515+00
26	210924_1165_FP_PDF_Download_PH-D_Lower.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f/large_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f.jpg", "hash": "large_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Download_PH-D_Lower.jpg", "path": null, "size": 53.18, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f/small_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f.jpg", "hash": "small_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Download_PH-D_Lower.jpg", "path": null, "size": 15.91, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f/medium_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f.jpg", "hash": "medium_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Download_PH-D_Lower.jpg", "path": null, "size": 31.08, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f/thumbnail_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Download_PH-D_Lower.jpg", "path": null, "size": 3.34, "width": 202, "height": 156}}	210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f	.jpg	image/jpeg	412.22	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f/210924_1165_FP_PDF_Download_PH_D_Lower_025ffeb03f.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:21:18.743+00	2021-10-22 19:21:18.756+00
27	210924_1165_FP_PDF_Download_PH-C_Upper.jpg			3300	2550	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7/large_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7.jpg", "hash": "large_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7", "mime": "image/jpeg", "name": "large_210924_1165_FP_PDF_Download_PH-C_Upper.jpg", "path": null, "size": 53.79, "width": 1000, "height": 773}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7/small_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7.jpg", "hash": "small_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7", "mime": "image/jpeg", "name": "small_210924_1165_FP_PDF_Download_PH-C_Upper.jpg", "path": null, "size": 15.99, "width": 500, "height": 386}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7/medium_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7.jpg", "hash": "medium_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7", "mime": "image/jpeg", "name": "medium_210924_1165_FP_PDF_Download_PH-C_Upper.jpg", "path": null, "size": 31.71, "width": 750, "height": 580}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7/thumbnail_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7.jpg", "hash": "thumbnail_210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7", "mime": "image/jpeg", "name": "thumbnail_210924_1165_FP_PDF_Download_PH-C_Upper.jpg", "path": null, "size": 3.31, "width": 202, "height": 156}}	210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7	.jpg	image/jpeg	430.47	https://storage.googleapis.com/cms-bellemont/210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7/210924_1165_FP_PDF_Download_PH_C_Upper_a0d56124f7.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:21:18.77+00	2021-10-22 19:21:18.786+00
28	7-Miki.jpeg	The Bellemont Residence		739	510	{"small": {"ext": ".jpeg", "url": "https://storage.googleapis.com/cms-bellemont/small_7_Miki_9199494edf/small_7_Miki_9199494edf.jpeg", "hash": "small_7_Miki_9199494edf", "mime": "image/jpeg", "name": "small_7-Miki.jpeg", "path": null, "size": 24.41, "width": 500, "height": 345}, "thumbnail": {"ext": ".jpeg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_7_Miki_9199494edf/thumbnail_7_Miki_9199494edf.jpeg", "hash": "thumbnail_7_Miki_9199494edf", "mime": "image/jpeg", "name": "thumbnail_7-Miki.jpeg", "path": null, "size": 7.68, "width": 226, "height": 156}}	7_Miki_9199494edf	.jpeg	image/jpeg	41.89	https://storage.googleapis.com/cms-bellemont/7_Miki_9199494edf/7_Miki_9199494edf.jpeg	\N	google-cloud-storage	\N	9	2	2021-10-22 19:51:08.179+00	2021-11-12 13:35:09.051+00
30	5- PH Dining.jpg			3000	2250	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_5_PH_Dining_f461f655fa/large_5_PH_Dining_f461f655fa.jpg", "hash": "large_5_PH_Dining_f461f655fa", "mime": "image/jpeg", "name": "large_5- PH Dining.jpg", "path": null, "size": 71.14, "width": 1000, "height": 750}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_5_PH_Dining_f461f655fa/small_5_PH_Dining_f461f655fa.jpg", "hash": "small_5_PH_Dining_f461f655fa", "mime": "image/jpeg", "name": "small_5- PH Dining.jpg", "path": null, "size": 22.4, "width": 500, "height": 375}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_5_PH_Dining_f461f655fa/medium_5_PH_Dining_f461f655fa.jpg", "hash": "medium_5_PH_Dining_f461f655fa", "mime": "image/jpeg", "name": "medium_5- PH Dining.jpg", "path": null, "size": 42.77, "width": 750, "height": 563}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_5_PH_Dining_f461f655fa/thumbnail_5_PH_Dining_f461f655fa.jpg", "hash": "thumbnail_5_PH_Dining_f461f655fa", "mime": "image/jpeg", "name": "thumbnail_5- PH Dining.jpg", "path": null, "size": 5.99, "width": 208, "height": 156}}	5_PH_Dining_f461f655fa	.jpg	image/jpeg	498.69	https://storage.googleapis.com/cms-bellemont/5_PH_Dining_f461f655fa/5_PH_Dining_f461f655fa.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:51:15.969+00	2021-10-22 19:51:16.089+00
31	1- Arrival.jpg			3000	3000	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_1_Arrival_05c522f667/large_1_Arrival_05c522f667.jpg", "hash": "large_1_Arrival_05c522f667", "mime": "image/jpeg", "name": "large_1- Arrival.jpg", "path": null, "size": 183.43, "width": 1000, "height": 1000}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_1_Arrival_05c522f667/small_1_Arrival_05c522f667.jpg", "hash": "small_1_Arrival_05c522f667", "mime": "image/jpeg", "name": "small_1- Arrival.jpg", "path": null, "size": 51.24, "width": 500, "height": 500}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_1_Arrival_05c522f667/medium_1_Arrival_05c522f667.jpg", "hash": "medium_1_Arrival_05c522f667", "mime": "image/jpeg", "name": "medium_1- Arrival.jpg", "path": null, "size": 104.9, "width": 750, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_1_Arrival_05c522f667/thumbnail_1_Arrival_05c522f667.jpg", "hash": "thumbnail_1_Arrival_05c522f667", "mime": "image/jpeg", "name": "thumbnail_1- Arrival.jpg", "path": null, "size": 7.13, "width": 156, "height": 156}}	1_Arrival_05c522f667	.jpg	image/jpeg	1675.21	https://storage.googleapis.com/cms-bellemont/1_Arrival_05c522f667/1_Arrival_05c522f667.jpg	\N	google-cloud-storage	\N	9	9	2021-10-22 19:52:08.185+00	2021-10-22 19:52:08.205+00
29	2-Lobby.jpg	Upper East Side Luxury Condo		2000	1000	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_2_Lobby_e7b4a96cc6/large_2_Lobby_e7b4a96cc6.jpg", "hash": "large_2_Lobby_e7b4a96cc6", "mime": "image/jpeg", "name": "large_2-Lobby.jpg", "path": null, "size": 78.79, "width": 1000, "height": 500}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_2_Lobby_e7b4a96cc6/small_2_Lobby_e7b4a96cc6.jpg", "hash": "small_2_Lobby_e7b4a96cc6", "mime": "image/jpeg", "name": "small_2-Lobby.jpg", "path": null, "size": 23.67, "width": 500, "height": 250}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_2_Lobby_e7b4a96cc6/medium_2_Lobby_e7b4a96cc6.jpg", "hash": "medium_2_Lobby_e7b4a96cc6", "mime": "image/jpeg", "name": "medium_2-Lobby.jpg", "path": null, "size": 46.8, "width": 750, "height": 375}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_2_Lobby_e7b4a96cc6/thumbnail_2_Lobby_e7b4a96cc6.jpg", "hash": "thumbnail_2_Lobby_e7b4a96cc6", "mime": "image/jpeg", "name": "thumbnail_2-Lobby.jpg", "path": null, "size": 7.29, "width": 245, "height": 123}}	2_Lobby_e7b4a96cc6	.jpg	image/jpeg	262.86	https://storage.googleapis.com/cms-bellemont/2_Lobby_e7b4a96cc6/2_Lobby_e7b4a96cc6.jpg	\N	google-cloud-storage	\N	9	2	2021-10-22 19:51:11.114+00	2021-11-12 13:33:17.24+00
33	4-LR.jpg	New Condos Upper East Side		3940	1968	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_4_LR_d12237af6c/large_4_LR_d12237af6c.jpg", "hash": "large_4_LR_d12237af6c", "mime": "image/jpeg", "name": "large_4-LR.jpg", "path": null, "size": 60.7, "width": 1000, "height": 499}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_4_LR_d12237af6c/small_4_LR_d12237af6c.jpg", "hash": "small_4_LR_d12237af6c", "mime": "image/jpeg", "name": "small_4-LR.jpg", "path": null, "size": 20.04, "width": 500, "height": 250}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_4_LR_d12237af6c/medium_4_LR_d12237af6c.jpg", "hash": "medium_4_LR_d12237af6c", "mime": "image/jpeg", "name": "medium_4-LR.jpg", "path": null, "size": 37.04, "width": 750, "height": 375}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_4_LR_d12237af6c/thumbnail_4_LR_d12237af6c.jpg", "hash": "thumbnail_4_LR_d12237af6c", "mime": "image/jpeg", "name": "thumbnail_4-LR.jpg", "path": null, "size": 6.6, "width": 245, "height": 122}}	4_LR_d12237af6c	.jpg	image/jpeg	699.21	https://storage.googleapis.com/cms-bellemont/4_LR_d12237af6c/4_LR_d12237af6c.jpg	\N	google-cloud-storage	\N	9	2	2021-10-22 19:52:43.495+00	2021-11-12 13:33:41.126+00
35	8- Building.jpg	Luxury Condos Upper East Side NYC		2160	3071	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_8_Building_d717cad1b7/large_8_Building_d717cad1b7.jpg", "hash": "large_8_Building_d717cad1b7", "mime": "image/jpeg", "name": "large_8- Building.jpg", "path": null, "size": 89.56, "width": 703, "height": 1000}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_8_Building_d717cad1b7/small_8_Building_d717cad1b7.jpg", "hash": "small_8_Building_d717cad1b7", "mime": "image/jpeg", "name": "small_8- Building.jpg", "path": null, "size": 26.56, "width": 352, "height": 500}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_8_Building_d717cad1b7/medium_8_Building_d717cad1b7.jpg", "hash": "medium_8_Building_d717cad1b7", "mime": "image/jpeg", "name": "medium_8- Building.jpg", "path": null, "size": 53.53, "width": 528, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_8_Building_d717cad1b7/thumbnail_8_Building_d717cad1b7.jpg", "hash": "thumbnail_8_Building_d717cad1b7", "mime": "image/jpeg", "name": "thumbnail_8- Building.jpg", "path": null, "size": 4.27, "width": 110, "height": 156}}	8_Building_d717cad1b7	.jpg	image/jpeg	642.60	https://storage.googleapis.com/cms-bellemont/8_Building_d717cad1b7/8_Building_d717cad1b7.jpg	\N	google-cloud-storage	\N	9	2	2021-10-22 19:53:15.825+00	2021-11-12 13:34:45.996+00
34	6- PH Terrace.jpg	Upper East Side Penthouse		3000	1934	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_6_PH_Terrace_11826177db/large_6_PH_Terrace_11826177db.jpg", "hash": "large_6_PH_Terrace_11826177db", "mime": "image/jpeg", "name": "large_6- PH Terrace.jpg", "path": null, "size": 104.38, "width": 1000, "height": 645}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_6_PH_Terrace_11826177db/small_6_PH_Terrace_11826177db.jpg", "hash": "small_6_PH_Terrace_11826177db", "mime": "image/jpeg", "name": "small_6- PH Terrace.jpg", "path": null, "size": 31.01, "width": 500, "height": 322}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_6_PH_Terrace_11826177db/medium_6_PH_Terrace_11826177db.jpg", "hash": "medium_6_PH_Terrace_11826177db", "mime": "image/jpeg", "name": "medium_6- PH Terrace.jpg", "path": null, "size": 62.46, "width": 750, "height": 484}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_6_PH_Terrace_11826177db/thumbnail_6_PH_Terrace_11826177db.jpg", "hash": "thumbnail_6_PH_Terrace_11826177db", "mime": "image/jpeg", "name": "thumbnail_6- PH Terrace.jpg", "path": null, "size": 8.81, "width": 242, "height": 156}}	6_PH_Terrace_11826177db	.jpg	image/jpeg	780.09	https://storage.googleapis.com/cms-bellemont/6_PH_Terrace_11826177db/6_PH_Terrace_11826177db.jpg	\N	google-cloud-storage	\N	9	2	2021-10-22 19:53:01.776+00	2021-11-12 13:32:09.796+00
39	Naf_1165_12_PHD-Staircase.jpg			5700	3976	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_12_PHD_Staircase_23c16c0829/large_Naf_1165_12_PHD_Staircase_23c16c0829.jpg", "hash": "large_Naf_1165_12_PHD_Staircase_23c16c0829", "mime": "image/jpeg", "name": "large_Naf_1165_12_PHD-Staircase.jpg", "path": null, "size": 61.46, "width": 1000, "height": 698}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_12_PHD_Staircase_23c16c0829/small_Naf_1165_12_PHD_Staircase_23c16c0829.jpg", "hash": "small_Naf_1165_12_PHD_Staircase_23c16c0829", "mime": "image/jpeg", "name": "small_Naf_1165_12_PHD-Staircase.jpg", "path": null, "size": 21.55, "width": 500, "height": 349}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_12_PHD_Staircase_23c16c0829/medium_Naf_1165_12_PHD_Staircase_23c16c0829.jpg", "hash": "medium_Naf_1165_12_PHD_Staircase_23c16c0829", "mime": "image/jpeg", "name": "medium_Naf_1165_12_PHD-Staircase.jpg", "path": null, "size": 39.75, "width": 750, "height": 523}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_12_PHD_Staircase_23c16c0829/thumbnail_Naf_1165_12_PHD_Staircase_23c16c0829.jpg", "hash": "thumbnail_Naf_1165_12_PHD_Staircase_23c16c0829", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_12_PHD-Staircase.jpg", "path": null, "size": 6.77, "width": 224, "height": 156}}	Naf_1165_12_PHD_Staircase_23c16c0829	.jpg	image/jpeg	1297.16	https://storage.googleapis.com/cms-bellemont/Naf_1165_12_PHD_Staircase_23c16c0829/Naf_1165_12_PHD_Staircase_23c16c0829.jpg	\N	google-cloud-storage	\N	6	6	2021-11-03 16:22:06.094+00	2021-11-03 16:22:06.134+00
40	Naf_1165_09_Roof-Terrace.jpg			5310	3665	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_09_Roof_Terrace_9bed279c55/large_Naf_1165_09_Roof_Terrace_9bed279c55.jpg", "hash": "large_Naf_1165_09_Roof_Terrace_9bed279c55", "mime": "image/jpeg", "name": "large_Naf_1165_09_Roof-Terrace.jpg", "path": null, "size": 145.54, "width": 1000, "height": 690}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_09_Roof_Terrace_9bed279c55/small_Naf_1165_09_Roof_Terrace_9bed279c55.jpg", "hash": "small_Naf_1165_09_Roof_Terrace_9bed279c55", "mime": "image/jpeg", "name": "small_Naf_1165_09_Roof-Terrace.jpg", "path": null, "size": 40.33, "width": 500, "height": 345}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_09_Roof_Terrace_9bed279c55/medium_Naf_1165_09_Roof_Terrace_9bed279c55.jpg", "hash": "medium_Naf_1165_09_Roof_Terrace_9bed279c55", "mime": "image/jpeg", "name": "medium_Naf_1165_09_Roof-Terrace.jpg", "path": null, "size": 85.77, "width": 750, "height": 518}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_09_Roof_Terrace_9bed279c55/thumbnail_Naf_1165_09_Roof_Terrace_9bed279c55.jpg", "hash": "thumbnail_Naf_1165_09_Roof_Terrace_9bed279c55", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_09_Roof-Terrace.jpg", "path": null, "size": 10.34, "width": 226, "height": 156}}	Naf_1165_09_Roof_Terrace_9bed279c55	.jpg	image/jpeg	3789.86	https://storage.googleapis.com/cms-bellemont/Naf_1165_09_Roof_Terrace_9bed279c55/Naf_1165_09_Roof_Terrace_9bed279c55.jpg	\N	google-cloud-storage	\N	6	6	2021-11-09 15:26:17.294+00	2021-11-09 15:26:17.319+00
41	Naf_1165_17_PHA-Dining.jpg			6000	6000	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_17_PHA_Dining_e2913da283/large_Naf_1165_17_PHA_Dining_e2913da283.jpg", "hash": "large_Naf_1165_17_PHA_Dining_e2913da283", "mime": "image/jpeg", "name": "large_Naf_1165_17_PHA-Dining.jpg", "path": null, "size": 121.34, "width": 1000, "height": 1000}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_17_PHA_Dining_e2913da283/small_Naf_1165_17_PHA_Dining_e2913da283.jpg", "hash": "small_Naf_1165_17_PHA_Dining_e2913da283", "mime": "image/jpeg", "name": "small_Naf_1165_17_PHA-Dining.jpg", "path": null, "size": 37.22, "width": 500, "height": 500}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_17_PHA_Dining_e2913da283/medium_Naf_1165_17_PHA_Dining_e2913da283.jpg", "hash": "medium_Naf_1165_17_PHA_Dining_e2913da283", "mime": "image/jpeg", "name": "medium_Naf_1165_17_PHA-Dining.jpg", "path": null, "size": 72.63, "width": 750, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_17_PHA_Dining_e2913da283/thumbnail_Naf_1165_17_PHA_Dining_e2913da283.jpg", "hash": "thumbnail_Naf_1165_17_PHA_Dining_e2913da283", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_17_PHA-Dining.jpg", "path": null, "size": 5.51, "width": 156, "height": 156}}	Naf_1165_17_PHA_Dining_e2913da283	.jpg	image/jpeg	3801.86	https://storage.googleapis.com/cms-bellemont/Naf_1165_17_PHA_Dining_e2913da283/Naf_1165_17_PHA_Dining_e2913da283.jpg	\N	google-cloud-storage	\N	6	6	2021-11-09 15:56:43.196+00	2021-11-09 15:56:43.213+00
42	Naf_1165_23_Roof-Terrace_Vig_Day.jpg			5700	4556	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154/large_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154.jpg", "hash": "large_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154", "mime": "image/jpeg", "name": "large_Naf_1165_23_Roof-Terrace_Vig_Day.jpg", "path": null, "size": 144.25, "width": 1000, "height": 799}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154/small_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154.jpg", "hash": "small_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154", "mime": "image/jpeg", "name": "small_Naf_1165_23_Roof-Terrace_Vig_Day.jpg", "path": null, "size": 43.61, "width": 500, "height": 400}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154/medium_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154.jpg", "hash": "medium_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154", "mime": "image/jpeg", "name": "medium_Naf_1165_23_Roof-Terrace_Vig_Day.jpg", "path": null, "size": 87.99, "width": 750, "height": 599}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154/thumbnail_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154.jpg", "hash": "thumbnail_Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_23_Roof-Terrace_Vig_Day.jpg", "path": null, "size": 9.69, "width": 195, "height": 156}}	Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154	.jpg	image/jpeg	3409.32	https://storage.googleapis.com/cms-bellemont/Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154/Naf_1165_23_Roof_Terrace_Vig_Day_caa8fd1154.jpg	\N	google-cloud-storage	\N	6	6	2021-11-09 15:58:15+00	2021-11-09 15:58:15.015+00
44	Naf_1165_04_Lobby.jpg			6000	3354	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_04_Lobby_257852513b/large_Naf_1165_04_Lobby_257852513b.jpg", "hash": "large_Naf_1165_04_Lobby_257852513b", "mime": "image/jpeg", "name": "large_Naf_1165_04_Lobby.jpg", "path": null, "size": 58.03, "width": 1000, "height": 559}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_04_Lobby_257852513b/small_Naf_1165_04_Lobby_257852513b.jpg", "hash": "small_Naf_1165_04_Lobby_257852513b", "mime": "image/jpeg", "name": "small_Naf_1165_04_Lobby.jpg", "path": null, "size": 19.89, "width": 500, "height": 280}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_04_Lobby_257852513b/medium_Naf_1165_04_Lobby_257852513b.jpg", "hash": "medium_Naf_1165_04_Lobby_257852513b", "mime": "image/jpeg", "name": "medium_Naf_1165_04_Lobby.jpg", "path": null, "size": 36.65, "width": 750, "height": 419}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_04_Lobby_257852513b/thumbnail_Naf_1165_04_Lobby_257852513b.jpg", "hash": "thumbnail_Naf_1165_04_Lobby_257852513b", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_04_Lobby.jpg", "path": null, "size": 6.77, "width": 245, "height": 137}}	Naf_1165_04_Lobby_257852513b	.jpg	image/jpeg	994.65	https://storage.googleapis.com/cms-bellemont/Naf_1165_04_Lobby_257852513b/Naf_1165_04_Lobby_257852513b.jpg	\N	google-cloud-storage	\N	6	6	2021-11-09 16:02:29.068+00	2021-11-09 16:02:29.087+00
45	Naf_1165_03_Arrival_Dusk.jpg			5578	4288	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_03_Arrival_Dusk_27ba3f61c8/large_Naf_1165_03_Arrival_Dusk_27ba3f61c8.jpg", "hash": "large_Naf_1165_03_Arrival_Dusk_27ba3f61c8", "mime": "image/jpeg", "name": "large_Naf_1165_03_Arrival_Dusk.jpg", "path": null, "size": 164.15, "width": 1000, "height": 769}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_03_Arrival_Dusk_27ba3f61c8/small_Naf_1165_03_Arrival_Dusk_27ba3f61c8.jpg", "hash": "small_Naf_1165_03_Arrival_Dusk_27ba3f61c8", "mime": "image/jpeg", "name": "small_Naf_1165_03_Arrival_Dusk.jpg", "path": null, "size": 45.78, "width": 500, "height": 384}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_03_Arrival_Dusk_27ba3f61c8/medium_Naf_1165_03_Arrival_Dusk_27ba3f61c8.jpg", "hash": "medium_Naf_1165_03_Arrival_Dusk_27ba3f61c8", "mime": "image/jpeg", "name": "medium_Naf_1165_03_Arrival_Dusk.jpg", "path": null, "size": 97.13, "width": 750, "height": 577}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_03_Arrival_Dusk_27ba3f61c8/thumbnail_Naf_1165_03_Arrival_Dusk_27ba3f61c8.jpg", "hash": "thumbnail_Naf_1165_03_Arrival_Dusk_27ba3f61c8", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_03_Arrival_Dusk.jpg", "path": null, "size": 9.36, "width": 203, "height": 156}}	Naf_1165_03_Arrival_Dusk_27ba3f61c8	.jpg	image/jpeg	4854.55	https://storage.googleapis.com/cms-bellemont/Naf_1165_03_Arrival_Dusk_27ba3f61c8/Naf_1165_03_Arrival_Dusk_27ba3f61c8.jpg	\N	google-cloud-storage	\N	6	6	2021-11-09 16:03:17.301+00	2021-11-09 16:03:17.319+00
46	Naf_1165_01_Hero-nosignage.jpg			3923	5712	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_01_Hero_nosignage_76b5e649d9/large_Naf_1165_01_Hero_nosignage_76b5e649d9.jpg", "hash": "large_Naf_1165_01_Hero_nosignage_76b5e649d9", "mime": "image/jpeg", "name": "large_Naf_1165_01_Hero-nosignage.jpg", "path": null, "size": 132.98, "width": 687, "height": 1000}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_01_Hero_nosignage_76b5e649d9/small_Naf_1165_01_Hero_nosignage_76b5e649d9.jpg", "hash": "small_Naf_1165_01_Hero_nosignage_76b5e649d9", "mime": "image/jpeg", "name": "small_Naf_1165_01_Hero-nosignage.jpg", "path": null, "size": 39.07, "width": 343, "height": 500}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_01_Hero_nosignage_76b5e649d9/medium_Naf_1165_01_Hero_nosignage_76b5e649d9.jpg", "hash": "medium_Naf_1165_01_Hero_nosignage_76b5e649d9", "mime": "image/jpeg", "name": "medium_Naf_1165_01_Hero-nosignage.jpg", "path": null, "size": 81.41, "width": 515, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_01_Hero_nosignage_76b5e649d9/thumbnail_Naf_1165_01_Hero_nosignage_76b5e649d9.jpg", "hash": "thumbnail_Naf_1165_01_Hero_nosignage_76b5e649d9", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_01_Hero-nosignage.jpg", "path": null, "size": 5.46, "width": 107, "height": 156}}	Naf_1165_01_Hero_nosignage_76b5e649d9	.jpg	image/jpeg	3581.15	https://storage.googleapis.com/cms-bellemont/Naf_1165_01_Hero_nosignage_76b5e649d9/Naf_1165_01_Hero_nosignage_76b5e649d9.jpg	\N	google-cloud-storage	\N	6	6	2021-11-09 16:05:22.457+00	2021-11-09 16:05:22.474+00
38	2-Lobby.jpg	Upper East Side Townhouse		2000	1000	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_2_Lobby_6d2da5524c/large_2_Lobby_6d2da5524c.jpg", "hash": "large_2_Lobby_6d2da5524c", "mime": "image/jpeg", "name": "large_2-Lobby.jpg", "path": null, "size": 78.79, "width": 1000, "height": 500}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_2_Lobby_6d2da5524c/small_2_Lobby_6d2da5524c.jpg", "hash": "small_2_Lobby_6d2da5524c", "mime": "image/jpeg", "name": "small_2-Lobby.jpg", "path": null, "size": 23.67, "width": 500, "height": 250}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_2_Lobby_6d2da5524c/medium_2_Lobby_6d2da5524c.jpg", "hash": "medium_2_Lobby_6d2da5524c", "mime": "image/jpeg", "name": "medium_2-Lobby.jpg", "path": null, "size": 46.8, "width": 750, "height": 375}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_2_Lobby_6d2da5524c/thumbnail_2_Lobby_6d2da5524c.jpg", "hash": "thumbnail_2_Lobby_6d2da5524c", "mime": "image/jpeg", "name": "thumbnail_2-Lobby.jpg", "path": null, "size": 7.29, "width": 245, "height": 123}}	2_Lobby_6d2da5524c	.jpg	image/jpeg	262.86	https://storage.googleapis.com/cms-bellemont/2_Lobby_6d2da5524c/2_Lobby_6d2da5524c.jpg	\N	google-cloud-storage	\N	6	2	2021-10-22 21:01:45.556+00	2021-11-12 13:29:32.051+00
32	3-PHB LR.jpg	Luxury Condos		3000	3000	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_3_PHB_LR_2f460c3ceb/large_3_PHB_LR_2f460c3ceb.jpg", "hash": "large_3_PHB_LR_2f460c3ceb", "mime": "image/jpeg", "name": "large_3-PHB LR.jpg", "path": null, "size": 98.44, "width": 1000, "height": 1000}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_3_PHB_LR_2f460c3ceb/small_3_PHB_LR_2f460c3ceb.jpg", "hash": "small_3_PHB_LR_2f460c3ceb", "mime": "image/jpeg", "name": "small_3-PHB LR.jpg", "path": null, "size": 30.06, "width": 500, "height": 500}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_3_PHB_LR_2f460c3ceb/medium_3_PHB_LR_2f460c3ceb.jpg", "hash": "medium_3_PHB_LR_2f460c3ceb", "mime": "image/jpeg", "name": "medium_3-PHB LR.jpg", "path": null, "size": 58.71, "width": 750, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_3_PHB_LR_2f460c3ceb/thumbnail_3_PHB_LR_2f460c3ceb.jpg", "hash": "thumbnail_3_PHB_LR_2f460c3ceb", "mime": "image/jpeg", "name": "thumbnail_3-PHB LR.jpg", "path": null, "size": 4.9, "width": 156, "height": 156}}	3_PHB_LR_2f460c3ceb	.jpg	image/jpeg	801.97	https://storage.googleapis.com/cms-bellemont/3_PHB_LR_2f460c3ceb/3_PHB_LR_2f460c3ceb.jpg	\N	google-cloud-storage	\N	9	2	2021-10-22 19:52:24.133+00	2021-11-12 13:32:57.954+00
47	Naf_1165_18_PHB-Great-Room.jpg			10000	4105	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_18_PHB_Great_Room_9d30f7c69f/large_Naf_1165_18_PHB_Great_Room_9d30f7c69f.jpg", "hash": "large_Naf_1165_18_PHB_Great_Room_9d30f7c69f", "mime": "image/jpeg", "name": "large_Naf_1165_18_PHB-Great-Room.jpg", "path": null, "size": 54.23, "width": 1000, "height": 411}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_18_PHB_Great_Room_9d30f7c69f/small_Naf_1165_18_PHB_Great_Room_9d30f7c69f.jpg", "hash": "small_Naf_1165_18_PHB_Great_Room_9d30f7c69f", "mime": "image/jpeg", "name": "small_Naf_1165_18_PHB-Great-Room.jpg", "path": null, "size": 17.88, "width": 500, "height": 205}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_18_PHB_Great_Room_9d30f7c69f/medium_Naf_1165_18_PHB_Great_Room_9d30f7c69f.jpg", "hash": "medium_Naf_1165_18_PHB_Great_Room_9d30f7c69f", "mime": "image/jpeg", "name": "medium_Naf_1165_18_PHB-Great-Room.jpg", "path": null, "size": 33.89, "width": 750, "height": 308}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_18_PHB_Great_Room_9d30f7c69f/thumbnail_Naf_1165_18_PHB_Great_Room_9d30f7c69f.jpg", "hash": "thumbnail_Naf_1165_18_PHB_Great_Room_9d30f7c69f", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_18_PHB-Great-Room.jpg", "path": null, "size": 5.94, "width": 245, "height": 101}}	Naf_1165_18_PHB_Great_Room_9d30f7c69f	.jpg	image/jpeg	3297.69	https://storage.googleapis.com/cms-bellemont/Naf_1165_18_PHB_Great_Room_9d30f7c69f/Naf_1165_18_PHB_Great_Room_9d30f7c69f.jpg	\N	google-cloud-storage	\N	6	6	2021-11-15 21:37:41.666+00	2021-11-15 21:37:41.691+00
48	Naf_1165_24_Roof-Terrace_Vig_Sunset.jpg			5700	4556	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962/large_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962.jpg", "hash": "large_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962", "mime": "image/jpeg", "name": "large_Naf_1165_24_Roof-Terrace_Vig_Sunset.jpg", "path": null, "size": 95.82, "width": 1000, "height": 799}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962/small_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962.jpg", "hash": "small_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962", "mime": "image/jpeg", "name": "small_Naf_1165_24_Roof-Terrace_Vig_Sunset.jpg", "path": null, "size": 28.1, "width": 500, "height": 400}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962/medium_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962.jpg", "hash": "medium_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962", "mime": "image/jpeg", "name": "medium_Naf_1165_24_Roof-Terrace_Vig_Sunset.jpg", "path": null, "size": 57.37, "width": 750, "height": 599}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962/thumbnail_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962.jpg", "hash": "thumbnail_Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_24_Roof-Terrace_Vig_Sunset.jpg", "path": null, "size": 6.18, "width": 195, "height": 156}}	Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962	.jpg	image/jpeg	2396.39	https://storage.googleapis.com/cms-bellemont/Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962/Naf_1165_24_Roof_Terrace_Vig_Sunset_beda46c962.jpg	\N	google-cloud-storage	\N	6	6	2021-11-16 15:20:29.009+00	2021-11-16 15:20:29.029+00
49	Naf_1165_03_Arrival_Residential-Marketing.jpg			5700	3547	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_03_Arrival_Residential_Marketing_c244caea34/large_Naf_1165_03_Arrival_Residential_Marketing_c244caea34.jpg", "hash": "large_Naf_1165_03_Arrival_Residential_Marketing_c244caea34", "mime": "image/jpeg", "name": "large_Naf_1165_03_Arrival_Residential-Marketing.jpg", "path": null, "size": 121.82, "width": 1000, "height": 622}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_03_Arrival_Residential_Marketing_c244caea34/small_Naf_1165_03_Arrival_Residential_Marketing_c244caea34.jpg", "hash": "small_Naf_1165_03_Arrival_Residential_Marketing_c244caea34", "mime": "image/jpeg", "name": "small_Naf_1165_03_Arrival_Residential-Marketing.jpg", "path": null, "size": 36.81, "width": 500, "height": 311}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_03_Arrival_Residential_Marketing_c244caea34/medium_Naf_1165_03_Arrival_Residential_Marketing_c244caea34.jpg", "hash": "medium_Naf_1165_03_Arrival_Residential_Marketing_c244caea34", "mime": "image/jpeg", "name": "medium_Naf_1165_03_Arrival_Residential-Marketing.jpg", "path": null, "size": 74.92, "width": 750, "height": 467}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_03_Arrival_Residential_Marketing_c244caea34/thumbnail_Naf_1165_03_Arrival_Residential_Marketing_c244caea34.jpg", "hash": "thumbnail_Naf_1165_03_Arrival_Residential_Marketing_c244caea34", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_03_Arrival_Residential-Marketing.jpg", "path": null, "size": 11.08, "width": 245, "height": 152}}	Naf_1165_03_Arrival_Residential_Marketing_c244caea34	.jpg	image/jpeg	3189.32	https://storage.googleapis.com/cms-bellemont/Naf_1165_03_Arrival_Residential_Marketing_c244caea34/Naf_1165_03_Arrival_Residential_Marketing_c244caea34.jpg	\N	google-cloud-storage	\N	6	6	2021-11-29 19:15:09.22+00	2021-11-29 19:15:09.242+00
50	Naf_1165_14_PHC-Master-Bedroom.jpg			5406	3766	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_14_PHC_Master_Bedroom_3887db0494/large_Naf_1165_14_PHC_Master_Bedroom_3887db0494.jpg", "hash": "large_Naf_1165_14_PHC_Master_Bedroom_3887db0494", "mime": "image/jpeg", "name": "large_Naf_1165_14_PHC-Master-Bedroom.jpg", "path": null, "size": 64.74, "width": 1000, "height": 697}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_14_PHC_Master_Bedroom_3887db0494/small_Naf_1165_14_PHC_Master_Bedroom_3887db0494.jpg", "hash": "small_Naf_1165_14_PHC_Master_Bedroom_3887db0494", "mime": "image/jpeg", "name": "small_Naf_1165_14_PHC-Master-Bedroom.jpg", "path": null, "size": 20.94, "width": 500, "height": 348}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_14_PHC_Master_Bedroom_3887db0494/medium_Naf_1165_14_PHC_Master_Bedroom_3887db0494.jpg", "hash": "medium_Naf_1165_14_PHC_Master_Bedroom_3887db0494", "mime": "image/jpeg", "name": "medium_Naf_1165_14_PHC-Master-Bedroom.jpg", "path": null, "size": 40.24, "width": 750, "height": 522}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_14_PHC_Master_Bedroom_3887db0494/thumbnail_Naf_1165_14_PHC_Master_Bedroom_3887db0494.jpg", "hash": "thumbnail_Naf_1165_14_PHC_Master_Bedroom_3887db0494", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_14_PHC-Master-Bedroom.jpg", "path": null, "size": 6.08, "width": 224, "height": 156}}	Naf_1165_14_PHC_Master_Bedroom_3887db0494	.jpg	image/jpeg	1489.57	https://storage.googleapis.com/cms-bellemont/Naf_1165_14_PHC_Master_Bedroom_3887db0494/Naf_1165_14_PHC_Master_Bedroom_3887db0494.jpg	\N	google-cloud-storage	\N	6	6	2022-01-04 20:15:58.532+00	2022-01-04 20:15:58.556+00
51	Naf_1165_11_Kitchen-tight-crop_web.jpg			4765	3453	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5/large_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5.jpg", "hash": "large_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5", "mime": "image/jpeg", "name": "large_Naf_1165_11_Kitchen-tight-crop_web.jpg", "path": null, "size": 71.57, "width": 1000, "height": 725}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5/small_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5.jpg", "hash": "small_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5", "mime": "image/jpeg", "name": "small_Naf_1165_11_Kitchen-tight-crop_web.jpg", "path": null, "size": 23.72, "width": 500, "height": 362}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5/medium_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5.jpg", "hash": "medium_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5", "mime": "image/jpeg", "name": "medium_Naf_1165_11_Kitchen-tight-crop_web.jpg", "path": null, "size": 45.41, "width": 750, "height": 543}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5/thumbnail_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5.jpg", "hash": "thumbnail_Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_11_Kitchen-tight-crop_web.jpg", "path": null, "size": 6.64, "width": 215, "height": 156}}	Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5	.jpg	image/jpeg	1104.29	https://storage.googleapis.com/cms-bellemont/Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5/Naf_1165_11_Kitchen_tight_crop_web_e0544bd7b5.jpg	\N	google-cloud-storage	\N	6	6	2022-01-04 20:18:01.648+00	2022-01-04 20:18:01.661+00
52	Naf_1165_25_Roof-Terrace-Dusk-Firepit.jpg			5700	3041	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7/large_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7.jpg", "hash": "large_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7", "mime": "image/jpeg", "name": "large_Naf_1165_25_Roof-Terrace-Dusk-Firepit.jpg", "path": null, "size": 64.21, "width": 1000, "height": 534}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7/small_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7.jpg", "hash": "small_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7", "mime": "image/jpeg", "name": "small_Naf_1165_25_Roof-Terrace-Dusk-Firepit.jpg", "path": null, "size": 20.74, "width": 500, "height": 267}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7/medium_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7.jpg", "hash": "medium_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7", "mime": "image/jpeg", "name": "medium_Naf_1165_25_Roof-Terrace-Dusk-Firepit.jpg", "path": null, "size": 39.41, "width": 750, "height": 400}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7/thumbnail_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7.jpg", "hash": "thumbnail_Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_25_Roof-Terrace-Dusk-Firepit.jpg", "path": null, "size": 6.98, "width": 245, "height": 131}}	Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7	.jpg	image/jpeg	1913.82	https://storage.googleapis.com/cms-bellemont/Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7/Naf_1165_25_Roof_Terrace_Dusk_Firepit_89da266ae7.jpg	\N	google-cloud-storage	\N	6	6	2022-01-04 20:19:54.366+00	2022-01-04 20:26:31.169+00
53	Naf_1165_21_PHA-Outside-in.jpg			6000	2463	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_21_PHA_Outside_in_2a3000299d/large_Naf_1165_21_PHA_Outside_in_2a3000299d.jpg", "hash": "large_Naf_1165_21_PHA_Outside_in_2a3000299d", "mime": "image/jpeg", "name": "large_Naf_1165_21_PHA-Outside-in.jpg", "path": null, "size": 73.23, "width": 1000, "height": 411}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_21_PHA_Outside_in_2a3000299d/small_Naf_1165_21_PHA_Outside_in_2a3000299d.jpg", "hash": "small_Naf_1165_21_PHA_Outside_in_2a3000299d", "mime": "image/jpeg", "name": "small_Naf_1165_21_PHA-Outside-in.jpg", "path": null, "size": 21.97, "width": 500, "height": 205}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_21_PHA_Outside_in_2a3000299d/medium_Naf_1165_21_PHA_Outside_in_2a3000299d.jpg", "hash": "medium_Naf_1165_21_PHA_Outside_in_2a3000299d", "mime": "image/jpeg", "name": "medium_Naf_1165_21_PHA-Outside-in.jpg", "path": null, "size": 44.83, "width": 750, "height": 308}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_21_PHA_Outside_in_2a3000299d/thumbnail_Naf_1165_21_PHA_Outside_in_2a3000299d.jpg", "hash": "thumbnail_Naf_1165_21_PHA_Outside_in_2a3000299d", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_21_PHA-Outside-in.jpg", "path": null, "size": 6.77, "width": 245, "height": 101}}	Naf_1165_21_PHA_Outside_in_2a3000299d	.jpg	image/jpeg	2193.40	https://storage.googleapis.com/cms-bellemont/Naf_1165_21_PHA_Outside_in_2a3000299d/Naf_1165_21_PHA_Outside_in_2a3000299d.jpg	\N	google-cloud-storage	\N	6	6	2022-01-04 21:55:10.964+00	2022-01-04 21:55:10.981+00
54	Naf_1165_15_Master-Bathroom.jpg			3958	5342	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_15_Master_Bathroom_077e5e3208/large_Naf_1165_15_Master_Bathroom_077e5e3208.jpg", "hash": "large_Naf_1165_15_Master_Bathroom_077e5e3208", "mime": "image/jpeg", "name": "large_Naf_1165_15_Master-Bathroom.jpg", "path": null, "size": 58.41, "width": 741, "height": 1000}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_15_Master_Bathroom_077e5e3208/small_Naf_1165_15_Master_Bathroom_077e5e3208.jpg", "hash": "small_Naf_1165_15_Master_Bathroom_077e5e3208", "mime": "image/jpeg", "name": "small_Naf_1165_15_Master-Bathroom.jpg", "path": null, "size": 20.13, "width": 370, "height": 500}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_15_Master_Bathroom_077e5e3208/medium_Naf_1165_15_Master_Bathroom_077e5e3208.jpg", "hash": "medium_Naf_1165_15_Master_Bathroom_077e5e3208", "mime": "image/jpeg", "name": "medium_Naf_1165_15_Master-Bathroom.jpg", "path": null, "size": 37.23, "width": 556, "height": 750}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_15_Master_Bathroom_077e5e3208/thumbnail_Naf_1165_15_Master_Bathroom_077e5e3208.jpg", "hash": "thumbnail_Naf_1165_15_Master_Bathroom_077e5e3208", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_15_Master-Bathroom.jpg", "path": null, "size": 3.88, "width": 116, "height": 156}}	Naf_1165_15_Master_Bathroom_077e5e3208	.jpg	image/jpeg	934.33	https://storage.googleapis.com/cms-bellemont/Naf_1165_15_Master_Bathroom_077e5e3208/Naf_1165_15_Master_Bathroom_077e5e3208.jpg	\N	google-cloud-storage	\N	6	6	2022-01-04 21:58:35.467+00	2022-01-04 21:58:35.48+00
55	Naf_1165_08_Theater.jpg			6000	4017	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_08_Theater_7df8cf2834/large_Naf_1165_08_Theater_7df8cf2834.jpg", "hash": "large_Naf_1165_08_Theater_7df8cf2834", "mime": "image/jpeg", "name": "large_Naf_1165_08_Theater.jpg", "path": null, "size": 55.95, "width": 1000, "height": 670}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_08_Theater_7df8cf2834/small_Naf_1165_08_Theater_7df8cf2834.jpg", "hash": "small_Naf_1165_08_Theater_7df8cf2834", "mime": "image/jpeg", "name": "small_Naf_1165_08_Theater.jpg", "path": null, "size": 20.13, "width": 500, "height": 335}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_08_Theater_7df8cf2834/medium_Naf_1165_08_Theater_7df8cf2834.jpg", "hash": "medium_Naf_1165_08_Theater_7df8cf2834", "mime": "image/jpeg", "name": "medium_Naf_1165_08_Theater.jpg", "path": null, "size": 36.15, "width": 750, "height": 502}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_08_Theater_7df8cf2834/thumbnail_Naf_1165_08_Theater_7df8cf2834.jpg", "hash": "thumbnail_Naf_1165_08_Theater_7df8cf2834", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_08_Theater.jpg", "path": null, "size": 6.84, "width": 233, "height": 156}}	Naf_1165_08_Theater_7df8cf2834	.jpg	image/jpeg	2972.68	https://storage.googleapis.com/cms-bellemont/Naf_1165_08_Theater_7df8cf2834/Naf_1165_08_Theater_7df8cf2834.jpg	\N	google-cloud-storage	\N	6	6	2022-01-21 17:29:07.69+00	2022-01-21 17:29:07.711+00
56	Naf_1165_09_Roof-Terrace.jpg			5310	3665	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_09_Roof_Terrace_33bfd7c0c6/large_Naf_1165_09_Roof_Terrace_33bfd7c0c6.jpg", "hash": "large_Naf_1165_09_Roof_Terrace_33bfd7c0c6", "mime": "image/jpeg", "name": "large_Naf_1165_09_Roof-Terrace.jpg", "path": null, "size": 145.54, "width": 1000, "height": 690}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_09_Roof_Terrace_33bfd7c0c6/small_Naf_1165_09_Roof_Terrace_33bfd7c0c6.jpg", "hash": "small_Naf_1165_09_Roof_Terrace_33bfd7c0c6", "mime": "image/jpeg", "name": "small_Naf_1165_09_Roof-Terrace.jpg", "path": null, "size": 40.33, "width": 500, "height": 345}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_09_Roof_Terrace_33bfd7c0c6/medium_Naf_1165_09_Roof_Terrace_33bfd7c0c6.jpg", "hash": "medium_Naf_1165_09_Roof_Terrace_33bfd7c0c6", "mime": "image/jpeg", "name": "medium_Naf_1165_09_Roof-Terrace.jpg", "path": null, "size": 85.77, "width": 750, "height": 518}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_09_Roof_Terrace_33bfd7c0c6/thumbnail_Naf_1165_09_Roof_Terrace_33bfd7c0c6.jpg", "hash": "thumbnail_Naf_1165_09_Roof_Terrace_33bfd7c0c6", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_09_Roof-Terrace.jpg", "path": null, "size": 10.34, "width": 226, "height": 156}}	Naf_1165_09_Roof_Terrace_33bfd7c0c6	.jpg	image/jpeg	3789.86	https://storage.googleapis.com/cms-bellemont/Naf_1165_09_Roof_Terrace_33bfd7c0c6/Naf_1165_09_Roof_Terrace_33bfd7c0c6.jpg	\N	google-cloud-storage	\N	6	6	2022-02-08 21:31:35.238+00	2022-02-08 21:31:35.261+00
57	Naf_1165_04_Lobby.jpg			6000	3354	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_04_Lobby_dbd1ff5f1f/large_Naf_1165_04_Lobby_dbd1ff5f1f.jpg", "hash": "large_Naf_1165_04_Lobby_dbd1ff5f1f", "mime": "image/jpeg", "name": "large_Naf_1165_04_Lobby.jpg", "path": null, "size": 58.03, "width": 1000, "height": 559}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_04_Lobby_dbd1ff5f1f/small_Naf_1165_04_Lobby_dbd1ff5f1f.jpg", "hash": "small_Naf_1165_04_Lobby_dbd1ff5f1f", "mime": "image/jpeg", "name": "small_Naf_1165_04_Lobby.jpg", "path": null, "size": 19.89, "width": 500, "height": 280}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_04_Lobby_dbd1ff5f1f/medium_Naf_1165_04_Lobby_dbd1ff5f1f.jpg", "hash": "medium_Naf_1165_04_Lobby_dbd1ff5f1f", "mime": "image/jpeg", "name": "medium_Naf_1165_04_Lobby.jpg", "path": null, "size": 36.65, "width": 750, "height": 419}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_04_Lobby_dbd1ff5f1f/thumbnail_Naf_1165_04_Lobby_dbd1ff5f1f.jpg", "hash": "thumbnail_Naf_1165_04_Lobby_dbd1ff5f1f", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_04_Lobby.jpg", "path": null, "size": 6.77, "width": 245, "height": 137}}	Naf_1165_04_Lobby_dbd1ff5f1f	.jpg	image/jpeg	994.65	https://storage.googleapis.com/cms-bellemont/Naf_1165_04_Lobby_dbd1ff5f1f/Naf_1165_04_Lobby_dbd1ff5f1f.jpg	\N	google-cloud-storage	\N	6	6	2022-02-08 21:46:57.523+00	2022-02-08 21:46:57.54+00
58	Naf_1165_05_Fitness-Center.jpg			6000	3190	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_05_Fitness_Center_0c8fe41ae1/large_Naf_1165_05_Fitness_Center_0c8fe41ae1.jpg", "hash": "large_Naf_1165_05_Fitness_Center_0c8fe41ae1", "mime": "image/jpeg", "name": "large_Naf_1165_05_Fitness-Center.jpg", "path": null, "size": 66.69, "width": 1000, "height": 532}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_05_Fitness_Center_0c8fe41ae1/small_Naf_1165_05_Fitness_Center_0c8fe41ae1.jpg", "hash": "small_Naf_1165_05_Fitness_Center_0c8fe41ae1", "mime": "image/jpeg", "name": "small_Naf_1165_05_Fitness-Center.jpg", "path": null, "size": 21.2, "width": 500, "height": 266}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_05_Fitness_Center_0c8fe41ae1/medium_Naf_1165_05_Fitness_Center_0c8fe41ae1.jpg", "hash": "medium_Naf_1165_05_Fitness_Center_0c8fe41ae1", "mime": "image/jpeg", "name": "medium_Naf_1165_05_Fitness-Center.jpg", "path": null, "size": 40.84, "width": 750, "height": 399}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_05_Fitness_Center_0c8fe41ae1/thumbnail_Naf_1165_05_Fitness_Center_0c8fe41ae1.jpg", "hash": "thumbnail_Naf_1165_05_Fitness_Center_0c8fe41ae1", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_05_Fitness-Center.jpg", "path": null, "size": 6.88, "width": 245, "height": 130}}	Naf_1165_05_Fitness_Center_0c8fe41ae1	.jpg	image/jpeg	2135.56	https://storage.googleapis.com/cms-bellemont/Naf_1165_05_Fitness_Center_0c8fe41ae1/Naf_1165_05_Fitness_Center_0c8fe41ae1.jpg	\N	google-cloud-storage	\N	6	6	2022-02-08 21:48:37.883+00	2022-02-08 21:48:37.908+00
60	Naf_1165_07_Playroom.jpg			6000	4592	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_07_Playroom_0155cf88a1/large_Naf_1165_07_Playroom_0155cf88a1.jpg", "hash": "large_Naf_1165_07_Playroom_0155cf88a1", "mime": "image/jpeg", "name": "large_Naf_1165_07_Playroom.jpg", "path": null, "size": 108.02, "width": 1000, "height": 765}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_07_Playroom_0155cf88a1/small_Naf_1165_07_Playroom_0155cf88a1.jpg", "hash": "small_Naf_1165_07_Playroom_0155cf88a1", "mime": "image/jpeg", "name": "small_Naf_1165_07_Playroom.jpg", "path": null, "size": 33.6, "width": 500, "height": 383}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_07_Playroom_0155cf88a1/medium_Naf_1165_07_Playroom_0155cf88a1.jpg", "hash": "medium_Naf_1165_07_Playroom_0155cf88a1", "mime": "image/jpeg", "name": "medium_Naf_1165_07_Playroom.jpg", "path": null, "size": 64.63, "width": 750, "height": 574}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_07_Playroom_0155cf88a1/thumbnail_Naf_1165_07_Playroom_0155cf88a1.jpg", "hash": "thumbnail_Naf_1165_07_Playroom_0155cf88a1", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_07_Playroom.jpg", "path": null, "size": 8.04, "width": 204, "height": 156}}	Naf_1165_07_Playroom_0155cf88a1	.jpg	image/jpeg	3582.73	https://storage.googleapis.com/cms-bellemont/Naf_1165_07_Playroom_0155cf88a1/Naf_1165_07_Playroom_0155cf88a1.jpg	\N	google-cloud-storage	\N	6	6	2022-02-25 15:35:37.411+00	2022-02-25 15:35:37.428+00
61	Naf_1165_16_Powder-room---tight-crop.jpg			5080	5065	{"large": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/large_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d/large_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d.jpg", "hash": "large_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d", "mime": "image/jpeg", "name": "large_Naf_1165_16_Powder-room---tight-crop.jpg", "path": null, "size": 61.29, "width": 1000, "height": 997}, "small": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/small_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d/small_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d.jpg", "hash": "small_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d", "mime": "image/jpeg", "name": "small_Naf_1165_16_Powder-room---tight-crop.jpg", "path": null, "size": 20.71, "width": 500, "height": 499}, "medium": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/medium_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d/medium_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d.jpg", "hash": "medium_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d", "mime": "image/jpeg", "name": "medium_Naf_1165_16_Powder-room---tight-crop.jpg", "path": null, "size": 39.13, "width": 750, "height": 748}, "thumbnail": {"ext": ".jpg", "url": "https://storage.googleapis.com/cms-bellemont/thumbnail_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d/thumbnail_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d.jpg", "hash": "thumbnail_Naf_1165_16_Powder_room_tight_crop_cdbfbce26d", "mime": "image/jpeg", "name": "thumbnail_Naf_1165_16_Powder-room---tight-crop.jpg", "path": null, "size": 3.65, "width": 156, "height": 156}}	Naf_1165_16_Powder_room_tight_crop_cdbfbce26d	.jpg	image/jpeg	963.58	https://storage.googleapis.com/cms-bellemont/Naf_1165_16_Powder_room_tight_crop_cdbfbce26d/Naf_1165_16_Powder_room_tight_crop_cdbfbce26d.jpg	\N	google-cloud-storage	\N	6	6	2022-02-28 19:34:28.516+00	2022-02-28 19:34:28.539+00
\.


--
-- Data for Name: upload_file_morph; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.upload_file_morph (id, upload_file_id, related_id, related_type, field, "order") FROM stdin;
72	39	16	articles	Thumb	1
77	40	21	articles	Thumb	1
79	42	23	articles	Thumb	1
81	44	19	articles	Thumb	1
82	45	20	articles	Thumb	1
83	46	18	articles	Thumb	1
85	41	22	articles	Thumb	1
86	47	24	articles	Thumb	1
87	48	25	articles	Thumb	1
19	6	3	components_availability_list_availability_items	FloorPlanFile	1
20	6	4	components_availability_list_availability_items	FloorPlanFile	1
21	6	5	components_availability_list_availability_items	FloorPlanFile	1
22	6	6	components_availability_list_availability_items	FloorPlanFile	1
23	6	7	components_availability_list_availability_items	FloorPlanFile	1
24	6	8	components_availability_list_availability_items	FloorPlanFile	1
25	6	9	components_availability_list_availability_items	FloorPlanFile	1
26	6	10	components_availability_list_availability_items	FloorPlanFile	1
89	49	26	articles	Thumb	1
90	50	27	articles	Thumb	1
91	51	28	articles	Thumb	1
93	52	29	articles	Thumb	1
95	55	31	articles	Thumb	1
96	54	30	articles	Logo	1
97	54	30	articles	Thumb	1
101	56	38	articles	Logo	1
102	56	38	articles	Thumb	1
41	31	6	articles	Thumb	1
103	57	39	articles	Logo	1
104	57	39	articles	Thumb	1
45	38	9	articles	Thumb	1
107	58	40	articles	Logo	1
108	58	40	articles	Thumb	1
109	45	41	articles	Logo	1
110	45	41	articles	Thumb	1
115	60	42	articles	Logo	1
116	60	42	articles	Thumb	1
57	28	15	articles	Thumb	1
117	61	43	articles	Logo	1
118	61	43	articles	Thumb	1
119	42	44	articles	Logo	1
120	42	44	articles	Thumb	1
63	32	10	articles	Thumb	1
64	30	11	articles	Thumb	1
65	35	13	articles	Thumb	1
66	34	12	articles	Thumb	1
67	33	14	articles	Thumb	1
123	39	45	articles	Logo	1
124	39	45	articles	Thumb	1
125	47	46	articles	Logo	1
126	47	46	articles	Thumb	1
129	48	47	articles	Logo	1
130	48	47	articles	Thumb	1
131	57	48	articles	Logo	1
132	57	48	articles	Thumb	1
\.


--
-- Data for Name: users-permissions_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."users-permissions_permission" (id, type, controller, action, enabled, policy, role, created_by, updated_by) FROM stdin;
4	application	articles	update	f		1	\N	\N
6	application	articles	find	f		1	\N	\N
1	application	articles	count	f		1	\N	\N
10	application	articles	count	f		2	\N	\N
8	application	articles	update	f		2	\N	\N
3	application	articles	delete	f		2	\N	\N
20	application	category	find	t		2	\N	\N
7	application	articles	delete	f		1	\N	\N
11	application	articles	create	f		1	\N	\N
9	application	articles	findone	f		2	\N	\N
12	application	articles	create	f		2	\N	\N
2	application	articles	findone	f		1	\N	\N
13	application	category	count	f		1	\N	\N
14	application	category	count	f		2	\N	\N
15	application	category	create	f		1	\N	\N
16	application	category	create	f		2	\N	\N
17	application	category	delete	f		1	\N	\N
18	application	category	delete	f		2	\N	\N
19	application	category	find	f		1	\N	\N
23	application	category	findone	f		1	\N	\N
24	application	category	update	f		1	\N	\N
22	application	category	update	f		2	\N	\N
26	application	the-availability-page	delete	f		2	\N	\N
25	application	the-availability-page	delete	f		1	\N	\N
21	application	category	findone	f		2	\N	\N
27	application	the-availability-page	find	f		1	\N	\N
29	application	the-availability-page	update	f		1	\N	\N
30	application	the-availability-page	update	f		2	\N	\N
31	content-manager	collection-types	bulkdelete	f		1	\N	\N
32	content-manager	collection-types	bulkdelete	f		2	\N	\N
33	content-manager	collection-types	create	f		1	\N	\N
35	content-manager	collection-types	delete	f		1	\N	\N
36	content-manager	collection-types	delete	f		2	\N	\N
38	content-manager	collection-types	find	f		2	\N	\N
34	content-manager	collection-types	create	f		2	\N	\N
39	content-manager	collection-types	findone	f		2	\N	\N
37	content-manager	collection-types	find	f		1	\N	\N
41	content-manager	collection-types	previewmanyrelations	f		1	\N	\N
40	content-manager	collection-types	findone	f		1	\N	\N
43	content-manager	collection-types	publish	f		1	\N	\N
42	content-manager	collection-types	previewmanyrelations	f		2	\N	\N
44	content-manager	collection-types	publish	f		2	\N	\N
45	content-manager	collection-types	unpublish	f		1	\N	\N
48	content-manager	collection-types	update	f		2	\N	\N
49	content-manager	components	findcomponentconfiguration	f		1	\N	\N
46	content-manager	collection-types	unpublish	f		2	\N	\N
47	content-manager	collection-types	update	f		1	\N	\N
50	content-manager	components	findcomponentconfiguration	f		2	\N	\N
52	content-manager	components	findcomponents	f		2	\N	\N
53	content-manager	components	updatecomponentconfiguration	f		1	\N	\N
51	content-manager	components	findcomponents	f		1	\N	\N
56	content-manager	content-types	findcontenttypeconfiguration	f		2	\N	\N
57	content-manager	content-types	findcontenttypes	f		1	\N	\N
58	content-manager	content-types	findcontenttypes	f		2	\N	\N
28	application	the-availability-page	find	t		2	\N	\N
59	content-manager	content-types	findcontenttypessettings	f		1	\N	\N
5	application	articles	find	t		2	\N	\N
60	content-manager	content-types	findcontenttypessettings	f		2	\N	\N
65	content-manager	content-types	updatecontenttypeconfiguration	f		2	\N	\N
67	content-manager	single-types	delete	f		1	\N	\N
72	content-manager	single-types	publish	f		2	\N	\N
73	content-manager	single-types	unpublish	f		1	\N	\N
74	content-manager	single-types	unpublish	f		2	\N	\N
75	content-manager	uid	checkuidavailability	f		1	\N	\N
81	content-type-builder	builder	getreservednames	f		2	\N	\N
84	content-type-builder	componentcategories	editcategory	f		2	\N	\N
87	content-type-builder	components	deletecomponent	f		1	\N	\N
88	content-type-builder	components	deletecomponent	f		2	\N	\N
89	content-type-builder	components	getcomponent	f		1	\N	\N
90	content-type-builder	components	getcomponent	f		2	\N	\N
99	content-type-builder	contenttypes	deletecontenttype	f		1	\N	\N
98	content-type-builder	contenttypes	createcontenttype	f		2	\N	\N
102	content-type-builder	contenttypes	getcontenttype	f		2	\N	\N
103	content-type-builder	contenttypes	getcontenttypes	f		1	\N	\N
104	content-type-builder	contenttypes	getcontenttypes	f		2	\N	\N
105	content-type-builder	contenttypes	updatecontenttype	f		1	\N	\N
112	email	email	test	f		2	\N	\N
114	github-publish	github-publish	check	f		2	\N	\N
116	i18n	content-types	getnonlocalizedattributes	f		1	\N	\N
117	i18n	content-types	getnonlocalizedattributes	f		2	\N	\N
119	i18n	iso-locales	listisolocales	f		1	\N	\N
120	i18n	iso-locales	listisolocales	f		2	\N	\N
55	content-manager	components	updatecomponentconfiguration	f		2	\N	\N
69	content-manager	single-types	find	f		1	\N	\N
85	content-type-builder	components	createcomponent	f		1	\N	\N
100	content-type-builder	contenttypes	deletecontenttype	f		2	\N	\N
115	github-publish	github-publish	publish	f		1	\N	\N
130	upload	upload	count	f		2	\N	\N
144	upload	upload	upload	f		2	\N	\N
159	users-permissions	user	count	f		1	\N	\N
174	users-permissions	user	update	f		2	\N	\N
190	users-permissions	userspermissions	getrole	f		1	\N	\N
205	users-permissions	userspermissions	updaterole	f		1	\N	\N
71	content-manager	single-types	publish	f		1	\N	\N
80	content-type-builder	componentcategories	deletecategory	f		2	\N	\N
93	content-type-builder	connections	getconnections	f		1	\N	\N
109	email	email	getsettings	f		1	\N	\N
122	i18n	locales	createlocale	f		2	\N	\N
137	upload	upload	search	f		2	\N	\N
150	users-permissions	auth	forgotpassword	f		1	\N	\N
167	users-permissions	user	find	f		1	\N	\N
180	users-permissions	userspermissions	getadvancedsettings	f		2	\N	\N
199	users-permissions	userspermissions	updateadvancedsettings	f		1	\N	\N
61	content-manager	content-types	updatecontenttypeconfiguration	f		1	\N	\N
79	content-manager	uid	generateuid	f		2	\N	\N
95	content-type-builder	components	updatecomponent	f		2	\N	\N
111	github-publish	github-publish	check	f		1	\N	\N
127	i18n	locales	updatelocale	f		1	\N	\N
142	upload	upload	updatesettings	f		2	\N	\N
157	users-permissions	auth	sendemailconfirmation	f		1	\N	\N
172	users-permissions	user	me	t		2	\N	\N
186	users-permissions	userspermissions	getpolicies	f		2	\N	\N
201	users-permissions	userspermissions	updateemailtemplate	f		1	\N	\N
62	content-manager	relations	find	f		2	\N	\N
76	content-manager	uid	checkuidavailability	f		2	\N	\N
91	content-type-builder	components	getcomponents	f		1	\N	\N
108	email	email	send	f		2	\N	\N
121	i18n	locales	createlocale	f		1	\N	\N
139	upload	upload	search	f		1	\N	\N
151	users-permissions	auth	emailconfirmation	t		2	\N	\N
168	users-permissions	user	find	f		2	\N	\N
183	users-permissions	userspermissions	getpermissions	f		1	\N	\N
195	users-permissions	userspermissions	getroutes	f		2	\N	\N
66	content-manager	single-types	createorupdate	f		2	\N	\N
78	content-type-builder	builder	getreservednames	f		1	\N	\N
92	content-type-builder	components	getcomponents	f		2	\N	\N
110	content-type-builder	contenttypes	updatecontenttype	f		2	\N	\N
126	i18n	locales	listlocales	f		2	\N	\N
136	upload	upload	findone	f		2	\N	\N
154	users-permissions	auth	register	t		2	\N	\N
165	users-permissions	user	destroyall	f		1	\N	\N
182	users-permissions	userspermissions	getemailtemplate	f		2	\N	\N
194	users-permissions	userspermissions	index	f		1	\N	\N
63	content-manager	single-types	createorupdate	f		1	\N	\N
77	content-manager	uid	generateuid	f		1	\N	\N
97	content-type-builder	connections	getconnections	f		2	\N	\N
106	email	email	getsettings	f		2	\N	\N
123	i18n	locales	deletelocale	f		1	\N	\N
140	upload	upload	getsettings	f		2	\N	\N
156	users-permissions	auth	resetpassword	t		2	\N	\N
170	users-permissions	user	findone	f		2	\N	\N
185	users-permissions	userspermissions	getpolicies	f		1	\N	\N
200	users-permissions	userspermissions	updateadvancedsettings	f		2	\N	\N
68	content-manager	single-types	delete	f		2	\N	\N
82	content-type-builder	componentcategories	deletecategory	f		1	\N	\N
94	content-type-builder	components	updatecomponent	f		1	\N	\N
107	email	email	send	f		1	\N	\N
124	i18n	locales	deletelocale	f		2	\N	\N
138	upload	upload	getsettings	f		1	\N	\N
153	users-permissions	auth	register	f		1	\N	\N
166	users-permissions	user	destroyall	f		2	\N	\N
181	users-permissions	userspermissions	getemailtemplate	f		1	\N	\N
196	users-permissions	userspermissions	index	f		2	\N	\N
64	content-manager	relations	find	f		1	\N	\N
83	content-type-builder	componentcategories	editcategory	f		1	\N	\N
96	content-type-builder	contenttypes	createcontenttype	f		1	\N	\N
113	email	email	test	f		1	\N	\N
128	i18n	locales	updatelocale	f		2	\N	\N
143	upload	upload	upload	f		1	\N	\N
158	users-permissions	auth	sendemailconfirmation	f		2	\N	\N
173	users-permissions	user	update	f		1	\N	\N
188	users-permissions	userspermissions	getproviders	f		2	\N	\N
204	users-permissions	userspermissions	updateproviders	f		2	\N	\N
129	upload	upload	count	f		1	\N	\N
145	users-permissions	auth	callback	f		1	\N	\N
160	users-permissions	user	count	f		2	\N	\N
175	users-permissions	userspermissions	createrole	f		1	\N	\N
189	users-permissions	userspermissions	getrole	f		2	\N	\N
203	users-permissions	userspermissions	updateproviders	f		1	\N	\N
125	i18n	locales	listlocales	f		1	\N	\N
141	upload	upload	updatesettings	f		1	\N	\N
155	users-permissions	auth	resetpassword	f		1	\N	\N
169	users-permissions	user	findone	f		1	\N	\N
184	users-permissions	userspermissions	getpermissions	f		2	\N	\N
197	users-permissions	userspermissions	searchusers	f		1	\N	\N
131	upload	upload	destroy	f		2	\N	\N
146	users-permissions	auth	callback	t		2	\N	\N
162	users-permissions	user	create	f		2	\N	\N
177	users-permissions	userspermissions	deleterole	f		1	\N	\N
192	users-permissions	userspermissions	getroles	f		1	\N	\N
206	users-permissions	userspermissions	updaterole	f		2	\N	\N
132	upload	upload	destroy	f		1	\N	\N
147	users-permissions	auth	connect	t		1	\N	\N
161	users-permissions	user	create	f		1	\N	\N
178	users-permissions	userspermissions	deleterole	f		2	\N	\N
193	users-permissions	userspermissions	getroutes	f		1	\N	\N
134	upload	upload	find	f		2	\N	\N
149	users-permissions	auth	emailconfirmation	f		1	\N	\N
164	users-permissions	user	destroy	f		2	\N	\N
179	users-permissions	userspermissions	getadvancedsettings	f		1	\N	\N
198	users-permissions	userspermissions	searchusers	f		2	\N	\N
135	upload	upload	findone	f		1	\N	\N
152	users-permissions	auth	forgotpassword	t		2	\N	\N
171	users-permissions	user	me	t		1	\N	\N
187	users-permissions	userspermissions	getproviders	f		1	\N	\N
202	users-permissions	userspermissions	updateemailtemplate	f		2	\N	\N
54	content-manager	content-types	findcontenttypeconfiguration	f		1	\N	\N
70	content-manager	single-types	find	f		2	\N	\N
86	content-type-builder	components	createcomponent	f		2	\N	\N
101	content-type-builder	contenttypes	getcontenttype	f		1	\N	\N
118	github-publish	github-publish	publish	f		2	\N	\N
133	upload	upload	find	f		1	\N	\N
148	users-permissions	auth	connect	t		2	\N	\N
163	users-permissions	user	destroy	f		1	\N	\N
176	users-permissions	userspermissions	createrole	f		2	\N	\N
191	users-permissions	userspermissions	getroles	f		2	\N	\N
\.


--
-- Data for Name: users-permissions_role; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."users-permissions_role" (id, name, description, type, created_by, updated_by) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	\N	\N
2	Public	Default role given to unauthenticated user.	public	\N	\N
\.


--
-- Data for Name: users-permissions_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."users-permissions_user" (id, username, email, provider, password, "resetPasswordToken", "confirmationToken", confirmed, blocked, role, created_by, updated_by, created_at, updated_at) FROM stdin;
\.


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.articles_id_seq', 48, true);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.categories_id_seq', 2, true);


--
-- Name: components_availability_list_availability_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_availability_list_availability_items_id_seq', 10, true);


--
-- Name: components_category_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.components_category_categories_id_seq', 1, false);


--
-- Name: core_store_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.core_store_id_seq', 34, true);


--
-- Name: i18n_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.i18n_locales_id_seq', 1, true);


--
-- Name: strapi_administrator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_administrator_id_seq', 14, true);


--
-- Name: strapi_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_permission_id_seq', 7263, true);


--
-- Name: strapi_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_role_id_seq', 3, true);


--
-- Name: strapi_users_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_users_roles_id_seq', 32, true);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: the_availability_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.the_availability_pages_components_id_seq', 10, true);


--
-- Name: the_availability_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.the_availability_pages_id_seq', 1, true);


--
-- Name: upload_file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.upload_file_id_seq', 61, true);


--
-- Name: upload_file_morph_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.upload_file_morph_id_seq', 132, true);


--
-- Name: users-permissions_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."users-permissions_permission_id_seq"', 206, true);


--
-- Name: users-permissions_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."users-permissions_role_id_seq"', 2, true);


--
-- Name: users-permissions_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."users-permissions_user_id_seq"', 1, false);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: components_availability_list_availability_items components_availability_list_availability_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_availability_list_availability_items
    ADD CONSTRAINT components_availability_list_availability_items_pkey PRIMARY KEY (id);


--
-- Name: components_category_categories components_category_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.components_category_categories
    ADD CONSTRAINT components_category_categories_pkey PRIMARY KEY (id);


--
-- Name: core_store core_store_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_store
    ADD CONSTRAINT core_store_pkey PRIMARY KEY (id);


--
-- Name: i18n_locales i18n_locales_code_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_code_unique UNIQUE (code);


--
-- Name: i18n_locales i18n_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.i18n_locales
    ADD CONSTRAINT i18n_locales_pkey PRIMARY KEY (id);


--
-- Name: strapi_administrator strapi_administrator_email_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_email_unique UNIQUE (email);


--
-- Name: strapi_administrator strapi_administrator_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_administrator
    ADD CONSTRAINT strapi_administrator_pkey PRIMARY KEY (id);


--
-- Name: strapi_permission strapi_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_permission
    ADD CONSTRAINT strapi_permission_pkey PRIMARY KEY (id);


--
-- Name: strapi_role strapi_role_code_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_code_unique UNIQUE (code);


--
-- Name: strapi_role strapi_role_name_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_name_unique UNIQUE (name);


--
-- Name: strapi_role strapi_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_role
    ADD CONSTRAINT strapi_role_pkey PRIMARY KEY (id);


--
-- Name: strapi_users_roles strapi_users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_users_roles
    ADD CONSTRAINT strapi_users_roles_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: the_availability_pages_components the_availability_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.the_availability_pages_components
    ADD CONSTRAINT the_availability_pages_components_pkey PRIMARY KEY (id);


--
-- Name: the_availability_pages the_availability_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.the_availability_pages
    ADD CONSTRAINT the_availability_pages_pkey PRIMARY KEY (id);


--
-- Name: upload_file_morph upload_file_morph_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_file_morph
    ADD CONSTRAINT upload_file_morph_pkey PRIMARY KEY (id);


--
-- Name: upload_file upload_file_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.upload_file
    ADD CONSTRAINT upload_file_pkey PRIMARY KEY (id);


--
-- Name: users-permissions_permission users-permissions_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_permission"
    ADD CONSTRAINT "users-permissions_permission_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_role users-permissions_role_type_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_role"
    ADD CONSTRAINT "users-permissions_role_type_unique" UNIQUE (type);


--
-- Name: users-permissions_user users-permissions_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_pkey" PRIMARY KEY (id);


--
-- Name: users-permissions_user users-permissions_user_username_unique; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."users-permissions_user"
    ADD CONSTRAINT "users-permissions_user_username_unique" UNIQUE (username);


--
-- Name: the_availability_pages_components the_availability_page_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.the_availability_pages_components
    ADD CONSTRAINT the_availability_page_id_fk FOREIGN KEY (the_availability_page_id) REFERENCES public.the_availability_pages(id) ON DELETE CASCADE;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM cloudsqladmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO cloudsqlsuperuser;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\unrestrict hdkeCwUimT8tlu7Svj8P9At7bIxTkrljfSxTdNRbSH561TeYlF3uHqoOwQvqWmh

