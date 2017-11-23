#!/usr/bin/perl
#Przy wywolaniu skryptu podaj nazwe pliku tekstowego
use IO::File;

my $file=shift;
my $fh=IO::File->new($file);
my $line=<$fh>;
print $line
