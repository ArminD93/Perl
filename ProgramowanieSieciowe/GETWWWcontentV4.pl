#!/usr/bin/perl -w
#Pobieranie wybranych treści www

use WWW::Mechanize;#pakiet WWW::Mechanize

my $url = "https://eia.pg.edu.pl"; #wazne miejsce - pakiety Perl i ich dokumentacja
my $searchstring = "O wydziale";#bedziemy tego szukali na powyzszej stronie
my $mech = WWW::Mechanize->new();#nowa instancja obiektu WWW::Mechanize
my $i=0;

$mech->get($url);#pobierz strone


while ( $odp2 ne "tak\n")
{
	print "Napisz poniżej,\n";
	print "co Ciebie interesuje na stronie Wydziału Elektrotechniki i Automatyki PG ?\n";
	chomp(my $odp=<STDIN>);

	$mech->follow_link( text_regex => qr/$odp/i );#wybierz pierwszy znaleziony
					#odnosnik zawierajacy WWW::Mechanize

	my $output_page = $mech->content();#pobierz strone na ktora zostales przeniesiony

	my $outfile = "./weia/$odp.htm";#tu trafi przetworzona informacja

	open (OUTFILE, ">$outfile");#otworz plik
	open (plik, ">>./weia/log.txt");

	print OUTFILE "$output_page";#kieruj zawartosc $mech do pliku
	print plik "$i: Na stronie $url odnaleziono artykuł na temat: $odp\n";

	close OUTFILE; #zamknij
	close plik;

	print "Dane zapisano w katalogu weia.\n";
	print "Czy zakończyć? Napisz tak/nie\n";
	 $odp2=<STDIN>;
	$i++;


}



