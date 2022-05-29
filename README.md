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

2. Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

a. Apakah Anda setuju dengan klaim tersebut?
```R
Setuju
```

b. Jelaskan maksud dari output yang dihasilkan!
```R
zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100, alternative = "greater", mu = 20000, conf.level = 0.95) 
```

Hasilnya : 

<img width="610" alt="Jepretan Layar 2022-05-29 pukul 22 58 41" src="https://user-images.githubusercontent.com/87480529/170879106-567a59f8-e7fa-4336-9fde-21254fbba7d0.png">

c.  Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

<img width="387" alt="Jepretan Layar 2022-05-29 pukul 23 02 49" src="https://user-images.githubusercontent.com/87480529/170879316-c7a449d3-b581-4a60-87cd-1065be3e090a.png">

Kesimpulannya adalah bahwa mobil dikemudikan rata-rata lebih dari 20.000 km/tahun.

3. Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

a. H0 dan H1

<img width="321" alt="Jepretan Layar 2022-05-29 pukul 23 16 36" src="https://user-images.githubusercontent.com/87480529/170879999-92e52df9-55c3-4bd7-b326-3212fa51143b.png">

b.  Hitung sampel statistik.
```R
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)
```

<img width="607" alt="Jepretan Layar 2022-05-29 pukul 23 17 44" src="https://user-images.githubusercontent.com/87480529/170880052-cdabe4e3-03af-4920-9526-58d384effa5a.png">

c. Lakukan Uji Statistik (df=2).
```R
install.packages("mosaic")
library(mosaic)
plotDist(dist='t', df=2, col="black")
```

<img width="498" alt="Jepretan Layar 2022-05-29 pukul 23 19 15" src="https://user-images.githubusercontent.com/87480529/170880162-c370486b-2a0e-4c47-96ec-26a3928493be.png">


d.  Nilai kritikal.
```R
qchisq(p = 0.05, df = 2, lower.tail=FALSE)

```

<img width="614" alt="Jepretan Layar 2022-05-29 pukul 23 20 13" src="https://user-images.githubusercontent.com/87480529/170880207-fe64a0a4-ddd7-48f5-b1cf-a5ed2bec225b.png">

e. Keputusan
Teori keputusan adalah teori formal pengambilan keputusan di bawah ketidakpastian dengan aksinya ({a}{a∈A}) memiliki kemungkinan konsekuensi ({c}{c∈C}) ( yang tergantung pada keadaan dan tindakan ). Oleh karena itu,  keputusan dapat dibuat dengan t.test

f. Kesimpulan
Kesimpulan yang didapatkan yaitu perbedaan rata-rata yang terjadi tidak ada jika dilihat dari uji statistik dan akan ada tetapi tidak signifikan jika dipengaruhi nilai kritikal.

4. Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. Jika : diketahui dataset https://intip.in/datasetprobstat1 H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama. Maka Kerjakan atau Carilah:

a. Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.
```R
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")


```
Mengambil data dari link yang telah disediakan. lalu, membuat myFile menjadi group. Kemudian, dicek apakah dia menyimpan nilai di groupnya. Dan dibagi ke dalam 3 grub

b. Carilah atau periksalah Homogeneity of variances-nya, Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?
Mencari Homogeneity of variances bisa menggunakan command 
```R
bartlett.test(Length~V1, data=dataoneway)
```
Hasilnya :

<img width="862" alt="Jepretan Layar 2022-05-29 pukul 23 27 57" src="https://user-images.githubusercontent.com/87480529/170880630-182866a6-1d87-486d-8520-f155b8e5cfa8.png">

Setelah di jalankan maka nilai p-value = 0.8054. Kesimpulan yang didapatkan yaitu Bartlett's K-squared memiliki nilai sebesar 0.43292 dan df bernilai 2.

c. Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus Grup dan beri nama model tersebut model 1.
```R
qqnorm(group1$Length)
qqline(group1$Length)

```

<img width="845" alt="Jepretan Layar 2022-05-29 pukul 23 28 59" src="https://user-images.githubusercontent.com/87480529/170880670-cdf985c7-d951-409c-95e1-1e07d67852d4.png">


d. Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan dari H0?

Didapatkan p-value yaitu = 0.8054. Maka dapat disimpulkan bahwa H0 ditolak.

e. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

menggunakan command ANOVA dan model Post-hoc Tukey HSD sebagai berikut
```R
model1 <- lm(Length~Group, data=myFile)
anova(model1)

TukeyHSD(aov(model1))
```

<img width="705" alt="Jepretan Layar 2022-05-29 pukul 23 29 37" src="https://user-images.githubusercontent.com/87480529/170880707-a6a03c2b-4346-4742-a901-50056dd7b9c5.png">


f. Visualisasikan data dengan ggplot2
```R
library(ggplot2)
ggplot(dataoneway, aes(x = Group, y = Length)) + geom_boxplot(fill = "grey80", colour = "black") + scale_x_discrete() + xlab("Treatment Group") +  ylab("Length (cm)")

```

<img width="893" alt="Jepretan Layar 2022-05-29 pukul 23 30 47" src="https://user-images.githubusercontent.com/87480529/170880755-18f3b865-0a56-499c-9b9d-07d82e4e10dd.png">

5. Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut :

a. Buatlah plot sederhana untuk visualisasi data.

Run library yang dibutuhkan kemudian membaca file GTL.csv
```R
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)

GTL <- read_csv("GTL.csv")
head(GTL)

```

<img width="821" alt="Jepretan Layar 2022-05-29 pukul 23 35 48" src="https://user-images.githubusercontent.com/87480529/170881029-62cbcfe3-d4dc-432e-b805-f7b74505b777.png">

Lakukan observasidata

```R
str(GTL)

```

<img width="804" alt="Jepretan Layar 2022-05-29 pukul 23 36 31" src="https://user-images.githubusercontent.com/87480529/170881092-2acbe614-37f9-41a3-ad49-414030d1caa4.png">

lakukan viasualisasi menggunakan simple plot yaitu sebagai berikut

```R
qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)
```

<img width="837" alt="Jepretan Layar 2022-05-29 pukul 23 37 18" src="https://user-images.githubusercontent.com/87480529/170881140-fe45d345-ceaa-4bf5-9aa5-9bbc01629b52.png">


b. Lakukan uji ANOVA dua arah elakukan analisis of variance (aov)
```R
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)
```

<img width="840" alt="Jepretan Layar 2022-05-29 pukul 23 40 46" src="https://user-images.githubusercontent.com/87480529/170881319-aeafc4d6-9aab-4ce5-b705-0bc9555ef7ec.png">

c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)
Menggunakan group_by lalu melakukan summarise
```R
 data_summary <- group_by(GTL, Glass, Temp) %>%
   summarise(mean=mean(Light), sd=sd(Light)) %>%
   arrange(desc(mean))
 print(data_summary)
```

<img width="831" alt="Jepretan Layar 2022-05-29 pukul 23 42 13" src="https://user-images.githubusercontent.com/87480529/170881392-c2c9ad3f-7bb5-4f0f-b02b-799f4a42aa71.png">


d. Lakukan uji Tukey Menggunakan fungsi TukeyHSD sebagai berikut
```R
tukey <- TukeyHSD(anova)
print(tukey)
```

<img width="440" alt="Jepretan Layar 2022-05-29 pukul 23 43 26" src="https://user-images.githubusercontent.com/87480529/170881457-7eb837f3-a174-4d74-9c8e-8a35a69d051e.png">

e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey

Dengan membuat compact letter display
```R
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)
```

<img width="770" alt="Jepretan Layar 2022-05-29 pukul 23 45 39" src="https://user-images.githubusercontent.com/87480529/170881563-471a551e-18ec-4a58-bebb-886c235799cb.png">

Lalu tambahkan compact letter display tersebut ke tabel dengan means(rata-rata) dan sd
```R
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)
```

<img width="774" alt="Jepretan Layar 2022-05-29 pukul 23 46 58" src="https://user-images.githubusercontent.com/87480529/170881643-651fc180-e475-4381-8016-e2a60a86adb3.png">






