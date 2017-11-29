#!/usr/bin/env perl
	
	open OUTFILE, ">>dane.txt"; #Otwacie dostępu do pliku
	print "otwieranie pliku\n"; 
	print "start petli\n";
	
	while ($ImieNazwisko ne "koniec\n") #wyk. instrukcje dopóki użytkownik
					#nie wpisze wyrazu koniec
	{
 		print "Podaj imię i nazwisko: ";			
		 $ImieNazwisko=<STDIN>; #pobierz dane
		 if ($ImieNazwisko ne "koniec\n") # jeśli zostało wpisane coś
						#innego niż koniec, to wykonaj 
						#poniższe polecenia
		{
			
			print OUTFILE  $ImieNazwisko; # Zapisz dane do pliku

			print "zapisywanie do pliku dane.txt...\n";
			print "wpisz koniec by zakończyć dopisywanie\n";
	
		}
	
	else #Jeśli wpisano koniec, wykonuj instrukcje poniżej
		{
		
		close OUTFILE; #zamknij plik
		print "Czy wyswietlic zawartosc pliku? (tak/nie)\n";
		$odp = <STDIN>; #pobierz dane 
		if ( $odp eq "tak\n") #Jeśli wpisano: 'tak'
			{
				print "czytanie pliku\n"; 	
				open INFILE, "dane.txt"; #otwórz plik do czytania
				my @wiersze=<INFILE>; #wiersze wpisz do tablicy
				foreach (@wiersze)#Dla każdego elementu tablicy wyk
						  #wykonaj poniższe polecenie
				{
					printf "%s\n",$_;
				}
				close INFILE; #zamknij plik
			}
		elsif ($odp eq "nie\n") # Jeśli wpisano 'nie'
			{
				print "wyjscie\n"; #komuinikat
				close INFILE; #zamknij plik
			}		
		}
	}



