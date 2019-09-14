#!/usr/bin/perl

use warnings;
use strict;

my @a = (1 .. 5);
my $ar = \@a;

my $i = 0;

for (@$ar){
	print("$ar->[$i++]\n");
}