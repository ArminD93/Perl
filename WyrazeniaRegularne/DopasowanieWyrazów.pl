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
	foreach (@wiersze)
	{
	
		if ($_ =~ /$ARGV[1]/)
		{
		
		print " Brawo.Odnaleziono słowo => $_\n";
		
		}
		else
		{
		print "Nic nie znaleziono\n"
		
		}
	}
	close INFILE;
}
