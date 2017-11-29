#!/usr/bin/perl

my @tab=(0.1,0.3,0.5,0.7);#wpisanie wartości do tablicy
for($i=0; $i<4; $i++)#Wyk.poniższą instr. od i=0 do i=3 z krokiem co 1
{
	printf("[%d]:%.2f\n",$i,$tab[$i]);#wyświetla zawartość tablicy 
					# każdy element w jednym wierszu
					#wraz z numeracją wierszy
	
}
