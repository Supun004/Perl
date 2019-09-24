#!/usr/perl/bin
use strict;
use warnings;

use Try::Tiny;

## perl read_write.pl read_from.txt write_to.txt

my $args_count = $#ARGV + 1;

if($args_count !=2){
    print "Invalid number of argumants. Please pass correct values.";
    exit;
}

my $read_from = $ARGV[0];
my $write_to = $ARGV[1];

try {

    open(FH_READ, $read_from) || die ("Could not open $read_from!\n");
    open (my $fh_write, '>>', $write_to) or die "Could not open file '$write_to'$!";

    while (my $record = <FH_READ>){
    
        print $fh_write "$record\n";
    }

}
catch{
    warn "\n-----------ERROR-------------\n";
    warn "\nError  $_";
}
finally{
    close(FH_READ);
    exit;
};

close(FH_READ);
