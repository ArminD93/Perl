
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
	 	

		
			
				if ($_ =~ /[a-zA-Z]*oid\b/)
				{
					$licznik++;
					

				}
			
		
			
	}

	print "Dla wyrazów zakończonych na oid\n";
	print "Znaleziono $licznik dopasowań\n";
	

	close INFILE;
}
