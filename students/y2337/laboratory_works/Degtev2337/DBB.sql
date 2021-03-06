PGDMP     .                    x         	   myFirstDB    12.4    12.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16385 	   myFirstDB    DATABASE     }   CREATE DATABASE "myFirstDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE "myFirstDB";
                Sagandh    false            �            1259    16442    book    TABLE     �   CREATE TABLE public.book (
    id integer NOT NULL,
    title character varying(30) NOT NULL,
    genre character varying(20) NOT NULL,
    pages integer NOT NULL,
    customer integer NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    16437    ceo    TABLE       CREATE TABLE public.ceo (
    id_ceo integer NOT NULL,
    name character varying(20) NOT NULL,
    "second name" character varying(20) NOT NULL,
    "last name" character varying(20) NOT NULL,
    salary integer NOT NULL,
    factory_id integer NOT NULL
);
    DROP TABLE public.ceo;
       public         heap    postgres    false            �            1259    16432    contract    TABLE     �   CREATE TABLE public.contract (
    id integer NOT NULL,
    "code of contract" integer NOT NULL,
    date date NOT NULL,
    customer integer NOT NULL,
    factory_id integer,
    book_id integer
);
    DROP TABLE public.contract;
       public         heap    postgres    false            �            1259    16407    customer    TABLE     �   CREATE TABLE public.customer (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    "second name" character varying(20) NOT NULL,
    "last name" character varying(20) NOT NULL
);
    DROP TABLE public.customer;
       public         heap    postgres    false            �            1259    16402 	   employees    TABLE       CREATE TABLE public.employees (
    id integer NOT NULL,
    name character varying(15) NOT NULL,
    "second name" character varying(15) NOT NULL,
    "last name" character varying(15) NOT NULL,
    salary integer NOT NULL,
    factory_id integer NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    16427    factory    TABLE     �   CREATE TABLE public.factory (
    id_factory integer NOT NULL,
    "Code of factory" integer NOT NULL,
    address character varying(255) NOT NULL
);
    DROP TABLE public.factory;
       public         heap    postgres    false            �            1259    16422    machine    TABLE     �   CREATE TABLE public.machine (
    id integer NOT NULL,
    speed integer NOT NULL,
    "code of machine" integer NOT NULL,
    factory_id integer NOT NULL
);
    DROP TABLE public.machine;
       public         heap    postgres    false            �          0    16442    book 
   TABLE DATA           A   COPY public.book (id, title, genre, pages, customer) FROM stdin;
    public          postgres    false    208   �       �          0    16437    ceo 
   TABLE DATA           [   COPY public.ceo (id_ceo, name, "second name", "last name", salary, factory_id) FROM stdin;
    public          postgres    false    207   t       �          0    16432    contract 
   TABLE DATA           _   COPY public.contract (id, "code of contract", date, customer, factory_id, book_id) FROM stdin;
    public          postgres    false    206   �       �          0    16407    customer 
   TABLE DATA           H   COPY public.customer (id, name, "second name", "last name") FROM stdin;
    public          postgres    false    203           �          0    16402 	   employees 
   TABLE DATA           ]   COPY public.employees (id, name, "second name", "last name", salary, factory_id) FROM stdin;
    public          postgres    false    202   j        �          0    16427    factory 
   TABLE DATA           I   COPY public.factory (id_factory, "Code of factory", address) FROM stdin;
    public          postgres    false    205   !       �          0    16422    machine 
   TABLE DATA           K   COPY public.machine (id, speed, "code of machine", factory_id) FROM stdin;
    public          postgres    false    204   ?!       0           2606    16446    book book_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    208            .           2606    16441    ceo ceo_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.ceo
    ADD CONSTRAINT ceo_pkey PRIMARY KEY (id_ceo);
 6   ALTER TABLE ONLY public.ceo DROP CONSTRAINT ceo_pkey;
       public            postgres    false    207            ,           2606    16436    contract contract_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_pkey;
       public            postgres    false    206            %           2606    16411    customer customer_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    203            #           2606    16406    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    202            *           2606    16462    factory id_factory 
   CONSTRAINT     X   ALTER TABLE ONLY public.factory
    ADD CONSTRAINT id_factory PRIMARY KEY (id_factory);
 <   ALTER TABLE ONLY public.factory DROP CONSTRAINT id_factory;
       public            postgres    false    205            '           2606    16454    machine machine_id 
   CONSTRAINT     P   ALTER TABLE ONLY public.machine
    ADD CONSTRAINT machine_id PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.machine DROP CONSTRAINT machine_id;
       public            postgres    false    204            (           1259    16460    fki_factory_id    INDEX     H   CREATE INDEX fki_factory_id ON public.factory USING btree (id_factory);
 "   DROP INDEX public.fki_factory_id;
       public            postgres    false    205            2           2606    16478    book customer    FK CONSTRAINT     z   ALTER TABLE ONLY public.book
    ADD CONSTRAINT customer FOREIGN KEY (customer) REFERENCES public.customer(id) NOT VALID;
 7   ALTER TABLE ONLY public.book DROP CONSTRAINT customer;
       public          postgres    false    2853    203    208            1           2606    16473    contract customers    FK CONSTRAINT        ALTER TABLE ONLY public.contract
    ADD CONSTRAINT customers FOREIGN KEY (customer) REFERENCES public.customer(id) NOT VALID;
 <   ALTER TABLE ONLY public.contract DROP CONSTRAINT customers;
       public          postgres    false    2853    206    203            �   f   x�3��M��LK�+I,��42��4�2��Q()-�/�L����,�*9��M��Ɯ���y���ɉ
FF��P.���1Pބ�)3)'n����W� ߘ<      �   K   x�3���.�/�.I�����IM�/�L��400�4�2�t�K)J��tIM/I-�.I��L+14�1����� A��      �   @   x�5��� Cѳ�K*�D v��sP���IN$,+2W8��}�l(�beh^n,��u�i?Q|����      �   ;   x�3�tI������/����/���.�/�/�L��2�t�w��J-.-�433����� �N"      �   �   x�-̽
�0�����H�'8:�E'�C	ɡ���I�^m�w|x+�_M�5*U�R��'����1�W��0z�c��{tY솶�M���ĺ�x̴��r�U���6�ON$�Q �1���<�T�렔� ;�/�      �   .   x�3�440��O��,�N�L�2
qz%��'�B�c���� (a      �   $   x�3�450�4153�4�2�4r��<N#�=... K��     