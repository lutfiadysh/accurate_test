# Lutfi Accurate Test

## A. Cara penggunaan aplikasi
    Setelah data user berhasil ditampilkan pengguna dapat : 
        1. Mencari user berdasarkan nama dengan ketik nama yang ingin di cari di kolom 'search'
        2. Mengurutkan data user berdasarkan nama Ascending/Descending dengan cara klik button 'sort'
        3. Filter data user berdasarkan kota dengan cara klik button 'filter'
        4. Melihat data nomor telfon, email, dan alamat lengkap dengan cara klik icon 'arrow' yang terdapat pada masing-masing data

## B. Teknologi yang digunakan
    Flutter V3.22.1

## C. Kenapa tampilan/interaksi seperti itu.
    1. User Page App Bar 
        a. Title 'user' ditampilkan agar pengguna memahami data apa yang sedang ditampilkan di halaman tersebut
        b. Button '+' ditampilkan di samping kanan dari title agar pengguna langsung memahami apa yang perlu dilakukan bila ingin menambahkan data baru
    2. User Page Filter Widget 
        a. Search bar di posisikan paling kiri dan ukurannya lebih lebar dibanding yang lain agar pengguna tidak kesulitan untuk mencari nama user yang ingin ditampilkan
        b. 2 button filter tambahan di samping kanan search bar di posisikan seperti itu agar tampilan lebih terlihat lebih clean
        c. Tampilan untuk filter data user berdasarkan kota akan ditampilkan melalui Bottom Sheet Dialog karena user lebih familiar dengan tampilan seperti ini
    3. User Tile Item
        a. User icon avatar di posisikan sebelah kiri sebagai profil user 
        b. Default data yang akan ditampilkan pertama kali adalah Nama dan Kota dari user agar tampilan terlihat lebih clean dan user dapat melihat data user lebih detail dengan menekan icon arrow pada ujung kanan Item