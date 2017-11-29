#!/usr/bin/perl

#Pobieranie danych sposób I
#Program oczekuje podania pierwszego parametru np. cyfr, nazwa itp

if (!$ARGV[0]) #Jeżeli nie zostanie podany parametr pierwszy
{		# to wykonaj poniższą instrukcję
	print("Podaj parametr...\n");
}
else  #Jeśli parametr zostanie podany wykonaj poniższe instrukcje
{		
	print("Podales: $ARGV[0]\n"); #Wyświetl informację na ekranie monitora
}
