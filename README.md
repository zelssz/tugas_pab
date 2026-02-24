# 🛒 Aplikasi Shopping Cart Sederhana
Aplikasi ini adalah aplikasi Flutter sederhana yang menampilkan daftar produk dan memungkinkan pengguna menambahkan produk ke dalam keranjang, melihat isi keranjang, lalu melakukan checkout.

## 📂 Struktur Folder lib

<img width="274" height="340" alt="image" src="https://github.com/user-attachments/assets/4049cf42-872f-4d89-a650-ab4388ebd25c" />

Di dalam folder lib ada beberapa bagian utama:

1️⃣ main.dart

File ini merupakan titik awal dari aplikasi karena di sinilah fungsi main() dijalankan. Dari file ini aplikasi mulai berjalan dan menentukan halaman pertama yang akan ditampilkan. Selain itu, file ini juga biasanya mengatur struktur dasar aplikasi seperti MaterialApp, tema, serta navigasi antar halaman. Jadi bisa dibilang, main.dart adalah pusat awal yang menghubungkan semua bagian program.

2️⃣ Folder models/

Folder ini berisi class yang mengatur data aplikasi.

✅ product.dart

Kelas Product digunakan untuk merepresentasikan data sebuah produk yang dijual di dalam aplikasi. Di dalam kelas ini biasanya terdapat beberapa atribut seperti nama produk, harga, dan mungkin gambar atau deskripsi produk. Kelas ini hanya berfungsi sebagai tempat penyimpanan data tanpa mengatur tampilan atau logika keranjang. Jadi setiap produk yang muncul di aplikasi dibuat berdasarkan struktur yang sudah ditentukan di kelas ini.

✅ cart_item.dart

Kelas CartItem digunakan untuk merepresentasikan satu item yang ada di dalam keranjang belanja. Di dalamnya terdapat objek Product serta jumlah (quantity) barang yang dipilih oleh pengguna. Selain itu, kelas ini juga biasanya memiliki perhitungan untuk mengetahui total harga dari produk tersebut berdasarkan jumlah yang dibeli. Jadi jika satu produk dibeli lebih dari satu, kelas ini yang akan menghitung total harganya.

✅ cart_model.dart

Kelas CartModel berfungsi sebagai pengatur utama keranjang belanja. Kelas ini menyimpan daftar semua CartItem yang telah ditambahkan oleh pengguna. Di dalamnya terdapat berbagai fungsi seperti menambah produk ke keranjang, mengurangi jumlah barang, menghapus produk, dan menghitung total harga seluruh belanjaan. Dengan adanya kelas ini, semua logika yang berhubungan dengan keranjang terpusat di satu tempat sehingga lebih mudah dikelola.

3️⃣ Folder pages/

Folder ini berisi tampilan halaman aplikasi.

✅ ProductListPage

Kelas ProductListPage merupakan halaman yang menampilkan daftar produk kepada pengguna. Di halaman ini, semua produk yang tersedia ditampilkan dalam bentuk list atau card. Setiap produk biasanya memiliki informasi seperti nama dan harga, serta tombol untuk menambahkan produk ke keranjang. Ketika pengguna menekan tombol “Add to Cart”, halaman ini akan memanggil fungsi dari CartModel untuk menyimpan produk tersebut ke dalam keranjang. Jadi halaman ini berfungsi sebagai tampilan utama tempat pengguna memilih barang yang ingin dibeli.

✅ CartPage

Kelas CartPage adalah halaman yang menampilkan isi keranjang belanja. Di halaman ini, pengguna dapat melihat produk apa saja yang sudah ditambahkan, berapa jumlahnya, dan total harga masing-masing item. Selain itu, biasanya terdapat fitur untuk menambah atau mengurangi jumlah barang, serta menghapus produk dari keranjang. Halaman ini juga menampilkan total keseluruhan harga belanja. Jadi CartPage berfungsi untuk mengelola dan meninjau kembali barang yang sudah dipilih sebelum melakukan checkout.

✅ CheckoutPage

Kelas CheckoutPage merupakan halaman terakhir dalam proses belanja. Setelah pengguna merasa yakin dengan isi keranjangnya, mereka dapat melanjutkan ke halaman ini untuk menyelesaikan pembelian. Biasanya halaman ini menampilkan ringkasan pesanan dan total pembayaran. Halaman ini berfungsi sebagai tahap akhir sebelum transaksi dianggap selesai.
