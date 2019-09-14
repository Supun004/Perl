#!/usr/bin/perl

use warnings;
use strict;

use Data::Dumper qw(Dumper);

my $filename = shift || 'names_groups.txt';
my %group_of;
my %members_of;

open my $fh, '<', $filename;

while (my $line = <$fh>){
    chomp $line;

    my ($name, $group_str) = split /:/, $line;
    my @groups = split /,/, $group_str;
    $group_of{$name} = \@groups;

    for my $group (@groups){
        push @{ $members_of{$group}}, $name;
    }

}

print Dumper \%group_of;

print "------------------------\n";

print Dumper \%members_of;

print Dumper ${members_of{'Sport'}};
