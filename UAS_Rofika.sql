-- Nama : Rofika Azizah Hajar
-- NIM  : 21241042

-- UAS Administrasi Basis Data NIM Genap

use dqlabpraktek;

-- soal 1
-- menggunaka operator sisa bagi
select kode_pelanggan, qty, sum(qty) as jumlah_qty, sum(harga), qty%3 as sisa_qty, qty*harga as total 
from tr_penjualan_dqlab;

-- soal 2
select nama_produk, qty, harga, qty*harga as total
from tr_penjualan_dqlab where nama_produk like '_l%' and qty*harga > 100000
order by total desc;

-- soal 3
select tp.kode_transaksi, tp.kode_produk, tp.tgl_transaksi, tp.nama_produk, mp.nama_pelanggan
from tr_penjualan_dqlab as tp
left outer join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan where tgl_transaksi > 2019 order by tgl_transaksi desc; 
