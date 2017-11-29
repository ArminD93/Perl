#!/usr/bin/perl

if (!$ARGV[0])
{
	print "Podaj nazwe pliku jako parametr pierwszy\n";
		
}
else
{
	open INFILE, $ARGV[0];
	my @wiersze=<INFILE>;
	my $licznik=0;

	print "------------------------------\n ";
	
	foreach (@wiersze)
	{
	 	@wyraz = split(/ /);

		foreach (@wyraz)
			{
				if ($_ =~ /^t[a-z]{2}\b/)
				{
					$licznik++;
					print "$_\n";

				}
		
			}
	}

	print "Dla wyrazu składającego się z 3 liter,\n";
	print "zaczynającego się na t i kończącego się na e lub inną\n";
	print "Znaleziono $licznik dopasowań\n";
	

	close INFILE;
}
