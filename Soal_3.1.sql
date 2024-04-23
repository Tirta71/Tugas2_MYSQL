-- SOAL 3.1

-- 1.	Tampilkan produk yang asset nya diatas 20jt
SELECT * FROM produk WHERE harga_beli * stok > 20000000; 
-- +----+-------+------------------+------------+------------+------+----------+------------------------+-----------+-----------------+
-- | id | kode  | nama             | harga_beli | harga_jual | stok | min_stok | foto                   | deskripsi | jenis_produk_id |
-- +----+-------+------------------+------------+------------+------+----------+------------------------+-----------+-----------------+
-- |  2 | TV02  | Televisi 40 inch |    5500000 |    7440000 |    4 |        2 | NULL                   | NULL      |               1 |
-- |  3 | K001  | Kulkas 2 pintu   |    3500000 |    4680000 |    6 |        2 |                        | NULL      |               1 |
-- |  6 | PC01  | PC Desktop HP    |    7000000 |    9984000 |    9 |        2 | NULL                   | NULL      |               5 |
-- |  8 | AC01  | Notebook Acer S  |    8000000 |   11232000 |    7 |        2 | NULL                   | NULL      |               5 |
-- |  9 | LN01  | Notebook Lenovo  |    9000000 |   12480000 |    9 |        2 | NULL                   | NULL      |               5 |
-- | 11 | L005  | Laptop Lenovo    |   13000000 |   16000000 |    5 |        2 |                        | NULL      |               1 |
-- | 18 | L0015 | Laptop Asus      |    3000000 |    5000000 |   10 |       20 | foto-65542ffa66604.jpg | NULL      |               1 |
-- +----+-------+------------------+------------+------------+------+----------+------------------------+-----------+-----------------+

-- 2.	Tampilkan data produk beserta selisih stok dengan minimal stok
SELECT *, stok - min_stok AS selisih_stok
FROM produk;
-- +----+--------+-------------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+--------------+
-- | id | kode   | nama              | harga_beli | harga_jual | stok | min_stok | foto                   | deskripsi                                                                                                                                                                                                           | jenis_produk_id | selisih_stok |
-- +----+--------+-------------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+--------------+
-- |  1 | TV01   | Televisi 21 inchs |    3500000 |   50500000 |    5 |        2 |                        | NULL                                                                                                                                                                                                                |               1 |            3 |
-- |  2 | TV02   | Televisi 40 inch  |    5500000 |    7440000 |    4 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |            2 |
-- |  3 | K001   | Kulkas 2 pintu    |    3500000 |    4680000 |    6 |        2 |                        | NULL                                                                                                                                                                                                                |               1 |            4 |
-- |  4 | M001   | Meja Makan        |     500000 |     600000 |    4 |        3 | NULL                   | NULL                                                                                                                                                                                                                |               2 |            1 |
-- |  5 | TK01   | Teh Kotak         |       3000 |       3500 |    6 |       10 | foto-5.png             | NULL                                                                                                                                                                                                                |               4 |           -4 |
-- |  6 | PC01   | PC Desktop HP     |    7000000 |    9984000 |    9 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               5 |            7 |
-- |  7 | TB01   | Teh Botol         |       2000 |       2500 |   53 |       10 | foto-7.jpg             | NULL                                                                                                                                                                                                                |               4 |           43 |
-- |  8 | AC01   | Notebook Acer S   |    8000000 |   11232000 |    7 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               5 |            5 |
-- |  9 | LN01   | Notebook Lenovo   |    9000000 |   12480000 |    9 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               5 |            7 |
-- | 11 | L005   | Laptop Lenovo     |   13000000 |   16000000 |    5 |        2 |                        | NULL                                                                                                                                                                                                                |               1 |            3 |
-- | 15 | L112   | Kopi              |      20000 |      30000 |   10 |       15 | foto-15.png            | Luwak White Coffee merupakan bubuk biji kopi luwak yang dikombinasikan dengan gurihnya krimer serta manisnya gula. Keharuman kopi serta rasa manisnya yang pas juga membuat popularitas Luwak White Coffee melejit. |               4 |           -5 |
-- | 16 | L113   | Teh Sosro 2       |      10000 |      15000 |   10 |       12 | .png                   | NULL                                                                                                                                                                                                                |               1 |           -2 |
-- | 18 | L0015  | Laptop Asus       |    3000000 |    5000000 |   10 |       20 | foto-65542ffa66604.jpg | NULL                                                                                                                                                                                                                |               1 |          -10 |
-- | 19 | TV0115 | Televisi 22 inc`  |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |            3 |
-- | 20 | TV0116 | Televisi 23 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |            3 |
-- | 21 | TV0117 | Televisi 24 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |            3 |
-- | 22 | TV0118 | Televisi 25 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |            3 |
-- | 24 | TV0120 | Televisi 27 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |            3 |
-- | 25 | TV0121 | Televisi 28 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |            3 |
-- | 26 | TV0122 | Televisi 29 inc   |    3500000 |   50500000 |    5 |        2 | NULL                   | NULL                                                                                                                                                                                                                |               1 |            3 |
-- | 27 | THP001 | Teh Pucuk         |       4000 |       5000 |   10 |        2 | pucuk.jpg              | Teh pucuk adalah                                                                                                                                                                                                    |               4 |            8 |
-- | 28 | THP002 | Teh Pucuk2        |       4000 |       5000 |   10 |        2 | pucuk.jpg              | Teh pucuk adalah                                                                                                                                                                                                    |               4 |            8 |
-- +----+--------+-------------------+------------+------------+------+----------+------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+--------------+

-- 3.	Tampilkan total asset produk secara keseluruhan
SELECT SUM(stok * harga_jual) AS total_asset FROM produk;
-- +-------------+
-- | total_asset |
-- +-------------+
-- |  2491743500 |
-- +-------------+

-- 4.	Tampilkan data pelanggan yang lahirnya antara tahun 1980 sampai 1990
SELECT * FROM pelanggan WHERE YEAR(tgl_lahir) BETWEEN 1980 AND 1990;
-- +----+------+---------------+----+-----------+------------+----------------------+----------+
-- | id | kode | nama          | jk | tmp_lahir | tgl_lahir  | email                | kartu_id |
-- +----+------+---------------+----+-----------+------------+----------------------+----------+
-- |  3 | C003 | Sekar Mirah   | P  | Kediri    | 1983-02-20 | mirah@yahoo.com      |        1 |
-- |  4 | C004 | Swandaru Geni | L  | Kediri    | 1981-01-04 | swandaru@yahoo.com   |        4 |
-- |  5 | C005 | Pradabashu    | L  | Pati      | 1985-04-02 | prada85@gmail.com    |        2 |
-- |  6 | C006 | Gayatri Dwi   | P  | Jakarta   | 1987-11-28 | gaya87@gmail.com     |        1 |
-- |  7 | C007 | Dewi Gyat     | P  | Jakarta   | 1988-12-01 | giyat@gmail.com      |        1 |
-- |  8 | C008 | Andre Haru    | L  | Surabaya  | 1990-07-15 | andre.haru@gmail.com |        4 |
-- | 10 | C010 | Cassanndra    | P  | Belfast   | 1990-11-20 | casa90@gmail.com     |        1 |
-- +----+------+---------------+----+-----------+------------+----------------------+----------+

-- 5.	Tampilkan data pelanggan yang lahirnya tahun 1998
SELECT * FROM pelanggan WHERE YEAR(tgl_lahir) = 1998;
-- Empty set (0.000 sec)


-- 6.	Tampilkan data pelanggan yang berulang tahun bulan agustus
SELECT * FROM pelanggan WHERE MONTH(tgl_lahir)=08;
-- Empty set (0.001 sec)


-- 7.	Tampilkan data pelanggan : nama, tmp_lahir, tgl_lahir dan umur (selisih tahun sekarang dikurang tahun kelahiran)
 SELECT nama, tmp_lahir, tgl_lahir, (YEAR(NOW())-YEAR(tgl_lahir)) AS umur FROM pelanggan;
-- +--------------------+------------+------------+------+
-- | nama               | tmp_lahir  | tgl_lahir  | umur |
-- +--------------------+------------+------------+------+
-- | Agung Sedayu Group | Solo       | 2010-01-01 |   14 |
-- | Pandan Wangi       | Yogyakarta | 1950-01-01 |   74 |
-- | Sekar Mirah        | Kediri     | 1983-02-20 |   41 |
-- | Swandaru Geni      | Kediri     | 1981-01-04 |   43 |
-- | Pradabashu         | Pati       | 1985-04-02 |   39 |
-- | Gayatri Dwi        | Jakarta    | 1987-11-28 |   37 |
-- | Dewi Gyat          | Jakarta    | 1988-12-01 |   36 |
-- | Andre Haru         | Surabaya   | 1990-07-15 |   34 |
-- | Ahmad Hasan        | Surabaya   | 1992-10-15 |   32 |
-- | Cassanndra         | Belfast    | 1990-11-20 |   34 |
-- | Andi Wijaya        | Tangerang  | 2023-11-07 |    1 |
-- | Ira                | Jakarta    | 2023-11-07 |    1 |
-- +--------------------+------------+------------+------+

