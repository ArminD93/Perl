#!/usr/bin/perl

#Petla 'for' w  stylu jezyka C

my $licznik = 0;
for ($i=0.1; $i<=3.14; $i=$i+0.2)
{
	printf("[%d]:%.2f\n",$licznik,$i);
	$licznik=$licznik+1;
}
