PGDMP     7    (                {            recipefy    15.2    15.2 D    R           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            S           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            T           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            U           1262    16562    recipefy    DATABASE        CREATE DATABASE recipefy WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE recipefy;
                postgres    false            ?            1259    16631    dieta    TABLE     ]   CREATE TABLE public.dieta (
    diet_id integer NOT NULL,
    nome character varying(255)
);
    DROP TABLE public.dieta;
       public         heap    postgres    false            ?            1259    16630    dieta_diet_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.dieta_diet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.dieta_diet_id_seq;
       public          postgres    false    224            V           0    0    dieta_diet_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.dieta_diet_id_seq OWNED BY public.dieta.diet_id;
          public          postgres    false    223            ?            1259    16614    ingrediente    TABLE     ?   CREATE TABLE public.ingrediente (
    ingrediente_id integer NOT NULL,
    nome character varying(255),
    kcal double precision,
    carb double precision,
    lipid double precision,
    user_id integer,
    unid_id integer
);
    DROP TABLE public.ingrediente;
       public         heap    postgres    false            ?            1259    16613    ingrediente_ingrediente_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.ingrediente_ingrediente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ingrediente_ingrediente_id_seq;
       public          postgres    false    222            W           0    0    ingrediente_ingrediente_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ingrediente_ingrediente_id_seq OWNED BY public.ingrediente.ingrediente_id;
          public          postgres    false    221            ?            1259    16638    intolerancia    TABLE     f   CREATE TABLE public.intolerancia (
    intole_id integer NOT NULL,
    nome character varying(255)
);
     DROP TABLE public.intolerancia;
       public         heap    postgres    false            ?            1259    16637    intolerancia_intole_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.intolerancia_intole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.intolerancia_intole_id_seq;
       public          postgres    false    226            X           0    0    intolerancia_intole_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.intolerancia_intole_id_seq OWNED BY public.intolerancia.intole_id;
          public          postgres    false    225            ?            1259    16664    possuidieta    TABLE     `   CREATE TABLE public.possuidieta (
    diet_id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.possuidieta;
       public         heap    postgres    false            ?            1259    16679    possuiingrediente    TABLE     p   CREATE TABLE public.possuiingrediente (
    receita_id integer NOT NULL,
    ingrediente_id integer NOT NULL
);
 %   DROP TABLE public.possuiingrediente;
       public         heap    postgres    false            ?            1259    16649    possuiintolerancia    TABLE     i   CREATE TABLE public.possuiintolerancia (
    intole_id integer NOT NULL,
    user_id integer NOT NULL
);
 &   DROP TABLE public.possuiintolerancia;
       public         heap    postgres    false            ?            1259    16583    receita    TABLE     ?   CREATE TABLE public.receita (
    receita_id integer NOT NULL,
    nome character varying(255),
    description text,
    preparo text,
    qnt_por integer,
    user_id integer
);
    DROP TABLE public.receita;
       public         heap    postgres    false            ?            1259    16582    receita_receita_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.receita_receita_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.receita_receita_id_seq;
       public          postgres    false    217            Y           0    0    receita_receita_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.receita_receita_id_seq OWNED BY public.receita.receita_id;
          public          postgres    false    216            ?            1259    16596    tag    TABLE     f   CREATE TABLE public.tag (
    tag character varying(255) NOT NULL,
    receita_id integer NOT NULL
);
    DROP TABLE public.tag;
       public         heap    postgres    false            ?            1259    16607    unidade    TABLE     _   CREATE TABLE public.unidade (
    unid_id integer NOT NULL,
    nome character varying(255)
);
    DROP TABLE public.unidade;
       public         heap    postgres    false            ?            1259    16606    unidade_unid_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.unidade_unid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.unidade_unid_id_seq;
       public          postgres    false    220            Z           0    0    unidade_unid_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.unidade_unid_id_seq OWNED BY public.unidade.unid_id;
          public          postgres    false    219            ?            1259    16564    usuario    TABLE     ?   CREATE TABLE public.usuario (
    user_id integer NOT NULL,
    nome character varying(150),
    email character varying(255),
    foto text,
    altur double precision,
    peso double precision,
    senha text
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            ?            1259    16563    usuario_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuario_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.usuario_user_id_seq;
       public          postgres    false    215            [           0    0    usuario_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.usuario_user_id_seq OWNED BY public.usuario.user_id;
          public          postgres    false    214            ?           2604    16634    dieta diet_id    DEFAULT     n   ALTER TABLE ONLY public.dieta ALTER COLUMN diet_id SET DEFAULT nextval('public.dieta_diet_id_seq'::regclass);
 <   ALTER TABLE public.dieta ALTER COLUMN diet_id DROP DEFAULT;
       public          postgres    false    224    223    224            ?           2604    16617    ingrediente ingrediente_id    DEFAULT     ?   ALTER TABLE ONLY public.ingrediente ALTER COLUMN ingrediente_id SET DEFAULT nextval('public.ingrediente_ingrediente_id_seq'::regclass);
 I   ALTER TABLE public.ingrediente ALTER COLUMN ingrediente_id DROP DEFAULT;
       public          postgres    false    222    221    222            ?           2604    16641    intolerancia intole_id    DEFAULT     ?   ALTER TABLE ONLY public.intolerancia ALTER COLUMN intole_id SET DEFAULT nextval('public.intolerancia_intole_id_seq'::regclass);
 E   ALTER TABLE public.intolerancia ALTER COLUMN intole_id DROP DEFAULT;
       public          postgres    false    226    225    226            ?           2604    16586    receita receita_id    DEFAULT     x   ALTER TABLE ONLY public.receita ALTER COLUMN receita_id SET DEFAULT nextval('public.receita_receita_id_seq'::regclass);
 A   ALTER TABLE public.receita ALTER COLUMN receita_id DROP DEFAULT;
       public          postgres    false    217    216    217            ?           2604    16610    unidade unid_id    DEFAULT     r   ALTER TABLE ONLY public.unidade ALTER COLUMN unid_id SET DEFAULT nextval('public.unidade_unid_id_seq'::regclass);
 >   ALTER TABLE public.unidade ALTER COLUMN unid_id DROP DEFAULT;
       public          postgres    false    220    219    220            ?           2604    16567    usuario user_id    DEFAULT     r   ALTER TABLE ONLY public.usuario ALTER COLUMN user_id SET DEFAULT nextval('public.usuario_user_id_seq'::regclass);
 >   ALTER TABLE public.usuario ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    215    214    215            J          0    16631    dieta 
   TABLE DATA           .   COPY public.dieta (diet_id, nome) FROM stdin;
    public          postgres    false    224   O       H          0    16614    ingrediente 
   TABLE DATA           `   COPY public.ingrediente (ingrediente_id, nome, kcal, carb, lipid, user_id, unid_id) FROM stdin;
    public          postgres    false    222   ?O       L          0    16638    intolerancia 
   TABLE DATA           7   COPY public.intolerancia (intole_id, nome) FROM stdin;
    public          postgres    false    226   ?O       N          0    16664    possuidieta 
   TABLE DATA           7   COPY public.possuidieta (diet_id, user_id) FROM stdin;
    public          postgres    false    228   ?O       O          0    16679    possuiingrediente 
   TABLE DATA           G   COPY public.possuiingrediente (receita_id, ingrediente_id) FROM stdin;
    public          postgres    false    229   ?O       M          0    16649    possuiintolerancia 
   TABLE DATA           @   COPY public.possuiintolerancia (intole_id, user_id) FROM stdin;
    public          postgres    false    227   P       C          0    16583    receita 
   TABLE DATA           [   COPY public.receita (receita_id, nome, description, preparo, qnt_por, user_id) FROM stdin;
    public          postgres    false    217   -P       D          0    16596    tag 
   TABLE DATA           .   COPY public.tag (tag, receita_id) FROM stdin;
    public          postgres    false    218   JP       F          0    16607    unidade 
   TABLE DATA           0   COPY public.unidade (unid_id, nome) FROM stdin;
    public          postgres    false    220   gP       A          0    16564    usuario 
   TABLE DATA           Q   COPY public.usuario (user_id, nome, email, foto, altur, peso, senha) FROM stdin;
    public          postgres    false    215   ?P       \           0    0    dieta_diet_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.dieta_diet_id_seq', 1, false);
          public          postgres    false    223            ]           0    0    ingrediente_ingrediente_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ingrediente_ingrediente_id_seq', 1, false);
          public          postgres    false    221            ^           0    0    intolerancia_intole_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.intolerancia_intole_id_seq', 1, false);
          public          postgres    false    225            _           0    0    receita_receita_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.receita_receita_id_seq', 1, false);
          public          postgres    false    216            `           0    0    unidade_unid_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.unidade_unid_id_seq', 1, false);
          public          postgres    false    219            a           0    0    usuario_user_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.usuario_user_id_seq', 1, false);
          public          postgres    false    214            ?           2606    16636    dieta dieta_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.dieta
    ADD CONSTRAINT dieta_pkey PRIMARY KEY (diet_id);
 :   ALTER TABLE ONLY public.dieta DROP CONSTRAINT dieta_pkey;
       public            postgres    false    224            ?           2606    16619    ingrediente ingrediente_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT ingrediente_pkey PRIMARY KEY (ingrediente_id);
 F   ALTER TABLE ONLY public.ingrediente DROP CONSTRAINT ingrediente_pkey;
       public            postgres    false    222            ?           2606    16643    intolerancia intolerancia_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.intolerancia
    ADD CONSTRAINT intolerancia_pkey PRIMARY KEY (intole_id);
 H   ALTER TABLE ONLY public.intolerancia DROP CONSTRAINT intolerancia_pkey;
       public            postgres    false    226            ?           2606    16668    possuidieta possuidieta_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.possuidieta
    ADD CONSTRAINT possuidieta_pkey PRIMARY KEY (diet_id, user_id);
 F   ALTER TABLE ONLY public.possuidieta DROP CONSTRAINT possuidieta_pkey;
       public            postgres    false    228    228            ?           2606    16683 (   possuiingrediente possuiingrediente_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.possuiingrediente
    ADD CONSTRAINT possuiingrediente_pkey PRIMARY KEY (receita_id, ingrediente_id);
 R   ALTER TABLE ONLY public.possuiingrediente DROP CONSTRAINT possuiingrediente_pkey;
       public            postgres    false    229    229            ?           2606    16653 *   possuiintolerancia possuiintolerancia_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.possuiintolerancia
    ADD CONSTRAINT possuiintolerancia_pkey PRIMARY KEY (intole_id, user_id);
 T   ALTER TABLE ONLY public.possuiintolerancia DROP CONSTRAINT possuiintolerancia_pkey;
       public            postgres    false    227    227            ?           2606    16590    receita receita_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.receita
    ADD CONSTRAINT receita_pkey PRIMARY KEY (receita_id);
 >   ALTER TABLE ONLY public.receita DROP CONSTRAINT receita_pkey;
       public            postgres    false    217            ?           2606    16600    tag tag_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (tag, receita_id);
 6   ALTER TABLE ONLY public.tag DROP CONSTRAINT tag_pkey;
       public            postgres    false    218    218            ?           2606    16612    unidade unidade_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.unidade
    ADD CONSTRAINT unidade_pkey PRIMARY KEY (unid_id);
 >   ALTER TABLE ONLY public.unidade DROP CONSTRAINT unidade_pkey;
       public            postgres    false    220            ?           2606    16571    usuario usuario_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    215            ?           2606    16625 $   ingrediente ingrediente_unid_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT ingrediente_unid_id_fkey FOREIGN KEY (unid_id) REFERENCES public.unidade(unid_id);
 N   ALTER TABLE ONLY public.ingrediente DROP CONSTRAINT ingrediente_unid_id_fkey;
       public          postgres    false    220    3227    222            ?           2606    16620 $   ingrediente ingrediente_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT ingrediente_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usuario(user_id);
 N   ALTER TABLE ONLY public.ingrediente DROP CONSTRAINT ingrediente_user_id_fkey;
       public          postgres    false    3221    222    215            ?           2606    16669 $   possuidieta possuidieta_diet_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.possuidieta
    ADD CONSTRAINT possuidieta_diet_id_fkey FOREIGN KEY (diet_id) REFERENCES public.dieta(diet_id);
 N   ALTER TABLE ONLY public.possuidieta DROP CONSTRAINT possuidieta_diet_id_fkey;
       public          postgres    false    3231    228    224            ?           2606    16674 $   possuidieta possuidieta_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.possuidieta
    ADD CONSTRAINT possuidieta_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usuario(user_id);
 N   ALTER TABLE ONLY public.possuidieta DROP CONSTRAINT possuidieta_user_id_fkey;
       public          postgres    false    3221    215    228            ?           2606    16689 7   possuiingrediente possuiingrediente_ingrediente_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.possuiingrediente
    ADD CONSTRAINT possuiingrediente_ingrediente_id_fkey FOREIGN KEY (ingrediente_id) REFERENCES public.ingrediente(ingrediente_id);
 a   ALTER TABLE ONLY public.possuiingrediente DROP CONSTRAINT possuiingrediente_ingrediente_id_fkey;
       public          postgres    false    222    229    3229            ?           2606    16684 3   possuiingrediente possuiingrediente_receita_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.possuiingrediente
    ADD CONSTRAINT possuiingrediente_receita_id_fkey FOREIGN KEY (receita_id) REFERENCES public.receita(receita_id);
 ]   ALTER TABLE ONLY public.possuiingrediente DROP CONSTRAINT possuiingrediente_receita_id_fkey;
       public          postgres    false    3223    229    217            ?           2606    16654 4   possuiintolerancia possuiintolerancia_intole_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.possuiintolerancia
    ADD CONSTRAINT possuiintolerancia_intole_id_fkey FOREIGN KEY (intole_id) REFERENCES public.intolerancia(intole_id);
 ^   ALTER TABLE ONLY public.possuiintolerancia DROP CONSTRAINT possuiintolerancia_intole_id_fkey;
       public          postgres    false    3233    227    226            ?           2606    16659 2   possuiintolerancia possuiintolerancia_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.possuiintolerancia
    ADD CONSTRAINT possuiintolerancia_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usuario(user_id);
 \   ALTER TABLE ONLY public.possuiintolerancia DROP CONSTRAINT possuiintolerancia_user_id_fkey;
       public          postgres    false    215    3221    227            ?           2606    16591    receita receita_user_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.receita
    ADD CONSTRAINT receita_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usuario(user_id);
 F   ALTER TABLE ONLY public.receita DROP CONSTRAINT receita_user_id_fkey;
       public          postgres    false    3221    215    217            ?           2606    16601    tag tag_receita_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_receita_id_fkey FOREIGN KEY (receita_id) REFERENCES public.receita(receita_id);
 A   ALTER TABLE ONLY public.tag DROP CONSTRAINT tag_receita_id_fkey;
       public          postgres    false    217    218    3223            J      x?????? ? ?      H      x?????? ? ?      L      x?????? ? ?      N      x?????? ? ?      O      x?????? ? ?      M      x?????? ? ?      C      x?????? ? ?      D      x?????? ? ?      F      x?????? ? ?      A      x?????? ? ?     