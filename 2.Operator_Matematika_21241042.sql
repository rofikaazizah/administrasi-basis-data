-- SELECT statement dengan nilai literal 
select 77 as bil_bulat; -- nilai literal bilangan bulat (integer) 
select 'jakarta' as String_; -- nilai literal tipedata String
select '2023/05/16' as tipe_date; -- nilai literal pada tipedata date
select 77 > 3 as tipe_bolean; -- nilai literal pada tipe data bolean, 1 = true, dan 0 = false

-- SELECT statement dengan beberapa nilai literal
select 77 as angka, true as nilai_logika, 'UNDIKMA' as teks;

-- SELECT statement dengan NULL
select NULL as kosong;

-- Operator Matematika
select 5%2 as sisa_bagi, 5/2 as hasil_bagi_1, 5 DIV 2 as hasil_bagi_2;

-- Latihan mandiri
select 4*2 as hasil_kali, (4*8)%7 as sisa_kali_bagi, (4*8) MOD 7 as sisa_kali_bagi;

-- Operator Matematika untuk menghasilkan total beli (qty * harga) pada table tr_penjualan_dqlab
use dqlabpraktek;
select qty*harga as total_beli from tr_penjualan_dqlab; 
select nama_produk, harga, qty, harga*qty as total_beli from tr_penjualan_dqlab;

-- Operator perbandingan 
select 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;
select qty > 3 from tr_penjualan_dqlab;

-- latihan mandiri
select 1=true, 1=false, 5>=5, 5.2=5.20000, NULL=1, NULL=NULL;

-- penggunaan fungsi dengan nilai literal
select now(), year('2022-05-16'), datediff('2022-05-16', '2022-05-01'), day(now());

-- fungsi pada table tr_penjualan_dqlab
-- mendapatkan lastest buy dari produk
select nama_produk, datediff(now(), tgl_transaksi) as latest_buy from tr_penjualan_dqlab;

-- klausal WHERE untuk filtering atau penyaringan
-- ambil nama produk, dan qty dari table tr_penjualan_dqlab yang qty lebih dari 2
select nama_produk, qty
from tr_penjualan_dqlab
where qty > 2;
-- multi kriteria klausal WHERE
-- ambil nama_produk, dan tqy, dari table tr_penjualan_dqlab, yang qty lebih dari 2 dan bulan transaksi 6
select nama_produk, qty, tgl_transaksi
from tr_penjualan_dqlab
where qty > 2 AND month(tgl_transaksi) = 6; 