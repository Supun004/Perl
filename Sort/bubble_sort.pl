#!/usr/bin/perl

use warnings;
use strict;

use Time::HiRes qw(time);

my @array  = ( 1 .. 1000 );
my @unsortedarray = reverse(@array);
#print @unsortedarray;

my $start = time;
print "$start\n";
buble_sort(@unsortedarray);
my $duration = time - $start;

print "Total Execution time: $duration\n";


sub buble_sort{

    my @array = @_;

    my $array_len = $#array;

    print @array;
    print "\narray len: $array_len\n";

    for my $i (1 .. $array_len){
        for my $j (0 .. $array_len-$i){
            
            if($array[$j] > $array[$j+1]){
                @array[$j,$j+1] = @array[$j+1, $j];
            }
        }

    print @array;
    print "\n";

    }
}
