#!/usr/bin/perl

## Simple Data Structures

# A Stack

print "Making a Stack\n";

@stack = qw(awk bash chmod);

print "Initial stack:\n @stack \n";

push (@stack, "diff");
print "Push item on stack:\n @stack \n";
$item = "Emacs";

push (@stack, $item);
print "Push item on stack:\n @stack \n";

$top = pop @stack;

print "Popping to of stack: $top\n";
print "Final stack:\n @stack \n\n";

print "---------------------------------";

@links = qw( 2 Null 1);

print "using Pointers\n";

@nodes = qw (finger:Null whois:Null who:Null);

for($i = 0; $i <= $#nodes; $i++){
    $ptr = \$nodes[$i];
    @data = split(/:/, $$prt);
    print "Before: $ptr @data ";
    $data[1] = $links[$i];
    print "-> @data \n";
    $$ptr = join ':', @data;
}

print "\n\n";

print "-----------------------------------";