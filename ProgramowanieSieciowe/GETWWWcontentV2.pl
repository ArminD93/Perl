#!/usr/bin/perl -w
#Pobieranie wybranych treści www

use strict; #paczka wymusza deklaracje uzywanych dalej zmiennych,
	    #zapobiega to potencjalnym bledom
use WWW::Mechanize;#pakiet WWW::Mechanize

my $url = "http://www.cpan.org"; #wazne miejsce - pakiety Perl i ich dokumentacja
my $searchstring = "WWW::Mechanize";#bedziemy tego szukali na powyzszej stronie
my $outfile = "out.htm";#tu trafi przetworzona informacja
my $mech = WWW::Mechanize->new();#nowa instancja obiektu WWW::Mechanize

$mech->get($url);#pobierz strone
#szukaj odnosnikow tekstowych o ponizeszej zawartosci
$mech->follow_link(text => "Modules", n => 1);#wybierz odnosnik o nazwie 'Modules'
$mech->form_name('f');#referencja do formualarza o nazwie 'f'
$mech->field(q => "$searchstring" );#wypelnij formularz szukanym lancuchem
$mech->click();#wymus klikniecie (symuluj uruchomienie szukania)
$mech->follow_link( text => "WWW::Mechanize", n => 1 );#wybierz pierwszy znaleziony
					#odnosnik zawierajacy WWW::Mechanize
my $output_page = $mech->content();#pobierz strone na ktora zostales przeniesiony
open (OUTFILE, ">$outfile");#otworz plik
print OUTFILE "$output_page";#kieruj zawartosc $mech do pliku
close OUTFILE; #zamknij

