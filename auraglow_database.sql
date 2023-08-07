--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: addproduct; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.addproduct (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    price numeric(10,2) NOT NULL,
    discount integer,
    stock integer NOT NULL,
    colors text NOT NULL,
    "desc" text NOT NULL,
    pub_date timestamp without time zone NOT NULL,
    category_id integer NOT NULL,
    image_1 character varying(150) NOT NULL,
    image_2 character varying(150) NOT NULL,
    image_3 character varying(150) NOT NULL
);


ALTER TABLE public.addproduct OWNER TO postgres;

--
-- Name: addproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.addproduct_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.addproduct_id_seq OWNER TO postgres;

--
-- Name: addproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.addproduct_id_seq OWNED BY public.addproduct.id;


--
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- Name: customer_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_order (
    id integer NOT NULL,
    invoice character varying(20) NOT NULL,
    status character varying(20) NOT NULL,
    customer_id integer NOT NULL,
    date_created timestamp without time zone NOT NULL,
    orders text
);


ALTER TABLE public.customer_order OWNER TO postgres;

--
-- Name: customer_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_order_id_seq OWNER TO postgres;

--
-- Name: customer_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_order_id_seq OWNED BY public.customer_order.id;


--
-- Name: register; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.register (
    id integer NOT NULL,
    name character varying(50),
    username character varying(50),
    email character varying(50),
    password character varying(200),
    country character varying(50),
    city character varying(50),
    contact character varying(50),
    address character varying(50),
    zipcode character varying(50),
    profile character varying(200),
    date_created timestamp without time zone NOT NULL
);


ALTER TABLE public.register OWNER TO postgres;

--
-- Name: register_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.register_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.register_id_seq OWNER TO postgres;

--
-- Name: register_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.register_id_seq OWNED BY public.register.id;


--
-- Name: addproduct id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addproduct ALTER COLUMN id SET DEFAULT nextval('public.addproduct_id_seq'::regclass);


--
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- Name: customer_order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_order ALTER COLUMN id SET DEFAULT nextval('public.customer_order_id_seq'::regclass);


--
-- Name: register id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register ALTER COLUMN id SET DEFAULT nextval('public.register_id_seq'::regclass);


--
-- Data for Name: addproduct; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.addproduct (id, name, price, discount, stock, colors, "desc", pub_date, category_id, image_1, image_2, image_3) FROM stdin;
2	 ANTIOXIDANT MATTE DAY CREAM MINI SPF 30	34.00	20	15	white	A calming travel companion. An antioxidant-rich, matte day cream that provides broad spectrum UVA/UVB protection while controlling oil and shine throughout the day. The perfect size for total skin control on the go.	2023-08-05 23:29:48.21456	5	d807dbb7fc57993c0c47.png	0227ba2552899124662e.webp	1bff93e256d195fbcc6c.png
3	Eau de Parfum Milano	164.00	10	16	Orange	Eau de Parfum Milano 100ml\r\nThe warm, enveloping notes of patchouli, pepper, and sandalwood pair with the unique personality of cedar to create this one-of-a-kind perfume: an aromatic explosion of vitality that is sure to make those who wear it stand out.	2023-08-06 00:19:08.919448	3	4586372b62ed06bdd83a.webp	6bdf58e6621c215fc295.webp	f1fc8ee9ca4c58a0b73a.webp
4	Yardly Talcum Powder	6.00	10	9	Skin 	Yardley London English Rose Perfumed Deodorizing Talc Talcum Powder 100gm.	2023-08-06 02:57:06.522762	10	c7ad865d20d839d8f3d6.jpg	64059d4832a4cac82808.jpg	8b6907c3fee4e9004077.jpg
5	Liquid foundation	150.00	5	5	Skin Type	L'Oreal Paris True Match Liquid Foundation, Skincare Infused with Hyaluronic Acid, SPF 17, Available in 40 Shades, 5N Sand, 30 ml	2023-08-06 03:01:25.816631	8	490490df9cb830b9deeb.jpg	832136dc43224bcd9b34.jpg	6d50e07dfd50121fade9.jpg
6	Liquid Eye Liner	10.00	8	4	Dark Black	 Delivers rich, true colour payoff with a single stroke \r\n- Glides on with ease and blends seamlessly\r\n- Sets for smudge-free, waterproof, longwear staying power\r\n- Infused with Vitamin E, hydrating pro-vitamin B5, and calming chamomile \r\n- Sharpenable tip for precision application.	2023-08-06 12:04:18.584432	6	a87dcc89580821c7da0f.webp	24434fe6091a52d79017.webp	3b87b22cf62ef9247fe6.jpg
7	Women's Perfume	14.00	30	15	White, Yellow	India women's perfumes are characterised by a unique, feminine, floral fragrance with an additional note of hemp.\r\n\r\nIndia perfumes stay on the skin and clothes for many hours after first use, slowly releasing subsequent fragrance notes from the composition with a base of incredibly intense patchouli and musk essence.\r\n\r\nThis original fragrance, composed of sweet floral notes finished with patchouli, musk, and cannabis, will fill you with new energy and optimism and will impress everyone in your surroundings.	2023-08-06 14:32:33.681673	3	7c70302e0d239f13d484.jpg	d8c8ae5668eb5fa3b944.jpg	24f1597d5350c78aeae9.jpg
8	Neutrogena 	16.00	6	1	White,Pink	Neutrogena Deep Moisture Body Lotion Dry Skin is a body lotion that deeply moisturizes the skin. The skin is left looking supple, luminous, and healthy, day after day. This lotion is suitable for dry to very dry skin.	2023-08-06 14:35:42.531508	7	f133db0dcac79766098b.webp	22b1c18257401da86b50.webp	330abd2ef371101a8382.webp
9	Flormar wet and dry powder	16.00	20	20	Skiny,Baby Pink	Flormar Wet & Dry Compact Powder is a versatile compact powder that provides different levels of coverage depending on how you apply it.	2023-08-06 15:27:19.816902	10	52370cc0f8d8142983dc.webp	27094e9a5da74ddd152d.webp	5f8928f12fe8b3576438.webp
10	CC Cream	5.00	10	25	Pearl,White	IT Cosmetics CC Cream Full Coverage Foundation - Color Correcting Cream, Hydrating Serum & SPF 50 Sunscreen - Hyaluronic Acid, Vitamin E, Niacinamide - Natural Finish	2023-08-06 15:29:55.021377	8	fafc3c9996573e55e8a7.jpg	0914d30d8e5e50514db9.jpg	718fd5b8c1d396279431.jpg
\.


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id, name) FROM stdin;
3	Perfume
4	Lips
5	Sunscreen
6	Eye liner
7	Lotion
8	Foundation
9	Gel
10	Face powder
\.


--
-- Data for Name: customer_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_order (id, invoice, status, customer_id, date_created, orders) FROM stdin;
1	70f5e51491	Pending	2	2023-08-06 23:11:01.646403	{"9": {"color": "Skiny", "colors": "Skiny,Baby Pink", "discount": 20, "image": "52370cc0f8d8142983dc.webp", "name": "Flormar wet and dry powder", "price": 16.0, "quantity": "2"}}
2	cd21e55554	Pending	2	2023-08-06 23:16:25.267502	{"10": {"color": "Pearl", "colors": "Pearl,White", "discount": 10, "image": "fafc3c9996573e55e8a7.jpg", "name": "CC Cream", "price": 5.0, "quantity": 1}, "5": {"color": "Skin Type", "colors": "Skin Type", "discount": 5, "image": "490490df9cb830b9deeb.jpg", "name": "Liquid foundation", "price": 150.0, "quantity": 1}, "8": {"color": "White", "colors": "White,Pink", "discount": 6, "image": "f133db0dcac79766098b.webp", "name": "Neutrogena ", "price": 16.0, "quantity": 1}}
3	a10608d3ec	Pending	2	2023-08-06 23:24:58.491314	{"4": {"color": "Skin ", "colors": "Skin ", "discount": 10, "image": "c7ad865d20d839d8f3d6.jpg", "name": "Yardly Talcum Powder", "price": 6.0, "quantity": 1}}
4	58070c0bdc	Pending	2	2023-08-06 23:44:11.510442	{"10": {"color": "Pearl", "colors": "Pearl,White", "discount": 10, "image": "fafc3c9996573e55e8a7.jpg", "name": "CC Cream", "price": 5.0, "quantity": 1}}
\.


--
-- Data for Name: register; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.register (id, name, username, email, password, country, city, contact, address, zipcode, profile, date_created) FROM stdin;
1	Pritee Gavande	pritee	pritee.gavande65@gmail.com	$2b$12$m60T7xqgtEdVFHYfX4JCZu1Nci7zkMJx9szSoFCdGz9ngoeCibwii	Ireland	Dublin 9	8237823769	Flat 16	D09Y7W7	profile.jpg	2023-08-02 00:24:01.552684
2	Ritu	ritugavande	ritugavande@gmail.com	$2b$12$9Bjx/lrEocr3wKS17VJK1ungbWYDG1xDSVHdqF20I8xdp4rRQM1gq	Ireland	dublin	8237823769	dublin 09	D09Y7W7	profile.jpg	2023-08-06 12:54:29.634561
\.


--
-- Name: addproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.addproduct_id_seq', 10, true);


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 10, true);


--
-- Name: customer_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_order_id_seq', 4, true);


--
-- Name: register_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.register_id_seq', 2, true);


--
-- Name: addproduct addproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addproduct
    ADD CONSTRAINT addproduct_pkey PRIMARY KEY (id);


--
-- Name: category category_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_name_key UNIQUE (name);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: customer_order customer_order_invoice_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_order
    ADD CONSTRAINT customer_order_invoice_key UNIQUE (invoice);


--
-- Name: customer_order customer_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_order
    ADD CONSTRAINT customer_order_pkey PRIMARY KEY (id);


--
-- Name: register register_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register
    ADD CONSTRAINT register_email_key UNIQUE (email);


--
-- Name: register register_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register
    ADD CONSTRAINT register_pkey PRIMARY KEY (id);


--
-- Name: register register_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register
    ADD CONSTRAINT register_username_key UNIQUE (username);


--
-- Name: addproduct addproduct_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.addproduct
    ADD CONSTRAINT addproduct_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(id);


--
-- PostgreSQL database dump complete
--

