PGDMP  9                	    |            todoDB    17.0    17.0 %               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16734    todoDB    DATABASE     z   CREATE DATABASE "todoDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Thai_Thailand.874';
    DROP DATABASE "todoDB";
                     postgres    false            �            1259    16736    adonis_schema    TABLE     �   CREATE TABLE public.adonis_schema (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.adonis_schema;
       public         heap r       postgres    false            �            1259    16735    adonis_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.adonis_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.adonis_schema_id_seq;
       public               postgres    false    218                       0    0    adonis_schema_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.adonis_schema_id_seq OWNED BY public.adonis_schema.id;
          public               postgres    false    217            �            1259    16829    todos    TABLE     �   CREATE TABLE public.todos (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text,
    completed boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.todos;
       public         heap r       postgres    false            �            1259    16828    todos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.todos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.todos_id_seq;
       public               postgres    false    224                       0    0    todos_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.todos_id_seq OWNED BY public.todos.id;
          public               postgres    false    223            �            1259    16813    tokens    TABLE       CREATE TABLE public.tokens (
    id integer NOT NULL,
    user_id integer,
    token character varying(255) NOT NULL,
    type character varying(80) NOT NULL,
    is_revoked boolean DEFAULT false,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.tokens;
       public         heap r       postgres    false            �            1259    16812    tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tokens_id_seq;
       public               postgres    false    222                       0    0    tokens_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;
          public               postgres    false    221            �            1259    16802    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(80) NOT NULL,
    email character varying(254) NOT NULL,
    password character varying(60) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16801    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    220                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    219            f           2604    16739    adonis_schema id    DEFAULT     t   ALTER TABLE ONLY public.adonis_schema ALTER COLUMN id SET DEFAULT nextval('public.adonis_schema_id_seq'::regclass);
 ?   ALTER TABLE public.adonis_schema ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            k           2604    16832    todos id    DEFAULT     d   ALTER TABLE ONLY public.todos ALTER COLUMN id SET DEFAULT nextval('public.todos_id_seq'::regclass);
 7   ALTER TABLE public.todos ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224            i           2604    16816 	   tokens id    DEFAULT     f   ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);
 8   ALTER TABLE public.tokens ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221    222            h           2604    16805    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220                      0    16736    adonis_schema 
   TABLE DATA           H   COPY public.adonis_schema (id, name, batch, migration_time) FROM stdin;
    public               postgres    false    218   ,)                 0    16829    todos 
   TABLE DATA           Z   COPY public.todos (id, title, description, completed, created_at, updated_at) FROM stdin;
    public               postgres    false    224   �)                 0    16813    tokens 
   TABLE DATA           ^   COPY public.tokens (id, user_id, token, type, is_revoked, created_at, updated_at) FROM stdin;
    public               postgres    false    222   x*                 0    16802    users 
   TABLE DATA           V   COPY public.users (id, username, email, password, created_at, updated_at) FROM stdin;
    public               postgres    false    220   �*                   0    0    adonis_schema_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.adonis_schema_id_seq', 6, true);
          public               postgres    false    217            !           0    0    todos_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.todos_id_seq', 8, true);
          public               postgres    false    223            "           0    0    tokens_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tokens_id_seq', 1, false);
          public               postgres    false    221            #           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public               postgres    false    219            n           2606    16742     adonis_schema adonis_schema_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.adonis_schema
    ADD CONSTRAINT adonis_schema_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.adonis_schema DROP CONSTRAINT adonis_schema_pkey;
       public                 postgres    false    218            {           2606    16837    todos todos_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.todos DROP CONSTRAINT todos_pkey;
       public                 postgres    false    224            v           2606    16819    tokens tokens_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_pkey;
       public                 postgres    false    222            y           2606    16826    tokens tokens_token_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_token_unique UNIQUE (token);
 D   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_token_unique;
       public                 postgres    false    222            p           2606    16811    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public                 postgres    false    220            r           2606    16807    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    220            t           2606    16809    users users_username_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_unique UNIQUE (username);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_unique;
       public                 postgres    false    220            w           1259    16827    tokens_token_index    INDEX     F   CREATE INDEX tokens_token_index ON public.tokens USING btree (token);
 &   DROP INDEX public.tokens_token_index;
       public                 postgres    false    222            |           2606    16820    tokens tokens_user_id_foreign    FK CONSTRAINT     |   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id);
 G   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_user_id_foreign;
       public               postgres    false    220    222    4722               n   x�u�A
�0�ur
��e�g&3�Y
A4 ������E�m�VJ��֭�O� ��L#����'hՁ,�_���>��l�ʱr`��#�]��}����u=�E܎�L1��~%3         �   x�]��A�s�)z��YVo"��M"�%�#���<���6���K����&�xv! �����-�m3�IPX�LeТ~#��DUl�~��0�%/�Ȍ���4iZ-pIT��I`�w��F���\t����<�q���q�+�}57Ab�T��un�s"|K��z��u��Z���pO�L���c�� �G2            x������ � �            x������ � �     