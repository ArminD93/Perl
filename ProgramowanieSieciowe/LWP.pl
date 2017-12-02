#!/usur/bin/perl -w
use strict; #wymusza uzywanie zmiennych 'my'
use LWP::UserAgent;

my $ua = new LWP::UserAgent; #agent pobierania
$ua->timeout(50); #opoznienie
my $url='http://www.zagle.se.pl'; 
my $request = new HTTP::Request('GET', $url);#rzadanie http
					     
my $response = $ua->request($request); #przechwycenie odp serwera - pobranie strony
my $content = $response->content(); #przepisanie zawartosci strony do zmiennej
print $content; #drukuj kontent strony
