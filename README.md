![Home UI](SS_Output_Beranda_Zoom/Beranda_Zoom_PBM.png)
Slicing UI Flutter - Beranda Zoom Style

Project ini merupakan hasil slicing UI mobile menggunakan Flutter (Dart) yang meniru tampilan halaman beranda aplikasi Zoom.

Fitur yang Dibuat

Berikut adalah komponen utama yang berhasil diimplementasikan dari kode:

1.Struktur Utama Aplikasi
Menggunakan MaterialApp sebagai root widget
Tema menggunakan ThemeData.dark()
Entry point dari main() menjalankan MyApp

2.Halaman Utama (HomePage)
Menggunakan Scaffold yang terdiri dari:
AppBar
Background transparan
Title: "Beranda"
Leading: Avatar user (inisial "GM")

Actions:
Icon search
Icon more (titik tiga)
Body Content
Menu Grid (Custom Widget)

Terdiri dari 4 menu utama:

Rapat
Bergabung
Jadwalkan
Bagikan

Dibuat menggunakan widget custom MenuItem yang berisi:

Icon
Label
Background berwarna
Rounded corner
Text Informasi
Text: "Tambahkan kalender"
Warna biru sebagai highlight
3.Bottom Navigation Bar

Terdiri dari 5 menu:

Beranda
Obrolan Tim
Docs
Papan Tulis
Lainnya

Fitur:

Fixed type
Selected item berwarna biru
Unselected berwarna abu-abu
4.Custom Widget - MenuItem

Widget reusable untuk menu icon, terdiri dari:

Container (icon background)
Icon
Text label

Keunggulan:

Bisa digunakan ulang
Parameter dinamis (icon, label, warna)
Tampilan UI
Background utama: Dark (#0B0F14)
Style modern minimalis
Layout rapi menggunakan Row, Column, dan Padding