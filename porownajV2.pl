#!/usr/bin/env perl

my @litery=("s","o","w","a");#Wprowadzanie elementów do tablicy
foreach (@litery) #Wykonaj poniższe instrukcje dla każdego elementu tablicy litery
{
	if ($_ eq "s") #Jeśli w wierszu znajduje się 's' to wykonaj instr. poniżej 
	{ 
	  my @temp = $_. "t"; #do łańcucha dopisz 't' i całość przypisz do tab. temp
	  print "@temp[0]\n"; # wydrukuj wynik na ekranie
	}
	else #Jeżeli w wierszu nie ma literki 's'
	{
	 print "$_\n"; #Wyświetl wiersz bez zmian
	}
}
