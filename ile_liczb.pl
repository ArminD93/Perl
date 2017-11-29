#!/usr/bin/perl

if(!$ARGV[0]) #Jeśli param. 1 nie zostanie podany, to wyk. poniższą instr.
{
	print("Jako parametr podaj ile liczb chcesz podac\n"); #komunikat
}
else #Jeśli param. 1 zostanie podany, wykonaj poniższe instr.
{
$N=@ARGV[0]; #Do zmiennej N wpisz wartość param 1 jako tablice

	while ($i<$N)#Wykonuj poniższe instrukcje dopóki Wartość zapisana
			# w zmiennej 'i' nie przekroczy wartości zapisanej w 'N'
	{ 
		
		$tab[$i]=<STDIN>; #Wpisuj do tabeli polecenia podawane z klawiatury
		$i++; #zwiększ licznik 'i' o 1
	}
		chomp(@sort_tab = sort @tab); # Sortuje tablice i przepisuje ją
				              # do nowej tablicy
		print ("tabelka: ");
		foreach (@sort_tab) #Dla każdego elementu posortowanej tabeli
				    #Wykonaj poniższe polecenie
		{
		print "$_ ";	
		}
	print (" \n"); #przejdź do nowej linii
			
}
