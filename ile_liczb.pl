#!/usr/bin/perl

if(!$ARGV[0])
{
	print("Jako parametr podaj ile liczb chcesz podac\n");
}
else
{
$N=@ARGV[0];

	while ($i<$N)
	{ 
		
		$tab[$i]=<STDIN>;
		$i++;
	}
	chomp(@sort_tab = sort @tab);
	print ("tabelka: ");
	foreach (@sort_tab)
	{
		print "$_ "	
	}
	print (" \n");		
}
