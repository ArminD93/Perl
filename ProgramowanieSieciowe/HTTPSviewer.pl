#!/usr/bin/perl -w
use strict;
use WWW::Mechanize;
use HTTP::Cookies;

my $outfile = "poczta_out.htm";
my $url = "https://poczta.onet.pl";
my $username = "ArmDer\@onet.pl";
my $password = "1Haslodopoczty";
my $mech = WWW::Mechanize->new();

$mech->cookie_jar(HTTP::Cookies->new());
$mech->get($url);
$mech->form_name('login_form');
$mech->field(login => $username);
$mech->field(password => $password);
$mech->click();

my $output_page = $mech->content();
open(OUTFILE, ">$outfile");
print OUTFILE "$output_page";
close OUTFILE;
