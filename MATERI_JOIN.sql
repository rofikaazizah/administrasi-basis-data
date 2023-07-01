-- materi join
use dqlabpraktek;

desc ms_pelanggan_dqlab;
desc tr_penjualan_dqlab;

-- mengambil kolom kode pelanggan, nama pelanggan, nama produk, dan qty berdasarkan kode pelanggan
select tp.kode_pelanggan, mp.nama_pelanggan, tp.nama_produk, tp.qty
from tr_penjualan_dqlab as tp
join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- Cross Join
-- ambil kolom nama_pelanggan, nama_produk, qty tanpa relationship keys
select mp.nama_pelanggan, tp.nama_produk, tp.qty
from tr_penjualan_dqlab as tp
join ms_pelanggan_dqlab as mp
on true;

-- LEFT OUTER JOIN
-- ambil nama_pelanggan, nama_produk, dan qty dengan left outer join
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
left outer join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- RIGHT OUTER JOIN
-- ambil nama_pelanggan, nama_produk, qty dengan right outer join
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
right outer join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan; 