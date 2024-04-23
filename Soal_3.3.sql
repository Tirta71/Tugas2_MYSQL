-- 1.	Tampilkan data produk : id, nama, stok dan informasi jika stok telah sampai batas minimal atau kurang dari minimum stok dengan informasi ‘segera belanja’ jika tidak ‘stok aman’.
SELECT id, nama, stok, 
       CASE 
           WHEN stok <= min_stok THEN 'segera belanja'
           ELSE 'stok aman'
       END AS status_stok
FROM produk;
-- +----+-------------------+------+----------------+
-- | id | nama              | stok | status_stok    |
-- +----+-------------------+------+----------------+
-- |  1 | Televisi 21 inchs |    5 | stok aman      |
-- |  2 | Televisi 40 inch  |    4 | stok aman      |
-- |  3 | Kulkas 2 pintu    |    6 | stok aman      |
-- |  4 | Meja Makan        |    4 | stok aman      |
-- |  5 | Teh Kotak         |    6 | segera belanja |
-- |  6 | PC Desktop HP     |    9 | stok aman      |
-- |  7 | Teh Botol         |   53 | stok aman      |
-- |  8 | Notebook Acer S   |    7 | stok aman      |
-- |  9 | Notebook Lenovo   |    9 | stok aman      |
-- | 11 | Laptop Lenovo     |    5 | stok aman      |
-- | 15 | Kopi              |   10 | segera belanja |
-- | 16 | Teh Sosro 2       |   10 | segera belanja |
-- | 18 | Laptop Asus       |   10 | segera belanja |
-- | 19 | Televisi 22 inc`  |    5 | stok aman      |
-- | 20 | Televisi 23 inc   |    5 | stok aman      |
-- | 21 | Televisi 24 inc   |    5 | stok aman      |
-- | 22 | Televisi 25 inc   |    5 | stok aman      |
-- | 24 | Televisi 27 inc   |    5 | stok aman      |
-- | 25 | Televisi 28 inc   |    5 | stok aman      |
-- | 26 | Televisi 29 inc   |    5 | stok aman      |
-- | 27 | Teh Pucuk         |   10 | stok aman      |
-- | 28 | Teh Pucuk2        |   10 | stok aman      |
-- +----+-------------------+------+----------------+


-- 2.	Tampilkan data pelanggan: id, nama, umur dan kategori umur : jika umur < 17 → ‘muda’ , 17-55 → ‘Dewasa’, selainnya ‘Tua’
SELECT id, nama, 
       YEAR(CURDATE()) - YEAR(tgl_lahir) AS umur,
       CASE 
           WHEN YEAR(CURDATE()) - YEAR(tgl_lahir) < 17 THEN 'muda'
           WHEN YEAR(CURDATE()) - YEAR(tgl_lahir) BETWEEN 17 AND 55 THEN 'Dewasa'
           ELSE 'Tua'
       END AS kategori_umur
FROM pelanggan;
-- +----+--------------------+------+---------------+
-- | id | nama               | umur | kategori_umur |
-- +----+--------------------+------+---------------+
-- |  1 | Agung Sedayu Group |   14 | muda          |
-- |  2 | Pandan Wangi       |   74 | Tua           |
-- |  3 | Sekar Mirah        |   41 | Dewasa        |
-- |  4 | Swandaru Geni      |   43 | Dewasa        |
-- |  5 | Pradabashu         |   39 | Dewasa        |
-- |  6 | Gayatri Dwi        |   37 | Dewasa        |
-- |  7 | Dewi Gyat          |   36 | Dewasa        |
-- |  8 | Andre Haru         |   34 | Dewasa        |
-- |  9 | Ahmad Hasan        |   32 | Dewasa        |
-- | 10 | Cassanndra         |   34 | Dewasa        |
-- | 11 | Andi Wijaya        |    1 | muda          |
-- | 12 | Ira                |    1 | muda          |
-- +----+--------------------+------+---------------+

-- 3.	Tampilkan data produk: id, kode, nama, dan bonus untuk kode ‘TV01’ →’DVD Player’ , ‘K001’ → ‘Rice Cooker’ selain dari diatas ‘Tidak Ada’
SELECT id, kode, nama,
       CASE 
           WHEN kode = 'TV01' THEN 'DVD Player'
           WHEN kode = 'K001' THEN 'Rice Cooker'
           ELSE 'Tidak Ada'
       END AS bonus
FROM produk;

-- +----+--------+-------------------+-------------+
-- | id | kode   | nama              | bonus       |
-- +----+--------+-------------------+-------------+
-- |  1 | TV01   | Televisi 21 inchs | DVD Player  |
-- |  2 | TV02   | Televisi 40 inch  | Tidak Ada   |
-- |  3 | K001   | Kulkas 2 pintu    | Rice Cooker |
-- |  4 | M001   | Meja Makan        | Tidak Ada   |
-- |  5 | TK01   | Teh Kotak         | Tidak Ada   |
-- |  6 | PC01   | PC Desktop HP     | Tidak Ada   |
-- |  7 | TB01   | Teh Botol         | Tidak Ada   |
-- |  8 | AC01   | Notebook Acer S   | Tidak Ada   |
-- |  9 | LN01   | Notebook Lenovo   | Tidak Ada   |
-- | 11 | L005   | Laptop Lenovo     | Tidak Ada   |
-- | 15 | L112   | Kopi              | Tidak Ada   |
-- | 16 | L113   | Teh Sosro 2       | Tidak Ada   |
-- | 18 | L0015  | Laptop Asus       | Tidak Ada   |
-- | 19 | TV0115 | Televisi 22 inc`  | Tidak Ada   |
-- | 20 | TV0116 | Televisi 23 inc   | Tidak Ada   |
-- | 21 | TV0117 | Televisi 24 inc   | Tidak Ada   |
-- | 22 | TV0118 | Televisi 25 inc   | Tidak Ada   |
-- | 24 | TV0120 | Televisi 27 inc   | Tidak Ada   |
-- | 25 | TV0121 | Televisi 28 inc   | Tidak Ada   |
-- | 26 | TV0122 | Televisi 29 inc   | Tidak Ada   |
-- | 27 | THP001 | Teh Pucuk         | Tidak Ada   |
-- | 28 | THP002 | Teh Pucuk2        | Tidak Ada   |
-- +----+--------+-------------------+-------------+