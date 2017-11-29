#!/usr/bin/env perl
#Porównywanie lancuchów znaków

my @litery=("s","o","w","a"); #wprowadznie znaków do tabeli
my @posortowana = sort @litery; #sortowanie zawartości tabeli litery
				#Wpisanie jej zawartości do tabeli posortowana
foreach (@posortowana)  #Wykonaj poniżesze instrukcje na każdym elemencie tabelki
			#@posortowana
{
	if($_ eq "s") #Wykonaj poniższe polecenie w przypadku kiedy 
		      #wartość w pierwswszym wierszu równa jest 'S' 
	{
	  print "$_ \n " #Wyświetl wiersz
	}
}
