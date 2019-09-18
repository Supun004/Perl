#!/usr/bin/perl

package T;

require Exporter;
@ISA = qw/Exporter/;

@EXPORT = qw/funtion/;

use Carp;

sub function{
    confess "Error in module !";

}



function();
1;