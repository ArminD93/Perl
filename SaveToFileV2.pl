#!/usr/bin/env perl
	
	open(OUTFILE, ">>dane.txt");
	print "otwieranie pliku\n";
	print "start petli\n";
	
	while ($ImieNazwisko ne "koniec\n")
	{
 			print "Podaj imię i nazwisko: ";			
			 $ImieNazwisko=<STDIN>;
		 if ($ImieNazwisko ne "koniec\n")
		{
			
			print OUTFILE  $ImieNazwisko;

			print "zapisywanie do pliku dane.txt...\n";
			print "wpisz koniec by zakończyć dopisywanie\n";
	
		}
	
	else
		{
		
		close OUTFILE;
		print "Czy wyswietlic zawartosc pliku? (tak/nie)\n";
		$odp = <STDIN>;
		if ( $odp eq "tak\n")
			{
				print "czytanie pliku\n";	
				open INFILE, "dane.txt";
				my @wiersze=<INFILE>;
				foreach (@wiersze)
				{
					printf "%s\n",$_;
				}
				close INFILE;
			}
		elsif ($odp eq "nie\n")
			{
				print "wyjscie\n";
				close INFILE;
			}	
	
		
		}
	}



