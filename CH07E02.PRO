/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* 				%pendeklarasian list dengan tipe data integer 

predicates
  length_of(list,integer) - procedure (i,o) 	%pendeklarasian predicate nama length_of dengan parameter list yang ada pada domain sebgai inputan 
  						%dan tipe data integer sebagai output 

clauses
  length_of([], 0).				%terdapat aturan length of dengan parameter list kosong berarti list bernilai 0
  length_of([_|T],L):-				%aturan 2 jika length of terdapat kepala dan ekor maka  panjang list akan dihitung dari banyak nya tail dan ditambah dengan head
	length_of(T,TailLength),
	L = TailLength + 1.

goal					%untuk mencari goalnya
  length_of([1,2,3],L).			%pada posisi list terdapat :
  					%head = 1
  					%tail = 2 dan 3
  					
  					%pada rule length_of L = TailLength + 1 maka L = 2 + 1 = 3 
  					%dan panjang dari lis yaitu 3.
