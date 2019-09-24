#!/usr/bin/perl

#using the Package Calculator

use Calculator;

use Try::Tiny;

#Defining values to the variables

$a = 10;
$b = 0;

# Subroutine call

try {
    Calculator::devide($a, $b);
}
catch{
    warn "\n-----------ERROR-------------";
    warn "\n$_";
}
finally{
    if (0_){
        print "\nDivide died with: 0_\n";
    }
    else{
        print "\nDivide executed without error";
    }
};