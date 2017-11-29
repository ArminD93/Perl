#!/usr/bin/perl

if ((!$ARGV[0]) || (!$ARGV[1])) #Jeśli nie podano pierwszego lub drugigo parametru
				#lub żadnego z nich to:
{
	print "Podaj nazwe pliku jako parametr pierwszy\n"; 
	print "Jako drugi parametr podaj nazwe wyszukiwanego pliku\n";	
}
else #Jeżeli podano oba parametry
{
	open INFILE, $ARGV[0]; #otwórz plik z parametru pierwszego
	my @wiersze=<INFILE>; #Wpisz dane z pliku do tablicy
	my $licznik=0; #Wpisz wartość zero do zmiennej licznik
	
	foreach (@wiersze) #Dla każdego wiersza wykonuj poniższe polecenia
	{
	 	@wyraz = split(/ /); #Do zmiennrj wyraz wpisz pojedyncze wyrazy
				    # które wcześniej tworzyły ciągi łańcuchów

		foreach (@wyraz) #Na każdym wyrazie wykonaj polecenie
			{
				if ($_ =~ /$ARGV[1]/i) #Jeśli wyraz jest 
						      #taki sam jak wyraz
						    #podany w param. 2
						    # i - nie zwracaj uwagi
						   #na wielkość liter
							
				{
					$licznik++; #To zwiększ licznik o 1
				}
			}
	}

	print "Wyraz $ARGV[1] występuje w tekscie $licznik razy\n";

	close INFILE; #zamknij plik
}

