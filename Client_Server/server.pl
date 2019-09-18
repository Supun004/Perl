#!/usr/bin/perl

# Filename : server.pl

use strict;
use warnings;

use Socket;

#use port 7890 as default

my $port = shift || 7890;
my $proto = getprotobyname('tcp');
my $server = "192.168.8.105"; # Host IP running the server

#create a socket, make it reusable
socket(SOCKET, PF_INET, SOCK_STREAM, $proto) or die "Can't open socket  $!\n";

#bind to a port, then listen
bind(SOCKET, pack_sockaddr_in($port, inet_aton($server))) or die "Can't bind to port $port! \n";

listen(SOCKET, 5) or die "listen: $!";

print "Server started on port $port\n";

#accepting a connection
my $client_addr;
while($client_addr = accept(NEW_SOCKET, SOCKET)){
    #Send them a message, close connection
    #my $name = gethostbyaddr($client_addr, AF_INET);

    my $name = "client";
    print NEW_SOCKET "Hello $name";
    print "Connection recieved from $name\n";
    close NEW_SOCKET;
}