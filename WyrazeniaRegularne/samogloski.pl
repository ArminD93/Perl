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
				if ($_ =~ /[aeiou]+/)
				{
					$licznik++;
					

				}
		
			}
	}

	print "W pliku znaleziono $licznik wyrazów,";
	print "które zawierają samgłoski: a,e,i,o,u\n";
	
	close INFILE;
}
