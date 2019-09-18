#!/usr/bin/perl

sub dispSymbols{
    my ($hashRef) = shift;
    my (%symbols);
    my (@symbols);

    %symbols = %{$hashRef};
    @symbols = sort(keys(%symbols));

    foreach (@symbols){
        printf("%--10.10s| %s\n", $_, $symbols{$_});
    }

}

dispSymbols(\%Foo::);

package Foo;

$bar = 2;
sub baz{
    $bar++;
}
@bar1 = (1, 2, 3);