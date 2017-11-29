#!/usr/bin/perl


my $i=0.1; #do zmiennej lokalnej 'i' wpisz wartość 0.1

while ($i <= 3.14) #Wykonuj poniższe instrukcje dopóki wartość zapisana
		   # w zmiennej 'i' nie przekroczy wartości 3.14 
{
	printf("[%d]:%.2f\n",$licznik, $i); #komunikat z numeracją wierszy
	$licznik++;	#zwiększenie licznika o 1
	$i=$i+0.2;	# zwiekszenie wartości zapisanej w 'i' co 0.2
}
