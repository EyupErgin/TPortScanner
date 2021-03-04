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
print "[TurkOsint] IP Adresi Giriniz : ";


chop ($target = <stdin>);
print "[TurkOsint] Başlangıç Portu Giriniz: ";
chop ($start_port = <stdin>);
&check_port($start_port);
print "[TurkOsint] Sonlanış Portu Giriniz: ";
chop ($end_port = <stdin>);
&check_port($end_port);
