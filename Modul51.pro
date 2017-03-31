DOMAINS		%Pendeklarasian jenis parameter yang akan digunakan
orang 				= orang(nama,alamat)			%terdapat parameter orang yang mana terdapat data objek jamak yang berisi informasi(nama,alamat)
nama 				= nama(pertama,kedua)			%terdapat parameter nama yang mana terdapat data objek jamak yang berisi informasi(pertama,kedua)
alamat 				= alamat(jalan,kota_kab,propinsi)	%terdapat parameter alamat yang mana terdapat data objek jamak yang berisi informasi(jalan,kota_kab,propinsi
jalan 				= jalan(nama_jalan,nomor)		%terdapat parameter jalan yang mana terdapat data objek jamak yang berisi informasi(nama_jalan,nomor)
kota_kab,propinsi,nama_jalan 	= string				%parameter kota_kab,propinsi,nama_jalan dengan type data string
pertama,kedua 			= symbol				%parameter pertama,kedua dengan type data symbol
nomor 				= integer				%parameter nomor dengan type data integer
GOAL		%tujuan akhir pada program dimana menampilkan hasil output
P1 = orang(nama(diena,fatihah), alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),	%pada P1 menampilkan parameter orang dimana terdapat informasi nama,alamat disinii informasinya sudah di desklarasikan diisi diena,fatihah
											%dan parameter alamat yang mana informasinya diisi dengan informasi parameter jalan dimana parameter jalan berisi informasi nama_jalan=WijayaKusuma dengan nomor 12.
											
P1 = orang(nama(_,fatihah),Alamat),		%pada P1 menyatakan parameter orang dengan informasi berisi parameter nama yaitu nama bisa siapa aja dengan nama kedua fatihah dan memanggilkan para meter alamat
P2 = orang(nama(nur,fatihah),Alamat),		%pada p2 menyatakan parameter nama dengan informasi nama pertama,namakedua yaitu pertama=nur, kedua=fatihah dan memmanggilkan alamat yang di p1 yang pertama
write("P1=",P1),nl,				%menampilkan komentar p1= yang diisi p1
write("P2=",P2),nl.				%menampilkan komentar -p2= yang di p2.