#!/usr/bin/perl

use strict;
use warnings;

use product;

#set PERL5LIB=D:\SLT_Trainings\AdvancePerl\Perl\Perl\Day05\

my $iphone = product->new({
                            serial => "100",
                            name => "iPhone",
                            price => 650.00,
                            model => "7.0.1"});

my $nexus = product->new({
                            serial =>"101",
                            name => "Nexus",
                            price => 299.00});

print $iphone->to_string();
print "----------------------------\n";

print $nexus->to_string();
print "-----------------------------\n";

$iphone->set_name('Nokia');
print $iphone->get_name();
print "\n---before\n";
print $iphone->get_model();
print "\n---after\n";
$iphone->set_model("11.0.0");
print $iphone->get_model();
