# P2_Probstat_D_5025201138

Nama : Yusron Nugroho Aji
NRP : 5025201138
Kelas : Probstat D

1. Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴.

a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

Masukkan data pada masing-masing tabel dan cari stndar deviasinya
```R
x = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y = c(100, 95, 70, 90, 90, 90, 89, 90, 100)

hasil = sd(x-y)
hasil
```
Hasilnya : 
<img width="360" alt="Jepretan Layar 2022-05-29 pukul 22 24 14" src="https://user-images.githubusercontent.com/87480529/170877285-f70e9957-b492-4887-92e7-8a7126d0cd8e.png">

b. Carilah nilai t (p-value)

Mencari nilai t (p-value) menggunakan fungsi berikut
```R
t.test(y,x,paired=TRUE)
```
Hasilnya :
<img width="535" alt="Jepretan Layar 2022-05-29 pukul 22 28 59" src="https://user-images.githubusercontent.com/87480529/170877512-367d3647-c369-4f13-8ff4-a9738d78fc6c.png">

c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

```R
var.test(x, y)
t.test(x, y, mu = 0, alternative = "two.sided", var.equal = TRUE)
```

Hasilnya :
<img width="532" alt="Jepretan Layar 2022-05-29 pukul 22 35 28" src="https://user-images.githubusercontent.com/87480529/170877848-a506b37e-6401-44a8-9137-7b9e93d57e05.png">
