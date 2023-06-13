-- nateri terakhir join
-- dqlabpraktek ms_pelanggan_dqlab
use dqlabpraktek;

-- case1
select nama_pelanggan, alamat from ms_pelanggan_dqlab;

-- case2
select nama_produk, harga from ms_produk_dqlab;

-- case3
select * from ms_produk_dqlab where harga > 15000 and nama_produk = 'Flashdisk DQLab 32 GB' ;

-- case4
select * from ms_produk_dqlab where nama_produk = 'Flashdisk DQLab 84 GB' or nama_produk = 'Tas Travel Organizer DigiSkills.id' or nama_produk = 'Gantungan Kunci DQlab' ;

-- case5
select * from ms_produk_dqlab where harga < 50000;

-- case6
select kode_pelanggan, nama_produk, qty, harga, qty*harga as total from tr_penjualan_dqlab 
where (qty*harga) >= 200000 
order by total desc;