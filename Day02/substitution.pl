#!/usr/bin/perl

$string1 = 'THe cat sat on the mat';
$string2 = 'THe cat sat on the mat';
$string1 =~ s/cat/dog/;
$string2 =~ tr/a/o/;

print "$string1\n";
print "$string2\n";

$string3 = 'the cat sat on the mat';
$string3 =~ tr/a-z/b/d;

print "$string3\n";

$string = 'food';
$string = 'food';
$string =~ tr/a-z/a-b/s;

print "$string\n";