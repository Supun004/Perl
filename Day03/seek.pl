#!/usr/bin/perl

use Fcntl qw( SEEK_SET);

open IN, "<./names_groups.txt";
seek(IN, 2, SEEK_SET);

$position = tell(IN);

print "Position with in file $postion\n";

read IN, $temp, 5;

print "read from 2-5 is '$temp'\n";

$position = tell (IN);

print "Position with in file $position\n";
