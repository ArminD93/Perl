#!/usr/bin/env perl

my @litery=("s","o","w","a"); #Wprowadzenie znaków do tablicy
my @posortowana = sort @litery; #sortowanie elementów tablicy
                                # i wpisanie ich do nowej tab.
foreach (@posortowana) #Pętla po całej posortowanej tabeli
{
	print "$_ \n"; # Wyświetla zawrtość wiersza
	
}
