#!/usr/bin/perl

#Petla 'for' w  stylu jezyka C

my $licznik = 0; #Przpisanie do zmiennej lokalnej "licznik" wartości 0
for ($i=0.1; $i<=3.14; $i=$i+0.2) # Wykonaj poniższe instrukcje
{				# od i=0.1 do i=3.14 z krokiem co 0.2 
	printf("[%d]:%.2f\n",$licznik,$i); #komunikat,numeracja wierszy 
				#Wyświetla wartość zmiennej licznik
				#wyświetla wartość zmiennej i
	$licznik=$licznik+1;	# zwiększenie licznika o 1	
}
