#!/usr/bin/perl -w
use WWW::Mechanize;

if (!$ARGV[0])
{
	chomp $ARGV[0];
	print "Jako parametr podaj adres strony www\n";
}
else
{
my $mech = WWW::Mechanize->new( autocheck => 1 );
$mech ->get ( "http://$ARGV[0]" );
print $mech->content;

open(plik, ">$ARGV[0].htm");
print plik $mech->content;
close plik;
}
