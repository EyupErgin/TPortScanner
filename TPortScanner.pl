#!/usr/bin/perl
#Kütüphaneler
use IO::Socket;

$| = 1;

#Banner 
print q{ 
###      ###  _____         _    ___     _     _   
#	 o # |_   _|  _ _ _| |__/ _ \ __(_)_ _| |_ 
	       | || || | '_| / / (_) (_-< | ' \  _|
               |_| \_,_|_| |_\_\\___//__/_|_||_\__|
#	   # Proje Adı: https://github.com/TurkOsint
###      ### Kodlayan : https://github.com/EyupErgin
};

print q{
};
print "[TurkOsint] IP Adresi Giriniz : ";
chop ($target = <stdin>);
print "[TurkOsint] Başlangıç Portu Giriniz(Min: 0): ";
chop ($start_port = <stdin>);
&check_port($start_port);
print "[TurkOsint] Sonlanış Portu Giriniz(Max: 65535): ";
chop ($end_port = <stdin>);
&check_port($end_port);

foreach ($port = $start_port ; $port <= $end_port ; $port++) 
{

	print "\r[TurkOsint] Tarama Başladı";
	

	$socket = IO::Socket::INET->new(PeerAddr => $target , PeerPort => $port , Proto => 'tcp' , Timeout => 1);
	

	if( $socket )
	{
		print "\r [TurkOsint] = [$port] Portu Açık   \n" ;
	}
	else
	{
		
	}
}
print "\n\n[TurkOsint] Tarama Sonlandı. Açık Portlar Listelendi.\n";

exit (0);

sub check_port {
    my $port = shift;

    if ($port =~ /\D+/ or $port > 65535 or $port < 0) {
        print "[TurkOsint] Geçersiz Port Numarası : $port\n";
        exit 1;
    }
}
