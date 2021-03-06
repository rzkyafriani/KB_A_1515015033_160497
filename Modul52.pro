DOMAINS					%pendeklarasikan jenis parameter yang akan digunakan*/
benda = buku(judul, pengarang) ;	%terdapat parameter benda  yang isinya parameter buku yang yang bertype domain-campuran jamak dengan isi informasi (judul,pengarang)*/
kuda(nama) ; 				%parameter kuda yang berisi informasi nama
kapal ;					%kapal yaitu domain nya campuran jamak
bukubank(saldo)				%bukubank(saldo)
judul, pengarang, nama = symbol		%PADA parameter judul, pengarang dan NAMA menggunakan type data simbol*/
saldo = real				%terdapata saldo dengan type data real
			
PREDICATES	

nondeterm milik(nama,benda)	/*nondeterm untuk memberitahu compailer bahwa predikat memiliki lebih dari satu kemungkinan jawaban*/

CLAUSES %berisi aturan dan fakta yang nanTI digunakan
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")).	%Erwin memiliki buku dengan judul Markesot Bertutur dan pengarang oleh Emha Ainun Najib
milik(erwin, kuda(buraq)). 					%Erwin memiliki kuda dengan nama Buraq
milik(erwin, kapal). 						%Erwin memiliki sebuah kapal
milik(erwin, bukubank(1000)). 					%Erwin memiliki bukubank dengan saldo 1000
GOAL	%tujuan akhir pada program dimana menampilkan hasil output
	
milik(erwin, Benda). %pada program mencari solusi apa yang dimiliki erwin sebuah benda dan hasilnya erwin memiliki buku,kuda dan bukubank