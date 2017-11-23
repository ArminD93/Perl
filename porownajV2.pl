#!/usr/bin/env perl

my @litery=("s","o","w","a");
foreach (@litery)
{
	if ($_ eq "s")
	{ 
	  my @temp = $_. "t";
	  print "@temp[0]\n";
	}
	else
	{
	 print "$_\n";
	}
}
