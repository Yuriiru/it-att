PGDMP                          {            Shop    15.1    15.1 5    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            B           1262    16756    Shop    DATABASE     h   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "Shop";
                postgres    false            �            1259    16758    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16757    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            C           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    16765    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    16764    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            D           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    16772    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16771    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    219            E           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    218            �            1259    16779    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(100),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    16778    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    221            F           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    220            �            1259    16788    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    16798    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    16797    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    225            G           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    224            �            1259    16787    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    223            H           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    222            �           2604    16761    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            �           2604    16768    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16775 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    16782 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16791 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16801    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            2          0    16758    category 
   TABLE DATA                 public          postgres    false    215   ]9       4          0    16765    image 
   TABLE DATA                 public          postgres    false    217   �9       6          0    16772    orders 
   TABLE DATA                 public          postgres    false    219   �>       8          0    16779    person 
   TABLE DATA                 public          postgres    false    221   �?       :          0    16788    product 
   TABLE DATA                 public          postgres    false    223   �@       <          0    16798    product_cart 
   TABLE DATA                 public          postgres    false    225   �I       I           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 6, true);
          public          postgres    false    214            J           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 55, true);
          public          postgres    false    216            K           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 2, true);
          public          postgres    false    218            L           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 5, true);
          public          postgres    false    220            M           0    0    product_cart_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.product_cart_id_seq', 4, true);
          public          postgres    false    224            N           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 11, true);
          public          postgres    false    222            �           2606    16763    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    16770    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    16777    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    219            �           2606    16786    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    221            �           2606    16803    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    225            �           2606    16796    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    223            �           2606    16805 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    223            �           2606    16811 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    221    3478            �           2606    16821 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    223    3472    215            �           2606    16816 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    3480    219    223            �           2606    16806 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    217    3480    223            �           2606    16831 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    225    223    3480            �           2606    16826 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    221    225    3478            2   ^   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�/*�HU״��$M�P�obeRbr�����|�A:�� $�6      4   �  x���Mn]E��Yŝő\W�U�bR�H�H�a�?նQ[�(�`� b���^vD����w�=�����:}����/�/gO��ܼ�//�zyU�u9��˸|�/^�+=]n^_�7������������rN��C5���BC��f%f�FT]w��~������c�~�����ǟv����BH(@q���`XѭD�ͫ�=����1F+Гp�$ �'��	r�Π9E�1�����w�B����+Z�j����F�8a�� L��K*�rKC���O�r�mVB�#��4,�w	�Cu��w�gqeT��@ە��j��{�� �`�(�[Dv>�Hp���ްg5t�\&�x?G����&�5�-w��p�K]����W�G���y�\�d�d\Ij��"b�.�[���vp����R�x�"-Rp|�f����\�(�>|���S2b,0"�Յu��l����jC�(Qk:#H&3��Ź�nB�f�j���X��AZb�&r�s�[��Z��.��	�6�h�4��+!W���u� GaP)��\��6O{)�jc��),Pk5K/�KM��[0oޛ�0��ځkn (��\ �z�s��V`�NV4G�~��t����"�S�qnE��Mhӳ��	xf\�n:yk3Ij�����~������c���ӱ̔C���ֆb7�4���kђ�дz�*	���aZ�[�me����Vޡy;�t+q���	�R�MAe�+�3�f
��;�l��^����[�FnߵBA�-B��ś���~;�4.d�w{���&�N��K2��K���'�Z��2_��bG������۝WJ�[(�&�V��tڎ>-Lbi�|��s�h��-q�ԫP<��v��zg�D�y�<�i�s��b�/�.��y�Y#��j��>�>ANdk��`�Z�~;�_��d.� �f��,#�Zf	y��[	N������x4}����\#[ÞV�p9�Cфtڎ>-GP-�G�oBFw3�%�$Ec|�;oG�.�B�"��h��#ګ��7k�ŝm���lG�Fgz�/�%��)N�A��@�"KP��Mha?g�A֜����<�s�,�g��2D��둎�a�	��U�	+1�>T�,�(�:��t��񴽣%LѬ�Z�X$T���X!� 6���6��`�&�����8�ܘ�Aͨ�7ʘt�L�""A�Ґk�０�d:kIRtݦ�h�	N��^      6   �   x���=n�0�w��[T2�ɝ:d0P�@�vdI4�a�����(���||��^�������[�3�zZbZV8�@��1�>�{���=����!�f�����2���g^���\�|����pdJ8rAQRn���Q�V�p%�t���T34TZi�+ʝ��kT��>�{=9{z����� ,�j�h���C��aи^
O}��BjjCb�ĔгUd��jgEzA��TDᨪ_�qn�      8   C  x���Ko�@ ໿����* V����
�w�4�����C���41�I��6�d&4�vh�&C�(�b�&eUf��)�iF�EU�e_�E�L_�y�Ì�)3B���Q�<r���[�P��tB|(�Ҝ�a�Q����̂
�D]�����k~����>d���h�6�O�������{���!V]ݱY�x�\��I$+�6�ai�H�V[w��=wA����z����%>�4g^m�w5�|H�:!��x͒T@`C+'lx�B�}��u���������
I�:8�Y�ndٍivlW�z@Ύ���N�_dR(�u�J{�U      :   �  x��X]o�}��p��$� )~��H�40`9F��@_�Z�$Q����?"ˮd�H�P��Ӵ�E)��������Kz��]rIYEQ�"y��;s�̙��}w��_m��w7�2����jUg�Q�ܯ6�ǵ̈́٬4�o��mݽj��۬�wf�Q��=wk�m$L�����G��������U<���x�mm���gw��b�|\L��2��j2�Mf
&],gJ�l�Y����GXm�{M�M������o�C���`�I��'���_��~�nd��Ȗs�r&��R�b!K3�v��	�`x�u��(�0�җ5�0N�K�F���^x�0��O���_=l���8.���#��qx���{�6�M�ǟs��3��g��1�K^#�K��^�6�q�v̇���4<®	N�##7Od�Ƈr��<`a�,^w�l��uLإ?b'P�9}���ȝK����&GT�ȱ�ң���Xp��:�m�ǁ��{��0CBҳ;aWK� l����b��~��#�������1��c~�{��^��k>�R�\H�����ʎ�r#���s5a�~}玘�
np�7�w�0Q�qD~�@Zh:�a��s"���zB�\�-A��g������ix�ElMX��n��Dv�`�0�2�d�|��6WH1i�O>��P6J\%g�9���p���1S�oJ���RhF������8dӹP��,� ���et�C֞�^0$��+�
�4��s��S�vl�i���AH�C��d:��I�������E��
�%D��E�RR��̰�<:��1�����з䔊��]:D.���z�i6�����{��%�Ε���*e����r�Ӛ�|��f�P�Z�ї�S!W����3�C��[/
���	��Cl�!(mnb���і�;@}K�
�Y����Cƽ\�B�u�_I���h�k�䱔�3�
���&�%�l� �á�|²C�VL��jm�ܬo��e�Tm�w^Q�L.���8a�H�9|���e�O�f�IV��#xlg�ߒ<	!x�b�LP��0�S�c˳��*���QK���xT۹W�6����	SL��� �,xA�W��?�����l�wjU"��N��2[o5j�u��jU1$jL�E1�@��PE5]���t�����X�yT$2�����Nx]���0rK�fQ��I����`!�6	�|H�V�)���â�6P1Jm�[��9��+��t@
�8�Oy.��2{`�Ж�͗e���p���۷�E����~�;/E�מ�+K�U�$&�a�
6P��(@�ͅl�fR�K��'6�x��F�q���it�~���JmP0�d�i���)c/��)[9��A1qcs�K1��Ī�ո�YD���� HVtJ�	�Zy%皊���+N�J����U���f�E��Q�ngS)��87����bH����L�8O��D%RhQy����|D��<��6;������WE�D�.����͔ių�J��?X�`%�'�B�\�H�sQVָÙm*�6��NYj��Q�I�xM�$�)th7�kf����>��7�çN1����zK�DK�����&Z'Ń�M0N$��F�@����J�P��\w5wO)��P=���|9��1U�L���Ș[��6·SZ���od�+*42D�%�S�L���� Id�L]V���ۨ��0�Vy|�R}h֓7�*{{�>C;79�Lf��%gd�!����b
�~#�����7�fpa󼡰_�n-_��$,#����.�4�D*�^��,�ߤ3�,<EBXc�/Oin�*:�?f���ΥUo)`]3ˁּ�hY���|:��ܪ���II6��3�����;'G'�Z�y"��wʞԶ�"�њE�sw�����g�9�WX��࿓+�r)��߉�p��[.��1�5��T������4k�����=ET��A~�!�Zdp�9��՗���y��$"� �+�y,7w4����1����M���A'rSgԶ��v��,���9�3�d�P���{��p�`?�}��m��D(�n�dpZ�7-р.�B������۪�9��b�_3�/�A�U�޷��w���z�ɑ��a'i�F��$���h8�y��f`;59o1��Ӏ��x��,O;xrEw6��L>c�1��b�Џ�*��ӳ).mR�k�8�D����2;�Tv6+�[�u/�E.VV�}T_      <   
   x���         