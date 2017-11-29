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
	 

	


			
				if ($_ =~ /^t[a-z]{2}\b/)
				{
					$licznik++;
					
				}

						
			
	}

	
	print "Znaleziono $licznik linii zaczynajacych sie od słowa the\n";
	

	close INFILE;
}
