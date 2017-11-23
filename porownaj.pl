#!/usr/bin/env perl
#Porównywanie lancuchów znaków

my @litery=("s","o","w","a");
my @posortowana = sort @litery;
foreach (@posortowana)
{
	if($_ eq "s")
	{
	  print "$_ \n"
	}
}
