#!/usr/bin/perl -w
use IO::Socket;
$host_www = "www.ely.pg.gda.pl"; #aadres hosta www
$EOL = "\015\012";#zapytanie GET / HTTP/ 1.0 wymaga \n\n
$BLANK = $EOL x 2; #ze wzgledu na powyzsze

$remote = IO::Socket::INET->new ( Proto => "tcp",#www dziala na TCP
				  PeerAddr => $host_www,#adres www
				  PeerPort => "http(80)",#port 80 lub 8080
				)|| die "nie mozna polaczyc sie z $host_www";
$remote->autoflush(1);#auto oporznianie bufora gniazda
print $remote "GET / HTTP/1.0".$BLANK;#typowe zapytanie przegladarki www
while ( <$remote> ) { print }# drukuj odpowiedz serwera www
close $remote;
