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
				if ($_ =~ /[0-9]+/)
				{
					$licznik++;
					

				}
		
			}
	}

	print "W pliku znaleziono $licznik liczb\n";
		
	close INFILE;
}
