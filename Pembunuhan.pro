%ANALISI% 1...2....3...GO........

DOMAINS   					%Fungsi domain sebagai pemberian nama parameter pada variabel
nama,jender,pekerjaan,benda,alasan,zat = symbol %pendeklarasian variabel yang sudah ditentukan pada baris ini dengan tipe data symbol
umur=integer 					%pendeklarasian variable umur tipe data integer (angka)
 
PREDICATES   
nondeterm orang(nama, umur, jender, pekerjaan) 	%relasi orang terdapat 4 parameter (nama,umur,jender,pekerjaan)
nondeterm selingkuh(nama, nama)
	  terbunuh_dengan(nama, benda)  %relasi terbunuh_dengan berisi 2 parameter (nama,benda)
	  terbunuh(nama)%relasi terbunuh berisi 1 parameter (nama)

nondeterm pembunuh(nama)   
	  motif(alasan)   
	  ternodai(nama, zat)   
	  milik(nama, benda)   
	  
nondeterm cara_kerja_mirip(benda, benda)   
nondeterm kemungkinan_milik(nama, benda)   
nondeterm dicurigai(nama) 
 
/* * * Fakta-fakta tentang pembunuhan * * */ 
CLAUSES
orang(budi,55,m,tukang_kayu). 		%"budi adalah seorang yang berumur 55 tahun berjender male dan pekerjaan tukang kayu"
orang(aldi,25,m,pemain_sepak_bola).   	%"aldi adalah seorang yang berumur 25 tahun berjender male dan pekerjaan pemain sepak bola"
orang(aldi,25,m,tukang_jagal).   	%"aldi adalah seorang yang berumur 25 tahun berjender male dan pekerjaan tukang jagal"
orang(joni,25,m,pencopet). 		%"joni adalah seorang yang berumur 25 tahun berjender male dan pekerjaan pencopet
 
selingkuh(ina,joni).   			%ina adalah selingkuh joni
selingkuh(ina,budi).   			%ina adalah selingkuh budi
selingkuh(siti,joni). 			%siti adalah selingkuh joni
 
terbunuh_dengan(siti,pentungan).   	%siti terbunuh dengan sebuah pentungan
terbunuh(siti). 			%SITI terbunuh
 
motif(uang).   		%uang merupakan motif
motif(cemburu).   	%cemburu merupakan motif
motif(dendam). 		%dendam merupakan motif
 
ternodai(budi, darah).  %budi ternodai dengan darah
ternodai(siti, darah).  %siti ternodai dengan darah 
ternodai(aldi, lumpur). %aldi ternodai dengan lumpur   
ternodai(joni, coklat). %joni ternodai dengan coklat  
ternodai(ina, coklat).  %ina ternodai dengan coklta
 
milik(budi,kaki_palsu). %kaki palsu milik budi 
milik(joni,pistol).     %pistol milik joni 
 
/* * * Basis Pengetahuan * * */ 
 
cara_kerja_mirip(kaki_palsu, pentungan).    %kaki palsu cara kerja mirip dengan pentungan 
cara_kerja_mirip(balok, pentungan).   	    %balok cara kerja mirip dengan balok
cara_kerja_mirip(gunting, pisau).   	    %gunting cara kerja mirip dengan pisau
cara_kerja_mirip(sepatu_bola, pentungan).   %sepatu bola cara kerja mirip dengan pentungan
  
kemungkinan_milik(X,sepatu_bola):-  %terdapat rule bahwa X yang kemungkinan milik sepatu bola jika
orang(X,_,_,pemain_sepak_bola).     %X adalah orang yang berumur berapa saja,jendre apapun dan pekerjaan pemain sepak bola 
   
kemungkinan_milik(X,gunting):-      %X adalah yang kemungkinan memiliki gunting jika
orang(X,_,_,pekerja_salon). 	    % X adalah orang yang bisa berumur berapa saja, jendre apa aja dan pekerjaan nya pekerja salon
  
kemungkinan_milik(X,Benda):-        %X adalah yang kemungkinan memiliki apapun yang belum dinyatakan jika
milik(X,Benda). 		    %X memiliki benda tersebut
 
/*  * dicurigai semua orang yang memiliki senjata yang      
*  * kerjanya mirip dengan senjata penyebab siti terbunuh. *  
* * * * * * * * * * * * * * * * * * * * * * * * * * * * */ 
 
dicurigai(X):- 				%X adalah dicurigai jika 
terbunuh_dengan(siti,Senjata), 		%siti terbunuh dengan senjata apapun
cara_kerja_mirip(Benda,Senjata),  	%benda tersebut cara kerja mirip dengan senjata apapun
kemungkinan_milik(X,Benda). 		%dan X kemungkinan memiliki senjata tersebut
 
/*dicurigai laki-laki yang selingkuh dengan siti.*/ 
 
dicurigai(X):-  	%X dicurigai jika
motif(cemburu),  	%cemburu adalah motif nya
orang(X,_,m,_),  	%X adalah orang yang berumur berapapun, jendre nya male dan pekerjaan nya apapun
selingkuh(siti,X). 	% dan siti adalah selingkuhan dari X
 
/* dicurigai perempuan yang selingkuh dengan * 
 * laki-laki yang juga selingkuh dengan siti **/ 
 
dicurigai(X):-     %X adalah yang dicurigai jika
motif(cemburu),    % cemburu adalah motifnya
orang(X,_,f,_),    %X adalah orang yang berumur berapapun, jenre female dan pekerjaan nya apapun
selingkuh(X,Lakilaki),  %X selingkuhan dari siapapun
selingkuh(siti,Lakilaki).  %siti selingkuhan dari siapapun
 
/* dicurigai pencopet yang mempunyai motif uang.*/ 
 
dicurigai(X):-    %X dicurigai jika
motif(uang),  	  %uang adalah motifnya
orang(X,_,_,pencopet). %X adalah orang yang bisa berumur berapa saja, jenre apapun dan pekerjaanya pencopet.
 
pembunuh(Pembunuh):-  %yang dianggap pembunuh adalah pembunuh jika
orang(Pembunuh,_,_,_),  %yang dianggap pembunuh adalah seorang pembunuh dan bisa berumur berapapun dan jenre apapun dan pekerjaanya apa saja
terbunuh(Terbunuh),   %dan yang dianggap pembunuh adalah siapa yang terbunuh
Terbunuh <> Pembunuh, %dan relalasi terbunuh berpasangan dengan relasi pembunuh

/* Bukan bunuh diri */  
dicurigai(Pembunuh),   %yang dianggap pembunuh adalah yang dicurigai dan
ternodai(Pembunuh,Zat), %dan yang dianggap pembunuh ternodai oleh zat
ternodai(Terbunuh,Zat). %dan yang dianggap terbunuh ternodai dengan zat
 
GOAL   
pembunuh(X). %solusi dari permasalahan diatas adalah mencari siapa yang dianggap sebagai pembunuh ?


%Untuk Solusi adalah yang menjadi pembunuh adalah Budi. Kenapa?
%Karena pada rules pembunuh sudah dijelaskan bahwa pembunuh yang dicurigai ternodai oleh zat.
%Sedangkan pada fakta diatas ada 2 kemungkinan yang ternodai oleh zait yaitu "budi ternodai oleh darah" dan siti ternodai oleh darah"
%tetapi karna pada rule itu terbunuh berkaitan dengan pembunuh dan faktanya dari 2 kemungkinan tersebut adalah siti yang terbunuh
%maka hasilnyaa sisa 1 kemungkinan bahwa pembunuh adalah Budiiiiiiiiiiiiiiiiiiiiiiiiii





