#!/usr/bin/env perl

#przyklady definicji tablic 
my @owoce=("jagoda","malina","porzeczka");#tablica zawiera łańcuchy znaków
my @liczby=(1.1,5,7.4); #tablica zawiera same wartości
my @miks=("liczby?",2,4.4,"Tekst"); #tab. zawiera łańcuchy znaków i wartości

#przyklady wyswietlania zawartosci
print("@owoce[2]\n"); #wyswietla element o indeksie 2
printf("@liczby[1..$#liczby]\n"); #wyswietla wszystkie liczby oprocz pierwszego
printf("@miks[0..2]\n"); #wyswietla przedzial



