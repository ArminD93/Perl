#!/usr/bin/env perl

print "               Wpisz ponizej wybrana komende:\n";
print "################################################################\n";
print "Aby dopisac do pliku wpisz 'dopisz'\n";
print "Aby wyswietlic zawartosc pliku wpisz 'odczyt'\n";
my $wybor=<STDIN>;
print "wybrano: $wybor\n";
if ($wybor eq "dopisz\n")
{
	while ($wybor ne "koniec\n")
	{
		open(OUTFILE, ">>dane.txt");
		print("Podaj imie i nazwisko: ");
		my $ImieNazwisko=<STDIN>;
		print OUTFILE $ImieNazwisko;
	}

}
elsif ($wybor eq "odczyt\n")
{
print "czytanie pliku\n";
	close OUTFILE;
	open(INFILE, "dane.txt");
	my @wiersze=<INFILE>;
	foreach (@wiersze)
	{
		printf("%s\n",$_);
	}
	close INFILE;
}

