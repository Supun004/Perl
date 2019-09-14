#!/usr/bin/perl

use warnings;
use strict;

my $x = 10;

my $xr = \$x;

# change $x via $xr
$$xr = $$xr * 2;

print("$x\n");#20
print("$$xr\n"); #20
print("$xr\n"); #SCALAR (0x4sfadf)
