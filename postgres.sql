PGDMP     7                    w            postgres    11.3    11.3     [           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            \           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ]           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ^           1262    13329    postgres    DATABASE     f   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE postgres;
             postgres    false            _           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                  postgres    false    3166                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                  false            `           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                       false    1            �            1259    16839    address    TABLE     z   CREATE TABLE public.address (
    id bigint NOT NULL,
    street character varying(45),
    city character varying(45)
);
    DROP TABLE public.address;
       public         postgres    false            �            1259    16753    author    TABLE     �   CREATE TABLE public.author (
    id bigint NOT NULL,
    first_name character varying(255),
    last_name character varying(255)
);
    DROP TABLE public.author;
       public         postgres    false            �            1259    16751    address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.address_id_seq;
       public       postgres    false    199            a           0    0    address_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public.address_id_seq OWNED BY public.author.id;
            public       postgres    false    198            �            1259    16783    global_news    TABLE       CREATE TABLE public.global_news (
    id bigint NOT NULL,
    title_news character varying(255) NOT NULL,
    description_news character varying(10000) NOT NULL,
    topic_news character varying(255),
    date_news timestamp without time zone,
    author_news bigint
);
    DROP TABLE public.global_news;
       public         postgres    false            �            1259    16746    greeting    TABLE        CREATE TABLE public.greeting (
    id bigint NOT NULL,
    name character varying(255),
    lastname character varying(255)
);
    DROP TABLE public.greeting;
       public         postgres    false            �            1259    16834    users    TABLE     q   CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying(45),
    address_id bigint
);
    DROP TABLE public.users;
       public         postgres    false            �           2604    16791 	   author id    DEFAULT     g   ALTER TABLE ONLY public.author ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);
 8   ALTER TABLE public.author ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            X          0    16839    address 
   TABLE DATA               3   COPY public.address (id, street, city) FROM stdin;
    public       postgres    false    202   .       U          0    16753    author 
   TABLE DATA               ;   COPY public.author (id, first_name, last_name) FROM stdin;
    public       postgres    false    199   m       V          0    16783    global_news 
   TABLE DATA               k   COPY public.global_news (id, title_news, description_news, topic_news, date_news, author_news) FROM stdin;
    public       postgres    false    200   �       S          0    16746    greeting 
   TABLE DATA               6   COPY public.greeting (id, name, lastname) FROM stdin;
    public       postgres    false    197   P       W          0    16834    users 
   TABLE DATA               9   COPY public.users (id, username, address_id) FROM stdin;
    public       postgres    false    201   �       b           0    0    address_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.address_id_seq', 6, true);
            public       postgres    false    198            �           2606    16793    author address_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.author
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.author DROP CONSTRAINT address_pkey;
       public         postgres    false    199            �           2606    16843    address address_pkey1 
   CONSTRAINT     S   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey1 PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey1;
       public         postgres    false    202            �           2606    16790    global_news globalNews_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.global_news
    ADD CONSTRAINT "globalNews_pkey" PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.global_news DROP CONSTRAINT "globalNews_pkey";
       public         postgres    false    200            �           2606    16750    greeting greeting_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.greeting
    ADD CONSTRAINT greeting_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.greeting DROP CONSTRAINT greeting_pkey;
       public         postgres    false    197            �           2606    16838    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    201            �           1259    16794    address_id_uindex    INDEX     I   CREATE UNIQUE INDEX address_id_uindex ON public.author USING btree (id);
 %   DROP INDEX public.address_id_uindex;
       public         postgres    false    199            X   /   x�3���/*NU(.���--.I�K�2�42���G�es��qqq ��      U   (   x�3��,K����/���/�2�I-.@���=... �      V   �  x����nAE��W��v�ٰV	!vl*ݕ����a����$v@ Y�x\�[�T�~�YK�Ԥ6�򫮾���(K�Y�r�J=z�"�6�ȭW�RR���Ni�q�@�\���@>M�H8v�����n��Ɓ���2^	[���t�,�w�ӔH�IbC:!�1�,�*qq��ĵDw�i'�o��1��S���]��W	�$jm¹�cW~�]�@\�̦,�0#y{�����mC�$�b�cG+D~����Z�NQ��Y�����&ͦ�	~ZJ�x� d3
,.��h�f�A6d�&P�!���a�t!6�H����`�\ Йa�So�a�	��s8=7�!�'��s�ʹ�mv�=��o�k#�ym��I�$aJ�>M��R�D��Y���c��T���Q���0�/���f� 
�1=	j��"�ȣ`��E�U�V�e��,�^�ƈQu�C8(���f��~�8^ Y7[��u��I���&regmu��߿����vs{�Y��?t�g����p�蕻O�4�Z8Ϙ�z��'ӿ!�Hg�.- �x�^zuuK�ёC6�
L�������cC�3�K����In��Fx��cq�s=��%��1�%��ͳ��4u}�<p��{��K�b�bIL��������a�����o�w����a�s�^�+�      S   �   x�-��
�0E�w��_P���mA]�"n�������Q��[�ww�����6Y*pz;Iv�\��Ns4N{B�*�2����������G����(L�h�Ck�uܠ(Uz�Lo��'w�����z���4+j      W   "   x�3��,K��4�2��-�S���4����� P�p     