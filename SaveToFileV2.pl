#!/usr/bin/env perl

print "               Wpisz ponizej wybrana komende:\n";
print "################################################################\n";
print "Aby dopisac do pliku wpisz 'dopisz'\n";
print "Aby wyswietlic zawartosc pliku wpisz 'odczyt'\n";
my $wybor=<STDIN>;
print "wybrano: $wybor";
print "wpisz: 'koniec' by zakonczyc dopisywanie";
if ($wybor == "dopisz")
{
	while ($ImieNazwisko == "koniec")
	{
		open(OUTFILE, ">>dane.txt");
		print("Podaj imie i nazwisko: ");
		my $ImieNazwisko=<STDIN>;
		print OUTFILE $ImieNazwisko;
	}
}
#print "Czy wyswietlic zawartosc pliku? Wpisz: tak/nie\n";
if ($wybor == "tak")
{
	open(INFILE, "dane.txt");
	my @wiersze=<INFILE>;
	foreach (@wiersze)
	{
		printf("%s\n",$_);
	}
}
else
{
 print "Wpisz komende: dopisz lub wybierz";
}
