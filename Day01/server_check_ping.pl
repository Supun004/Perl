#!/usr/bin/perl

use 5.0.10;

use Net::Ping;
use IO::Socket;
use IO::select;

# This method will print 'alive' if the server is live
sub pingCheck{
    my $url = $_[0];
    my $p = Net::Ping->new();

    print "$url: ";
    if ($p->ping($url)){
        print "alive\n";
    }
    else{
        print "Not alive\n";
    }

}

my @serverList = ("google.com", "facebook.com", "perlmaven.com");

for my $i (@serverList){
    pingCheck($i);
}
