#!/usr/bin/perl

$a = 10;
*b = *a;

$b++; # Increment $a identicaly through the typeglob
$r = \$a;
$$r++; # Increment $a indirectly through the reference

print $a." ".$b. " ".$$r. "\n";

@array = (10,20);

DoubleEachEntry(
*array
); #@array and @copy are identical

print "@array \n";

sub DoubleEachEntry{
    local
    *copy = shift; #create a local alias
    foreach $element (@copy){
        $element *= 2;
        
    }

}