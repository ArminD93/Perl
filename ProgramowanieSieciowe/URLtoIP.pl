#!/usr/bin/perl -w
use IO::Socket::INET;

while(<>)
{
	chomp;
	my $pack_adress = gethostbyname($_);#gethostbyname zamienia adress url na IP
	unless($pack_adress) #iteracja po zawartości łańcucha (po wyrazach)
	{
		print "$_ -> ?\n";
		next;
	}
	my $dotted = inet_ntoa($pack_adress); #inet_ntoa zamienia IP z postaci 4-bajtowej
					#oddzielonej kropkami do postaci upakowanej.
	print "$_ -> $dotted\n"
}
