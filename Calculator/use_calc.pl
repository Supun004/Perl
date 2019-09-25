#!/usr/perl/bin

#set PERL5LIB=D:\SLT_Trainings\AdvancePerl\Perl\Perl\Calculator\

use calculator;

use strict;
use warnings;

my $my_cal = calculator->new({
                            number01=> "100",
                            number02=> "23",
                            operator => "-"});

print $my_cal->get_results();

print calculator::get_results();