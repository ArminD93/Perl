#!/usr/bin/perl -w
use IO::Socket::INET;
#regex jako szablon IP
my $szablon_IP = '^\d+\.\d+\.\d+\.\d+$';

while(<>)
{
	chomp;
	die "$_ niepoprawny adres" unless /$szablon_IP/o;
	my $name = gethostbyaddr(inet_aton($_), AF_INET);
	$name ||='?';
	print "$_ -> $name\n";
}
