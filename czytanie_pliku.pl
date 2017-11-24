#!/usr/bin/env perl
open(INFILE, "list.txt");#otwarcie dostepu do pliku
			 #zmienna INFILE -> sterowanie odczytem
my @wiersze=<INFILE>;
foreach(@wiersze)
{
	printf("wiersz: %s\n",$_);
}
