#!/usr/bin/env perl
open(INFILE, "list.txt");#otwarcie dostepu do pliku
			 #zmienna INFILE -> sterowanie odczytem
my @wiersze=<INFILE>;#Zawartość wiersze z pliku list.txt wpisz do tablicy wiersz
foreach(@wiersze) #Dla każdego wiersza wykonuj poniższą czynność
{
	printf("wiersz: %s\n",$_); #Wyświetl każdą linijkę z tablicy wiersze
}
