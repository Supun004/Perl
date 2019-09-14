#!/usr/bin/perl

use warnings;
use strict;

use Time::HiRes qw(time);

my @array  = ( 1 .. 10000 );
my @unsortedarray = reverse(@array);
#print @unsortedarray;

my $start = time;
#print "$start\n";
buble_sort(@unsortedarray);
my $duration = time - $start;

print "Total Execution time: $duration\n";

my $start = time;
#print "$start\n";
selection_sort(@unsortedarray);
my $duration = time - $start;

print "Total Execution time: $duration\n";



my $start = time;
#print "$start\n";
insertion_sort(@unsortedarray);
my $duration = time - $start;

print "Total Execution time: $duration\n";


sub buble_sort{

    my @array = @_;

    my $array_len = $#array; # Array length

    # print @array;
    # print "\narray len: $array_len\n";

    for my $i (1 .. $array_len){
        for my $j (0 .. $array_len-$i){
            
            if($array[$j] > $array[$j+1]){
                @array[$j,$j+1] = @array[$j+1, $j];
                # print @array;
                # print "\n";
            }
            # print "################\n";
        }

    # print @array;
    # print "\n";

    }
}

sub selection_sort{
    my @array = @_;

    my $array_len = $#array;

   
    # print @array;
    # print "\n";
    for my $i (0 .. $array_len){
         my $min = $array[$i];

        for my $j ($i .. $array_len){

            if($min > $array[$j]){
                $min = $array[$j];
                $array[$j] = $array[$i];
                $array[$i] = $min;
                    # print @array;
                    # print "\n";

            }
        }
        # print "################\n";
    }
    # print @array;
    # print "\n";

}

sub insertion_sort{
    my @array = @_;

    my $array_len = $#array;

    for my $i (0 .. $array_len-1 ){

        for my $j (0 .. $i){
            my $temp;
            if($array[$j]> $array[$i+1] ){
                $temp = $array[$j];
                $array[$j] = $array[$i+1];
                $array[$i+1] = $temp;
            }

            # print @array;
            # print "\n";

        }

        
        # print "##################\n";
    }
    


}