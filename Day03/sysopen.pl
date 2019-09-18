#!/usr/bin/perl

use strict;
use Fcntl;

my $filepath = 'names_groups.txt';

sysopen(DATA, $filepath, O_RDWR, 0755)
    or die "$filepath cannot be opened. $!";

while(<DATA>){
    print "$_";
}