#!/usr/bin/perl -w
#Pobieranie wybranych treści www

use strict; #paczka wymusza deklaracje uzywanych dalej zmiennych,
	    #zapobiega to potencjalnym bledom
use WWW::Mechanize;#pakiet WWW::Mechanize

my $url = "http://www.google.pl"; #wazne miejsce - pakiety Perl i ich dokumentacja
my $searchstring = "zagle korsarz jacht";#bedziemy tego szukali na powyzszej stronie
my $outfile = "korsarz.htm";#tu trafi przetworzona informacja
my $mech = WWW::Mechanize->new();#nowa instancja obiektu WWW::Mechanize

$mech->get($url);#pobierz strone
#szukaj odnosnikow tekstowych o ponizeszej zawartosci

$mech->form_name('f');#referencja do formualarza o nazwie 'f'
$mech->field(q => "$searchstring" );#wypelnij formularz szukanym lancuchem
$mech->click();#wymus klikniecie (symuluj uruchomienie szukania)
$mech->follow_link( text_regex => qr/KORSARZ/ );
				
my $output_page = $mech->content();#pobierz strone na ktora zostales przeniesiony
open (OUTFILE, ">$outfile");#otworz plik
print OUTFILE "$output_page";#kieruj zawartosc $mech do pliku
close OUTFILE; #zamknij

