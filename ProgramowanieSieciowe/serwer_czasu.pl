   #!/usr/bin/perl -w
   use IO::Socket::INET;
   # czysc bufor stdout
   $| = 1;
   #zmienne do obslugi polaczenia
   my ($socket,$client_socket);
   my ($peeraddress,$peerport);
   #definicja gniazda
   $socket = new IO::Socket::INET (
 	  	LocalHost => '127.0.0.1',
   		LocalPort => '7000',
   		Proto => 'tcp',
   		Listen => 5,
   		Reuse => 1
   		) or die "Blad tworzenia polaczenia : $!\n";
   print "Serwer oczekuje na polaczenie\n";
   print "na porcie 7000.\n";
   while(1)
   {
   	# oczekiwanie na polaczenie; jesli polaczenie -> akceptacja
   	$client_socket = $socket->accept();
   	# pobierz adres IP i nr portu klienta
   	$peer_address = $client_socket->peerhost();
   	$peer_port = $client_socket->peerport();
   	print "Polaczenie IP: $peer_address, port: $peer_port\n ";
   	#drukuj czas; dla nieuzywanych zmiennych zostana zgloszone ostrzezenia
   	($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) =
   	localtime(time);
   	my $czas =$hour.":".$min.":".$sec."\n";#czas w formacie hh:mm:ss
   	$client_socket->send($czas);#wyslij zawartosc lancucha $czas
   	$client_socket->send("Zakonczyc polaczenie [t/n]?\n");
   	#pobierz odpowiedz i ew. zakoncz prace serwera
   	$data="";
   	$client_socket->recv($data,1);
   	if($data eq "t") {last;}#last dziala jak break w C
   }
   $socket->close();
   
