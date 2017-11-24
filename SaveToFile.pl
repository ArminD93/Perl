#!/usr/bin/env perl
open(OUTFILE, ">dane.txt");#otwarcie dostepu do pliku
print("Podaj imie i nazwisko");
my $ImieNazwisko=<STDIN>;#pobierz dane
print OUTFILE $ImieNazwisko; #zapisz do pliku
