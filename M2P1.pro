PREDICATES
nondeterm dapat_membeli(symbol, symbol)
nondeterm orang(symbol)
nondeterm mobil(symbol)
suka(symbol, symbol)
dijual(symbol)

CLAUSES %terdapat aturan
dapat_membeli(X,Y):- %artinya orang dapat membeli mobil dan orang suka mobil dan mobil dijual
orang(X), mobil(Y), suka(X,Y), dijual(Y).

%disini terdapat beberapa fakta
orang(nur).%nur adalah orang
orang(yudi). %yudi adalah orang
orang(dian). %dian adalah orang
orang(heni).  %heni adalah orang

mobil(atoz). %atoz adalah mobil
mobil(kijang).  %kijang adalah mobil

suka(dian, atoz). %dian suka atoz	
suka(yudi, pecel). %yudi suka pecel
suka(heri, buku). %heri suka buku

suka(nur, komputer). %nur suka komputer
dijual(kijang).	%kijang dijual
dijual(atoz).	%atoz dijual
dijual(buku). %buku dijual

GOAL
dapat_membeli(Siapa,Apa). %karena tujuan akhir program yaitu mencari siapa yang dapat membeli dan apa yang dibeli?
%suka(_,Apa).		%maka aturan dapat_membeli harus dipenuhi keseluruhan maka goal nya Dian,Atoz. Kenapa?
			%dian adalah orang dan dian suka atoz dan atoz dijual. Semua kondisi terpenuhi.
%suka(Siapa,_).
%dapat_membeli(_,Apa).
%dapat membeli(Siapa,_).