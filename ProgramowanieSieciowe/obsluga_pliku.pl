#!/usr/bin/perl
#Przy wywolaniu skryptu podaj nazwe pliku tekstowego

use IO::File; #ładuje moduł obiektowej obsługi plików

my $file=shift; #shift pobiera nazwę pliku z linii komend i przypisuje do zmiennej
		#dzięki temu można podać nazwę pliku przy uruchomieniu

my $fh=IO::File->new($file);#otwiera plik zwracają uchwyt do zmeinnej $fh
my $line=<$fh>;#Czyta jedną linię tekstu
print $line
