package calculator;

use strict;
use warnings;

sub new{
    my ($class, $args) = @_;
    my $self = bless {
                    number01 => $args->{number01},
                    number02 => $args->{number02},
                    operator => $args->{operator}
                    }, $class;

}

sub get_results{
    my $self = shift;
    my $result = 0;

    if($self->{operator} eq '/'){
        if($self->{number02} == 0){
            print "Invalide Operation. Cannot divide by $self->{number02}";
            exit;
        }
        $result = $self->{number01}/$self->{number02};
    }
    elsif($self->{operator} eq '+'){
        $result = $self->{number01}+$self->{number02};
    }
    elsif($self->{operator} eq '-'){
        $result = $self->{number01}-$self->{number02};
    }
    elsif($self->{operator} eq '*'){
        $result = $self->{number01}*$self->{number02};
    }
    else{
        print "Invalide Operator: $self->{operator}";
        exit;
    }
    
    return $result;

}

1;