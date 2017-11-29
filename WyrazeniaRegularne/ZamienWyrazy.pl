#!/usr/bin/env perl


$p1=$ARGV[0];
if (!$p1)
{
	print "Podaj nazwe pliku jako parametr pierwszy\n";
		
}
else
{
	
	open (INFILE, "$p1"); #otwarcie pliku do odczytu
	@wiersze=<INFILE>;
	foreach (@wiersze)
	{
	 	 $_ =~ s/Samsung/Samsuuung/; # Zamiana wyrazu Samsung na samsuung
		print "$_\n";
	}		
	

	close (INFILE);
	open (PLIK, ">$p1"); #czyszczenie pliku i otwarcie do zapisania
	print PLIK "@wiersze"; #zapis nowego tekstu do pliku	
	close (PLIK);
}
