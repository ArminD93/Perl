#!/usr/bin/env perl
open(OUTFILE, ">dane.txt");#otwarcie dostepu do pliku
print("Podaj imie i nazwisko");#Wyświetl komunikat
my $ImieNazwisko=<STDIN>;#pobierz dane
print OUTFILE $ImieNazwisko; #zapisz do pliku
