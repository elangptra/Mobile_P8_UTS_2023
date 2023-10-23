<style>
    body {text-align: justify}
</style>

# <b>Laporan Pertemuan 8 - UTS</b>
<b> Nama: Elang Putra Adam

Kelas: TI 3G

NIM: 2141720074 </b>

## <b>Praktikum 4: Implementasi image section</b>

Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

### <b>Langkah 1: Siapkan aset gambar</b>

Anda dapat mencari gambar di internet yang ingin ditampilkan. Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml seperti berikut:

![Alt text](images/image.png)

Contoh nama file gambar di atas adalah lake.jpg

<b>Jawab:</b>

![Alt text](images/image-1.png)

### <b>Langkah 2: Tambahkan gambar ke body</b>

Tambahkan aset gambar ke dalam body seperti berikut:

![Alt text](images/image-2.png)

BoxFit.cover memberi tahu kerangka kerja bahwa gambar harus sekecil mungkin tetapi menutupi seluruh kotak rendernya.

<b>Jawab:</b>

![Alt text](images/image-3.png)

### <b>Langkah 3: Terakhir, ubah menjadi ListView</b>

Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.

![Alt text](images/image-4.png)

<b>Jawab:</b>

![Alt text](images/image-5.png)

<b>Hasil Running:</b>

![Alt text](images/image-6.png)