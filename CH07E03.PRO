/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E03.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* 						%pendeklarasian domain list dengan tipe data integer
  
predicates
  length_of(list,integer,integer) - procedure (i,o,i)		%pada predikat length_of dengan 3 parameter yaitu list pada domain sebagai inputan, output dengan tipe data inetegr, dan bertipe data integer sebagai inputan

clauses
  length_of([], Result, Result).				%dan pada rule 1 bila list dalam keadaan kosong maka result pertama sebagai berhasilsama dengan result kedua.
  length_of([_|T],Result,Counter):-				%rule 2 counter  sebagai inputan jika nilai yang diinputkan akan di tambahkan untuk menghitung panjang list dengan head
	NewCounter = Counter + 1,				%dan untuk counter yang baru dinput ditamabh 1 sebagai pengganti untuk mendapatkan nilai panjang list
	length_of(T, Result, NewCounter).

goal
  length_of([1,2,3],L,0). /* start with Counter = 0 */
  
  %mencari Counter dimulai = 0
  %dengan list sebagai berikut :
  % head =1, tail = 2 dan 3 
  % counter = 0 
  % newcounter = 0 + 1
  % length = lengtail + counter
  %	   = 2 + 1
  %	   = 3 
  
  %maka goal yang di dapat panjang list sebanyak 3.