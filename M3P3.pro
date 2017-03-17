PREDICATES
nondeterm suka(symbol,symbol)

CLAUSES %pada program ini terdapat beberapa fakta
suka(asep,membaca). %asep suka membaca
suka(asari,computers). %asari suka komputer
suka(nunung,bulutangkis). %nunung suka bulutangkis
suka(vida,bulutangkis). %vida suka bulutangkis
suka(astana,renang). %astana suka renang
suka(astana,membaca). %astana suka membaca

GOAL %tujuan akhir program
suka(Orang, membaca), %mencari orang yang suka membaca dan suka juga renang dan hasilnya pada goal adalah Astana karena
suka(Orang, renang). %kondisi kedua nya terpenuhi.