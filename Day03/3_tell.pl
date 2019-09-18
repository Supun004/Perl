#!/usr/bin/perl

open (FILE, "names_groups.txt") || die "Unable to open test file";

$char = getc(FILE);
print "First character is $char\n";

$char = getc(FILE);

print "Second Character is $char\n";

$position = tell(FILE);

print "Position with in file $position\n";

close(FILE);