#!/usr/bin/perl

if ((!$ARGV[0]) || (!$ARGV[1]))
{
	print "Podaj nazwe pliku jako parametr pierwszy\n";
	print "Jako drugi parametr podaj nazwe wyszukiwanego pliku\n";	
}
else
{
	open INFILE, $ARGV[0];
	my @wiersze=<INFILE>;
	my $licznik=0;
	
	foreach (@wiersze)
	{
		if ($_ =~ /$ARGV[1]/i)
		{
			$licznik++;
		}
	
	}
	print "Wyraz $ARGV[1] występuje w  $licznik wierszach\n";
	close INFILE;
}
