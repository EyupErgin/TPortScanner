#!/usr/bin/perl
use IO::Socket;

$| = 1;

print q{ 
Project Name : TPortScanner
Created : https://github.com/EyupErgin
Github  : https://github.com/IntelSights/TPortScanner/
};

print q{
};
print "Enter IP Address : ";
chop ($target = <stdin>);
print "Enter Starting Port (Min: 0): ";
chop ($start_port = <stdin>);
&check_port($start_port);
print "Enter Ending Port (Max: 65535): ";
chop ($end_port = <stdin>);
&check_port($end_port);

foreach ($port = $start_port ; $port <= $end_port ; $port++) 
{

	print "\rPort Scan Started";
	

	$socket = IO::Socket::INET->new(PeerAddr => $target , PeerPort => $port , Proto => 'tcp' , Timeout => 1);
	

	if( $socket )
	{
		print "\r [+][$port] Open       \n" ;
	}
	else
	{
		
	}
}
print "\n\n Scan Finished. Open Ports Listed. \n";

exit (0);

sub check_port {
    my $port = shift;

    if ($port =~ /\D+/ or $port > 65535 or $port < 0) {
        print "Invalid Port Number : $port\n";
        exit 1;
    }
}
