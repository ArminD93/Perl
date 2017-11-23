#!/usr/bin/perl

#Pobieranie danych sposób I
#Program oczekuje podania pierwszego parametru np. cyfr, nazwa itp

if (!$ARGV[0])
{
	print("Podaj parametr...\n");
}
else
{
	print("Podales: $ARGV[0]\n");
}
