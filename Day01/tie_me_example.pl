#!/usr/bin/perl

package MyArray;
#tie with array

sub TIEARRAY {
    print "TYING\n";
    bless [];
}

sub DESTROY{
    print "DESTROYING\n";
}

sub STORE{
    my ($self, $index, $value) = @_;
    print "STORING $value at index $index\n";
    $self[$index] = $value;
}

sub FETCH{
    my ($self, $index) = @_;
    print "FETCHING the value at index $index\n";
    return $self[$index];
}

package main;
$object = tie @x, MyArray; #@x is now a MyArray array;

print "object is a ", ref($object), "\n";

$x[0] = "This is test"; #this will call STORE();

print $x[0], "\n"; #this will call FETCH();

print $object->FETCH(0), "\n";

#untie @x #now @x is a normal array again.