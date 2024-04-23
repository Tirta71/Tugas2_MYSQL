-- SOAL 3.2
-- 1.	Berapa jumlah pelanggan yang tahun lahirnya 1998
SELECT COUNT(*) AS total_pelanggan_1998 FROM pelanggan WHERE YEAR(tgl_lahir) = 1998;
-- +----------------------+
-- | total_pelanggan_1998 |
-- +----------------------+
-- |                    0 |
-- +----------------------+


-- 2.	Berapa jumlah pelanggan perempuan yang tempat lahirnya di Jakarta
SELECT COUNT(*) AS jumlah_pelanggan_perempuan_jakarta 
FROM pelanggan 
WHERE jk = 'P' AND tmp_lahir = 'Jakarta';
-- +------------------------------------+
-- | jumlah_pelanggan_perempuan_jakarta |
-- +------------------------------------+
-- |                                  3 |
-- +------------------------------------+


-- 3.	Berapa jumlah total stok semua produk yang harga jualnya dibawah 10rb
SELECT SUM(stok) AS total_stok_produk_dibawah_10rb
FROM produk
WHERE harga_jual < 10000;
-- +--------------------------------+
-- | total_stok_produk_dibawah_10rb |
-- +--------------------------------+
-- |                             79 |
-- +--------------------------------+


-- 4.	Ada berapa produk yang mempunyai kode awal K
SELECT COUNT(*) AS jumlah_produk
FROM produk
WHERE kode LIKE 'K%';
-- +---------------+
-- | jumlah_produk |
-- +---------------+
-- |             1 |
-- +---------------+



-- 5.	Berapa harga jual rata-rata produk yang diatas 1jt
SELECT AVG(harga_jual) AS harga_rata_rata
FROM produk
WHERE harga_jual > 1000000;

-- +--------------------+
-- | harga_rata_rata    |
-- +--------------------+
-- | 31387733.333333332 |
-- +--------------------+



-- 6.	Tampilkan jumlah stok yang paling besar
SELECT MAX(stok) AS jumlah_stok_terbesar
FROM produk;

-- +----------------------+
-- -- | jumlah_stok_terbesar |
-- -- +----------------------+
-- -- |                   53 |
-- -- +----------------------+


-- 7.	Ada berapa produk yang stoknya kurang dari minimal stok
SELECT COUNT(*) AS jumlah_produk_kurang_dari_min_stok
FROM produk
WHERE stok < min_stok;

-- +------------------------------------+
-- | jumlah_produk_kurang_dari_min_stok |
-- +------------------------------------+
-- |                                  4 |
-- +------------------------------------+


-- 8.	Berapa total asset dari keseluruhan produk
SELECT SUM(harga_beli * stok) AS total_asset
FROM produk;

-- +-------------+
-- | total_asset |
-- +-------------+
-- |   480504000 |
-- +-------------+