#!/usr/bin/perl
use warnings;
use strict;
use v5.10;

our $foo = "foo";
our $bar;

say ref *foo{SCALAR};
say ${*foo{SCALAR}};

*bar = *foo;
say $bar;
$bar = 'egg';
say $foo;