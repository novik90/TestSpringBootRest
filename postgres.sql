PGDMP     )    2                w            postgres    11.3    11.3     ^           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            _           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            `           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            a           1262    13329    postgres    DATABASE     f   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE postgres;
             postgres    false            b           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    3169                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            c           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            �            1259    16839    address    TABLE     �   CREATE TABLE public.address (
    address_id bigint NOT NULL,
    street character varying(45),
    city character varying(45)
);
    DROP TABLE public.address;
       public         postgres    false            �            1259    16753    author    TABLE     �   CREATE TABLE public.author (
    author_id bigint NOT NULL,
    first_name character varying(255),
    last_name character varying(255)
);
    DROP TABLE public.author;
       public         postgres    false            �            1259    16783    global_news    TABLE       CREATE TABLE public.global_news (
    news_id bigint NOT NULL,
    title_news character varying(255) NOT NULL,
    description_news character varying(10000) NOT NULL,
    topic_news character varying(255),
    date_news timestamp without time zone,
    author_news bigint
);
    DROP TABLE public.global_news;
       public         postgres    false            �            1259    16746    greeting    TABLE     �   CREATE TABLE public.greeting (
    greeting_id bigint NOT NULL,
    name character varying(255),
    lastname character varying(255)
);
    DROP TABLE public.greeting;
       public         postgres    false            �            1259    16863    greeting_sequence    SEQUENCE     z   CREATE SEQUENCE public.greeting_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.greeting_sequence;
       public       postgres    false            �            1259    16865    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public       postgres    false            �            1259    16834    users    TABLE     v   CREATE TABLE public.users (
    user_id bigint NOT NULL,
    username character varying(45),
    address_id bigint
);
    DROP TABLE public.users;
       public         postgres    false            Y          0    16839    address 
   TABLE DATA               ;   COPY public.address (address_id, street, city) FROM stdin;
    public       postgres    false    201   '       V          0    16753    author 
   TABLE DATA               B   COPY public.author (author_id, first_name, last_name) FROM stdin;
    public       postgres    false    198   f       W          0    16783    global_news 
   TABLE DATA               p   COPY public.global_news (news_id, title_news, description_news, topic_news, date_news, author_news) FROM stdin;
    public       postgres    false    199   �       U          0    16746    greeting 
   TABLE DATA               ?   COPY public.greeting (greeting_id, name, lastname) FROM stdin;
    public       postgres    false    197   �       X          0    16834    users 
   TABLE DATA               >   COPY public.users (user_id, username, address_id) FROM stdin;
    public       postgres    false    200   Q       d           0    0    greeting_sequence    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.greeting_sequence', 3, true);
            public       postgres    false    202            e           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
            public       postgres    false    203            �           2606    16793    author address_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.author
    ADD CONSTRAINT address_pkey PRIMARY KEY (author_id);
 =   ALTER TABLE ONLY public.author DROP CONSTRAINT address_pkey;
       public         postgres    false    198            �           2606    16843    address address_pkey1 
   CONSTRAINT     [   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey1 PRIMARY KEY (address_id);
 ?   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey1;
       public         postgres    false    201            �           2606    16790    global_news globalNews_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.global_news
    ADD CONSTRAINT "globalNews_pkey" PRIMARY KEY (news_id);
 G   ALTER TABLE ONLY public.global_news DROP CONSTRAINT "globalNews_pkey";
       public         postgres    false    199            �           2606    16750    greeting greeting_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.greeting
    ADD CONSTRAINT greeting_pkey PRIMARY KEY (greeting_id);
 @   ALTER TABLE ONLY public.greeting DROP CONSTRAINT greeting_pkey;
       public         postgres    false    197            �           2606    16838    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    200            �           1259    16794    address_id_uindex    INDEX     P   CREATE UNIQUE INDEX address_id_uindex ON public.author USING btree (author_id);
 %   DROP INDEX public.address_id_uindex;
       public         postgres    false    198            �           2606    16846 '   global_news fk5fvc7gj22nr3v2lrpiu8yb33w    FK CONSTRAINT     �   ALTER TABLE ONLY public.global_news
    ADD CONSTRAINT fk5fvc7gj22nr3v2lrpiu8yb33w FOREIGN KEY (author_news) REFERENCES public.users(user_id);
 Q   ALTER TABLE ONLY public.global_news DROP CONSTRAINT fk5fvc7gj22nr3v2lrpiu8yb33w;
       public       postgres    false    200    3032    199            Y   /   x�3���/*NU(.���--.I�K�2�42���G�es��qqq ��      V   (   x�3��,K����/���/�2�I-.@���=... �      W      x������ � �      U   �   x�]�K�0D�㻀p>m��l"5Y�!n��.I�g�eG�0b ��O:ғ�\1�W�-l���C�\�Z,1�X�_��E���)%Q����ڷ�������=���R\)�1 lS���*�{�2[�)�q�~�F9      X      x������ � �     