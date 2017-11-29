#!/usr/bin/perl

if (!$ARGV[0]) #Jeśli nie podano pierwszego paramatru to wykonaj poniższe polecenie
{
	print "Podaj nazwe pliku jako parametr pierwszy\n";
		
}
else # Jeśli param.1 zostanie podany, wykonaj poniższe instrukcje
{
	open INFILE, $ARGV[0]; #Otwórz plik
	my @wiersze=<INFILE>; #Pobierz do tablicy wiersze
	my $licznik=0; #Do zmiennej licznik przypisz wartość zero
	
	
	foreach (@wiersze)#Powtarzaj poniższe po wyszystkich wierszach
	{
	 	@wyraz = split(/ /); #Podziel wiersze na wyrazy i wpisz do tab. wyraz


		foreach (@wyraz) #Pętla po wszystkich wyrazach
			{
				if ($_ =~ /^S[A-Za-z]{5}g\b/ )
#Czy wartość zapisana w $_ jest taka sama jak wyr. reg. to:
				{
					$licznik++; #Inkrementuj licznik
					print "$_\n";
					print INFILE $_; 

				}
		
			}
	}

	print "Znaleziono $licznik dopasowań\n";
	close INFILE;

}
