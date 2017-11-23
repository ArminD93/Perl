#!/usr/bin/env perl

#przyklady definicji
my @owoce=("jagoda","malina","porzeczka");
my @liczby=(1.1,5,7.4);
my @miks=("liczby?",2,4.4,"Tekst");

#przyklady wyswietlania zawartosci
print("@owoce[2]\n"); #wyswietla element o indeksie 2
printf("@liczby[1..$#liczby]\n"); #wyswietla wszystkie liczby oprocz pierwszego
printf("@miks[0..2]\n"); #wyswietla przedzial
