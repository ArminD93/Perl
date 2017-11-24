#!/usr/bin/env perl

print "               Wpisz ponizej wybrana komende:\n";
print "################################################################\n";
print "Aby dopisac do pliku wpisz 'dopisz'\n";
print "Aby wyswietlic zawartosc pliku wpisz 'odczyt'\n";
#my $wybor=<STDIN>;
#print "wybrano: $ImieNazwisko\n";
#if ($wybor eq "dopisz\n")
#{	
	open(OUTFILE, ">>dane.txt");
	print "otwieranie pliku\n";
	print "start petli\n";
	
	while ($ImieNazwisko ne "koniec\n")
	{
		print "Podaj imie i nazwisko: ";
		my $ImieNazwisko=<STDIN>;
	if ($ImieNazwisko ne "koniec\n")
		{
		print OUTFILE $ImieNazwisko;
		print "zapis...\n";
		
		
		}
	
	else
		{
		
		close OUTFILE;
		print "plik zostal zamkniety\n";
		
		}
	}

#}
#elsif ($wybor eq "odczyt\n")
#{
#print "czytanie pliku\n";
#	close OUTFILE;
#	open(INFILE, "dane.txt");
#	my @wiersze=<INFILE>;
#	foreach (@wiersze)
#	{
#		printf("%s\n",$_);
#	}
#	close INFILE;
#}

