#!/usr/perl/bin

use Storable;

$a = [100, 200, { 'foo' => 'bar'}];

eval {
    store ($a, 'test.dat');
};
print "Error writing to file $0" if $0;

$a = retrieve('test.dat');

print "\n$a";