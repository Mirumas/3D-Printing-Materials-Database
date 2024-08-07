PGDMP         :                {            Materials for 3d-printing    15.2    15.0 G    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            W           1262    16566    Materials for 3d-printing    DATABASE     �   CREATE DATABASE "Materials for 3d-printing" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
 +   DROP DATABASE "Materials for 3d-printing";
                postgres    false            �            1259    16568    gost    TABLE     X   CREATE TABLE public.gost (
    id_gost integer NOT NULL,
    name_gost text NOT NULL
);
    DROP TABLE public.gost;
       public         heap    postgres    false            �            1259    16567    gost_id_gost_seq    SEQUENCE     �   CREATE SEQUENCE public.gost_id_gost_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.gost_id_gost_seq;
       public          postgres    false    215            X           0    0    gost_id_gost_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.gost_id_gost_seq OWNED BY public.gost.id_gost;
          public          postgres    false    214            �            1259    16660    gost_material    TABLE     f   CREATE TABLE public.gost_material (
    id_material integer NOT NULL,
    id_gost integer NOT NULL
);
 !   DROP TABLE public.gost_material;
       public         heap    postgres    false            �            1259    16586    manufacturer    TABLE     �   CREATE TABLE public.manufacturer (
    id_manufacturer integer NOT NULL,
    name_manufacturer text NOT NULL,
    country text NOT NULL
);
     DROP TABLE public.manufacturer;
       public         heap    postgres    false            �            1259    16585     manufacturer_id_manufacturer_seq    SEQUENCE     �   CREATE SEQUENCE public.manufacturer_id_manufacturer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.manufacturer_id_manufacturer_seq;
       public          postgres    false    219            Y           0    0     manufacturer_id_manufacturer_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.manufacturer_id_manufacturer_seq OWNED BY public.manufacturer.id_manufacturer;
          public          postgres    false    218            �            1259    16622    material    TABLE     �   CREATE TABLE public.material (
    id_material integer NOT NULL,
    name_material text NOT NULL,
    id_manufacturer integer NOT NULL,
    id_smell integer NOT NULL,
    id_type integer NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.material;
       public         heap    postgres    false            �            1259    16621    material_id_material_seq    SEQUENCE     �   CREATE SEQUENCE public.material_id_material_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.material_id_material_seq;
       public          postgres    false    227            Z           0    0    material_id_material_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.material_id_material_seq OWNED BY public.material.id_material;
          public          postgres    false    226            �            1259    16707    material_parameters    TABLE     �   CREATE TABLE public.material_parameters (
    id_material integer NOT NULL,
    id_parametr integer NOT NULL,
    value_parametr double precision
);
 '   DROP TABLE public.material_parameters;
       public         heap    postgres    false            �            1259    16613    parametr    TABLE     d   CREATE TABLE public.parametr (
    id_parametr integer NOT NULL,
    name_parametr text NOT NULL
);
    DROP TABLE public.parametr;
       public         heap    postgres    false            �            1259    16612    parametr_id_parametr_seq    SEQUENCE     �   CREATE SEQUENCE public.parametr_id_parametr_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.parametr_id_parametr_seq;
       public          postgres    false    225            [           0    0    parametr_id_parametr_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.parametr_id_parametr_seq OWNED BY public.parametr.id_parametr;
          public          postgres    false    224            �            1259    16604    printing_technology    TABLE     s   CREATE TABLE public.printing_technology (
    id_technology integer NOT NULL,
    name_technology text NOT NULL
);
 '   DROP TABLE public.printing_technology;
       public         heap    postgres    false            �            1259    16603 %   printing_technology_id_technology_seq    SEQUENCE     �   CREATE SEQUENCE public.printing_technology_id_technology_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.printing_technology_id_technology_seq;
       public          postgres    false    223            \           0    0 %   printing_technology_id_technology_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.printing_technology_id_technology_seq OWNED BY public.printing_technology.id_technology;
          public          postgres    false    222            �            1259    16595    smell    TABLE     ]   CREATE TABLE public.smell (
    id_smell integer NOT NULL,
    degree_smell text NOT NULL
);
    DROP TABLE public.smell;
       public         heap    postgres    false            �            1259    16594    smell_id_smell_seq    SEQUENCE     �   CREATE SEQUENCE public.smell_id_smell_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.smell_id_smell_seq;
       public          postgres    false    221            ]           0    0    smell_id_smell_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.smell_id_smell_seq OWNED BY public.smell.id_smell;
          public          postgres    false    220            �            1259    16690    technology_material    TABLE     r   CREATE TABLE public.technology_material (
    id_material integer NOT NULL,
    id_technology integer NOT NULL
);
 '   DROP TABLE public.technology_material;
       public         heap    postgres    false            �            1259    16577    type_of_material    TABLE     d   CREATE TABLE public.type_of_material (
    id_type integer NOT NULL,
    name_type text NOT NULL
);
 $   DROP TABLE public.type_of_material;
       public         heap    postgres    false            �            1259    16576    type_of_material_id_type_seq    SEQUENCE     �   CREATE SEQUENCE public.type_of_material_id_type_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.type_of_material_id_type_seq;
       public          postgres    false    217            ^           0    0    type_of_material_id_type_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.type_of_material_id_type_seq OWNED BY public.type_of_material.id_type;
          public          postgres    false    216            �           2604    16571    gost id_gost    DEFAULT     l   ALTER TABLE ONLY public.gost ALTER COLUMN id_gost SET DEFAULT nextval('public.gost_id_gost_seq'::regclass);
 ;   ALTER TABLE public.gost ALTER COLUMN id_gost DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16589    manufacturer id_manufacturer    DEFAULT     �   ALTER TABLE ONLY public.manufacturer ALTER COLUMN id_manufacturer SET DEFAULT nextval('public.manufacturer_id_manufacturer_seq'::regclass);
 K   ALTER TABLE public.manufacturer ALTER COLUMN id_manufacturer DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16625    material id_material    DEFAULT     |   ALTER TABLE ONLY public.material ALTER COLUMN id_material SET DEFAULT nextval('public.material_id_material_seq'::regclass);
 C   ALTER TABLE public.material ALTER COLUMN id_material DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    16616    parametr id_parametr    DEFAULT     |   ALTER TABLE ONLY public.parametr ALTER COLUMN id_parametr SET DEFAULT nextval('public.parametr_id_parametr_seq'::regclass);
 C   ALTER TABLE public.parametr ALTER COLUMN id_parametr DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16607 !   printing_technology id_technology    DEFAULT     �   ALTER TABLE ONLY public.printing_technology ALTER COLUMN id_technology SET DEFAULT nextval('public.printing_technology_id_technology_seq'::regclass);
 P   ALTER TABLE public.printing_technology ALTER COLUMN id_technology DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16598    smell id_smell    DEFAULT     p   ALTER TABLE ONLY public.smell ALTER COLUMN id_smell SET DEFAULT nextval('public.smell_id_smell_seq'::regclass);
 =   ALTER TABLE public.smell ALTER COLUMN id_smell DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    16580    type_of_material id_type    DEFAULT     �   ALTER TABLE ONLY public.type_of_material ALTER COLUMN id_type SET DEFAULT nextval('public.type_of_material_id_type_seq'::regclass);
 G   ALTER TABLE public.type_of_material ALTER COLUMN id_type DROP DEFAULT;
       public          postgres    false    216    217    217            B          0    16568    gost 
   TABLE DATA           2   COPY public.gost (id_gost, name_gost) FROM stdin;
    public          postgres    false    215   :U       O          0    16660    gost_material 
   TABLE DATA           =   COPY public.gost_material (id_material, id_gost) FROM stdin;
    public          postgres    false    228   }U       F          0    16586    manufacturer 
   TABLE DATA           S   COPY public.manufacturer (id_manufacturer, name_manufacturer, country) FROM stdin;
    public          postgres    false    219   �U       N          0    16622    material 
   TABLE DATA           i   COPY public.material (id_material, name_material, id_manufacturer, id_smell, id_type, price) FROM stdin;
    public          postgres    false    227   V       Q          0    16707    material_parameters 
   TABLE DATA           W   COPY public.material_parameters (id_material, id_parametr, value_parametr) FROM stdin;
    public          postgres    false    230   �V       L          0    16613    parametr 
   TABLE DATA           >   COPY public.parametr (id_parametr, name_parametr) FROM stdin;
    public          postgres    false    225   �W       J          0    16604    printing_technology 
   TABLE DATA           M   COPY public.printing_technology (id_technology, name_technology) FROM stdin;
    public          postgres    false    223   �Y       H          0    16595    smell 
   TABLE DATA           7   COPY public.smell (id_smell, degree_smell) FROM stdin;
    public          postgres    false    221   �Y       P          0    16690    technology_material 
   TABLE DATA           I   COPY public.technology_material (id_material, id_technology) FROM stdin;
    public          postgres    false    229   ^Z       D          0    16577    type_of_material 
   TABLE DATA           >   COPY public.type_of_material (id_type, name_type) FROM stdin;
    public          postgres    false    217   �Z       _           0    0    gost_id_gost_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.gost_id_gost_seq', 1, false);
          public          postgres    false    214            `           0    0     manufacturer_id_manufacturer_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.manufacturer_id_manufacturer_seq', 1, false);
          public          postgres    false    218            a           0    0    material_id_material_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.material_id_material_seq', 1, false);
          public          postgres    false    226            b           0    0    parametr_id_parametr_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.parametr_id_parametr_seq', 68, true);
          public          postgres    false    224            c           0    0 %   printing_technology_id_technology_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.printing_technology_id_technology_seq', 1, false);
          public          postgres    false    222            d           0    0    smell_id_smell_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.smell_id_smell_seq', 1, false);
          public          postgres    false    220            e           0    0    type_of_material_id_type_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.type_of_material_id_type_seq', 1, false);
          public          postgres    false    216            �           2606    16664     gost_material gost_material_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.gost_material
    ADD CONSTRAINT gost_material_pkey PRIMARY KEY (id_material, id_gost);
 J   ALTER TABLE ONLY public.gost_material DROP CONSTRAINT gost_material_pkey;
       public            postgres    false    228    228            �           2606    16575    gost gost_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.gost
    ADD CONSTRAINT gost_pkey PRIMARY KEY (id_gost);
 8   ALTER TABLE ONLY public.gost DROP CONSTRAINT gost_pkey;
       public            postgres    false    215            �           2606    16593    manufacturer manufacturer_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.manufacturer
    ADD CONSTRAINT manufacturer_pkey PRIMARY KEY (id_manufacturer);
 H   ALTER TABLE ONLY public.manufacturer DROP CONSTRAINT manufacturer_pkey;
       public            postgres    false    219            �           2606    16711 ,   material_parameters material_parameters_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.material_parameters
    ADD CONSTRAINT material_parameters_pkey PRIMARY KEY (id_material, id_parametr);
 V   ALTER TABLE ONLY public.material_parameters DROP CONSTRAINT material_parameters_pkey;
       public            postgres    false    230    230            �           2606    16629    material material_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id_material);
 @   ALTER TABLE ONLY public.material DROP CONSTRAINT material_pkey;
       public            postgres    false    227            �           2606    16620    parametr parametr_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.parametr
    ADD CONSTRAINT parametr_pkey PRIMARY KEY (id_parametr);
 @   ALTER TABLE ONLY public.parametr DROP CONSTRAINT parametr_pkey;
       public            postgres    false    225            �           2606    16611 ,   printing_technology printing_technology_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.printing_technology
    ADD CONSTRAINT printing_technology_pkey PRIMARY KEY (id_technology);
 V   ALTER TABLE ONLY public.printing_technology DROP CONSTRAINT printing_technology_pkey;
       public            postgres    false    223            �           2606    16602    smell smell_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.smell
    ADD CONSTRAINT smell_pkey PRIMARY KEY (id_smell);
 :   ALTER TABLE ONLY public.smell DROP CONSTRAINT smell_pkey;
       public            postgres    false    221            �           2606    16694 ,   technology_material technology_material_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.technology_material
    ADD CONSTRAINT technology_material_pkey PRIMARY KEY (id_material, id_technology);
 V   ALTER TABLE ONLY public.technology_material DROP CONSTRAINT technology_material_pkey;
       public            postgres    false    229    229            �           2606    16584 &   type_of_material type_of_material_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.type_of_material
    ADD CONSTRAINT type_of_material_pkey PRIMARY KEY (id_type);
 P   ALTER TABLE ONLY public.type_of_material DROP CONSTRAINT type_of_material_pkey;
       public            postgres    false    217            �           2606    16670 (   gost_material gost_material_id_gost_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gost_material
    ADD CONSTRAINT gost_material_id_gost_fkey FOREIGN KEY (id_gost) REFERENCES public.gost(id_gost);
 R   ALTER TABLE ONLY public.gost_material DROP CONSTRAINT gost_material_id_gost_fkey;
       public          postgres    false    3223    228    215            �           2606    16665 ,   gost_material gost_material_id_material_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.gost_material
    ADD CONSTRAINT gost_material_id_material_fkey FOREIGN KEY (id_material) REFERENCES public.material(id_material);
 V   ALTER TABLE ONLY public.gost_material DROP CONSTRAINT gost_material_id_material_fkey;
       public          postgres    false    228    227    3235            �           2606    16630 &   material material_id_manufacturer_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_id_manufacturer_fkey FOREIGN KEY (id_manufacturer) REFERENCES public.manufacturer(id_manufacturer);
 P   ALTER TABLE ONLY public.material DROP CONSTRAINT material_id_manufacturer_fkey;
       public          postgres    false    227    3227    219            �           2606    16635    material material_id_smell_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_id_smell_fkey FOREIGN KEY (id_smell) REFERENCES public.smell(id_smell);
 I   ALTER TABLE ONLY public.material DROP CONSTRAINT material_id_smell_fkey;
       public          postgres    false    221    227    3229            �           2606    16640    material material_id_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_id_type_fkey FOREIGN KEY (id_type) REFERENCES public.type_of_material(id_type);
 H   ALTER TABLE ONLY public.material DROP CONSTRAINT material_id_type_fkey;
       public          postgres    false    3225    217    227            �           2606    16712 8   material_parameters material_parameters_id_material_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_parameters
    ADD CONSTRAINT material_parameters_id_material_fkey FOREIGN KEY (id_material) REFERENCES public.material(id_material);
 b   ALTER TABLE ONLY public.material_parameters DROP CONSTRAINT material_parameters_id_material_fkey;
       public          postgres    false    3235    230    227            �           2606    16717 8   material_parameters material_parameters_id_parametr_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.material_parameters
    ADD CONSTRAINT material_parameters_id_parametr_fkey FOREIGN KEY (id_parametr) REFERENCES public.parametr(id_parametr);
 b   ALTER TABLE ONLY public.material_parameters DROP CONSTRAINT material_parameters_id_parametr_fkey;
       public          postgres    false    3233    230    225            �           2606    16695 8   technology_material technology_material_id_material_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.technology_material
    ADD CONSTRAINT technology_material_id_material_fkey FOREIGN KEY (id_material) REFERENCES public.material(id_material);
 b   ALTER TABLE ONLY public.technology_material DROP CONSTRAINT technology_material_id_material_fkey;
       public          postgres    false    227    229    3235            �           2606    16700 :   technology_material technology_material_id_technology_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.technology_material
    ADD CONSTRAINT technology_material_id_technology_fkey FOREIGN KEY (id_technology) REFERENCES public.printing_technology(id_technology);
 d   ALTER TABLE ONLY public.technology_material DROP CONSTRAINT technology_material_id_technology_fkey;
       public          postgres    false    223    229    3231            B   3   x�3���W022�4�2�,-�u���<sS.�����)W� #
(      O      x�3�4�2�4�2�4�2�4�2�c���� '�      F   _   x�3�ru漰�¾��/���e��Z�����ya�.칰��^��1�[~QnNbR1煅V\��e�ya҅�@[.̹��ހjV� G�5=      N   �   x�5OKA]W��.@�����O�� V6�!�d����+p�p��)D*���ի�]����6�iT�*���7�'$�lKn1tA�M۩�����`��f��`��� �7��x]C�/`�F`y�#l�K7��@��!��IW���b:"�$]Ӆ��:Ўg.b�"��-��3nȢ$�Г������O�'zY!��MX�      Q   �   x�-�ɑE!�&�+K.���}H%۲���f���!!�fA��9�d�i�%>uA��+x$b�p��mc*��ǍA�fN�����8=`�W>�����5�6����ῌN��rH��WM���t�Pgěr������D\O�|ωv����$T��[(9	��O'��F�F�,o���EWR�	�-��SK�����TV[~�s��7?:<      L   �  x��TIN�@<ǯ�R,!�	K8�3o	N�"�"�@�pb;X��H���GT�����f����	Jx@���s=�P�MѺ!;��^��gİR����A[ZxCwl�r�g2@Jt��_�-:�E.'S�� %M����;ʰ��]�.G,�h��@�\�J�/�;
��Rx��;�$���p�����j��?�r�ާ*���Kx��k蘉�=��s<tpU86�{���H@|Y+�w��������	=�^]Z�,�J�,��.�)M�r�W�K�Zb�+%�I��
�~Lx��gH��J�!'��HZ �aY(�XҙJ���q*7�ߴӤ��Z3$�80*w�Q�M1����v�⹩�5I�,��&l�>!5���,�O���4�QjT��U�����5�$V̣�fMB�J��>d�j�G�Wic�Y,�)�!���)�*v��ӌ|�SE���Z@����iRNȥںAΙ}k�&sǖ<X�<��      J   %   x�3�ts��2�t�	�2��qv�2��q����� Q�)      H   Q   x�3�0����.l�����.�^��e�ya��@���/�D��2�\l ��ra��r� ];.��sa/��=... ��Cz      P       x�3�4�2bcNC. 6�4bc�=... 5>~      D   v   x�3�pqW�����.6^l����..#���7�1�i'�Ew�w*\l����T��aǅ=�^l�2�0�bP���ދݸՙr^X���	,����;���^l�oG� �m|     