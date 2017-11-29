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
	print "Podaj pierwsza wyrazu: ";
	chomp(my $litera_p=<STDIN>);
	print "Podaj ostatnia litere wyrazu: ";
	chomp(my $litera_k=<STDIN>);
	print "------------------------------\n ";
	
	foreach (@wiersze)
	{
	 	@wyraz = split(/ /);

		foreach (@wyraz)
			{
				if ($_ =~ /^$litera_p[A-Za-z]{5}$litera_k\b/ )
#Wyraz zaczynający się od litery wprowadzonej do zmiennej litera_p 
#i konczący się literą ze zmiennej litera_k, składający się z 7 liter
#uwzględnione zostało wystąpinie przecinka lub kropki na końcu wyrazu 	
				{
					$licznik++;
					print "$_\n";

				}
		
			}
	}

	print "Dla wyrazu składającego się z 7 liter,\n";
	print " zaczynającego się na $litera_p i kończącego się na $litera_k\n";
	print "Znaleziono $licznik dopasowań\n";
	

	close INFILE;
}
