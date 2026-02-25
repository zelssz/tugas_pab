# 🛒 Aplikasi Shopping Cart Sederhana
Aplikasi ini adalah aplikasi Flutter sederhana yang menampilkan daftar produk dan memungkinkan pengguna menambahkan produk ke dalam keranjang, melihat isi keranjang, lalu melakukan checkout.

## 📂 Struktur Folder lib

<img width="274" height="340" alt="image" src="https://github.com/user-attachments/assets/4049cf42-872f-4d89-a650-ab4388ebd25c" />

Di dalam folder lib ada beberapa bagian utama:

### 1️⃣ main.dart

File ini merupakan titik awal dari aplikasi karena di sinilah fungsi main() dijalankan. Dari file ini aplikasi mulai berjalan dan menentukan halaman pertama yang akan ditampilkan. Selain itu, file ini juga biasanya mengatur struktur dasar aplikasi seperti MaterialApp, tema, serta navigasi antar halaman. Jadi bisa dibilang, main.dart adalah pusat awal yang menghubungkan semua bagian program.

### 2️⃣ Folder models/

Folder ini berisi class yang mengatur data aplikasi.

- product.dart

Kelas Product digunakan untuk merepresentasikan data sebuah produk yang dijual di dalam aplikasi. Di dalam kelas ini biasanya terdapat beberapa atribut seperti nama produk, harga, dan mungkin gambar atau deskripsi produk. Kelas ini hanya berfungsi sebagai tempat penyimpanan data tanpa mengatur tampilan atau logika keranjang. Jadi setiap produk yang muncul di aplikasi dibuat berdasarkan struktur yang sudah ditentukan di kelas ini.

- cart_item.dart

Kelas CartItem digunakan untuk merepresentasikan satu item yang ada di dalam keranjang belanja. Di dalamnya terdapat objek Product serta jumlah (quantity) barang yang dipilih oleh pengguna. Selain itu, kelas ini juga biasanya memiliki perhitungan untuk mengetahui total harga dari produk tersebut berdasarkan jumlah yang dibeli. Jadi jika satu produk dibeli lebih dari satu, kelas ini yang akan menghitung total harganya.

- cart_model.dart

Kelas CartModel berfungsi sebagai pengatur utama keranjang belanja. Kelas ini menyimpan daftar semua CartItem yang telah ditambahkan oleh pengguna. Di dalamnya terdapat berbagai fungsi seperti menambah produk ke keranjang, mengurangi jumlah barang, menghapus produk, dan menghitung total harga seluruh belanjaan. Dengan adanya kelas ini, semua logika yang berhubungan dengan keranjang terpusat di satu tempat sehingga lebih mudah dikelola.

### 3️⃣ Folder pages/

Folder ini berisi tampilan halaman aplikasi.

- ProductListPage

Kelas ProductListPage merupakan halaman yang menampilkan daftar produk kepada pengguna. Di halaman ini, semua produk yang tersedia ditampilkan dalam bentuk list atau card. Setiap produk biasanya memiliki informasi seperti nama dan harga, serta tombol untuk menambahkan produk ke keranjang. Ketika pengguna menekan tombol “Add to Cart”, halaman ini akan memanggil fungsi dari CartModel untuk menyimpan produk tersebut ke dalam keranjang. Jadi halaman ini berfungsi sebagai tampilan utama tempat pengguna memilih barang yang ingin dibeli.

- CartPage

Kelas CartPage adalah halaman yang menampilkan isi keranjang belanja. Di halaman ini, pengguna dapat melihat produk apa saja yang sudah ditambahkan, berapa jumlahnya, dan total harga masing-masing item. Selain itu, biasanya terdapat fitur untuk menambah atau mengurangi jumlah barang, serta menghapus produk dari keranjang. Halaman ini juga menampilkan total keseluruhan harga belanja. Jadi CartPage berfungsi untuk mengelola dan meninjau kembali barang yang sudah dipilih sebelum melakukan checkout.

- CheckoutPage

Kelas CheckoutPage merupakan halaman terakhir dalam proses belanja. Setelah pengguna merasa yakin dengan isi keranjangnya, mereka dapat melanjutkan ke halaman ini untuk menyelesaikan pembelian. Biasanya halaman ini menampilkan ringkasan pesanan dan total pembayaran. Halaman ini berfungsi sebagai tahap akhir sebelum transaksi dianggap selesai.

## 🔄 Alur Program

<img width="1919" height="962" alt="image" src="https://github.com/user-attachments/assets/099be065-ef93-460b-86ce-0bb553a10690" />

1. Aplikasi dibuka di browser
Saat pengguna membuka aplikasi di Chrome, halaman pertama yang muncul adalah daftar produk. Di halaman ini ditampilkan nama dan harga setiap produk yang tersedia.

<img width="1920" height="951" alt="image" src="https://github.com/user-attachments/assets/70d6def8-6ec2-494a-bf8e-7ee3c4e8aefc" />

2. Mencari dan Memfilter Produk
Pengguna dapat mengetik nama produk pada kolom pencarian untuk menampilkan produk yang sesuai. Selain itu, pengguna juga dapat memilih kategori tertentu agar produk yang ditampilkan sesuai dengan jenis yang dipilih.

<img width="1920" height="997" alt="image" src="https://github.com/user-attachments/assets/5c942470-dc26-4fac-aeb7-a6db471f0f1e" />

3. Menambahkan dan Melihat Keranjang
Setelah menemukan produk yang diinginkan, pengguna dapat menambahkan produk tersebut ke keranjang. Produk yang dipilih akan tersimpan dan dapat dilihat pada halaman keranjang. Di halaman ini ditampilkan daftar produk yang telah dipilih beserta jumlah dan total harganya.

<img width="1919" height="858" alt="image" src="https://github.com/user-attachments/assets/2ac66a38-c0be-474b-a327-f49241fb217b" />

4. Checkout
Halaman Checkout merupakan tahap akhir sebelum pesanan diselesaikan. Pada halaman ini ditampilkan total pembayaran dari seluruh produk yang telah dimasukkan ke dalam keranjang. Pengguna diminta mengisi nama dan alamat pada kolom yang tersedia sebagai data pemesanan. Setelah semua data diisi, pengguna dapat menekan tombol Place Order untuk memproses dan menyelesaikan pesanan.
