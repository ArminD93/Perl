#!/usr/bin/perl -w
use IO::Socket::INET;

while(<>)
{
	chomp;
	my $pack_adress = gethostbyname($_);
	unless($pack_adress)
	{
		print "$_ -> ?\n";
		next;
	}
	my $dotted = inet_ntoa($pack_adress);
	print "$_ -> $dotted\n"
}
