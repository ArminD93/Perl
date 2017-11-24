#!/usr/bin/env perl
	
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

