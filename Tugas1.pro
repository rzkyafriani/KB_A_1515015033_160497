predicates
nondeterm menjual(symbol,symbol)
	  penjual(symbol)
	  obat(symbol)
	  minum_obat(symbol,symbol)
	  
	  
	  
clauses
menjual(X,Y):-
	penjual(X),
	obat(Y),
	minum_obat(X,Y).
		
	
penjual(jihyo).
penjual(sana).
penjual(myungsoo).

obat(parasetamol).
obat(bodrex).
obat(migrain).

minum_obat(jihyo,parasetamol).
minum_obat(sana,bodrex).
minum_obat(jihyo,mules).

goal
minum_obat(X,parasetamol);
minum_obat(X,bodrex).
