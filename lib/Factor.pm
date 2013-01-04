use 5.010;
use strict;
use warnings;

sub factor{
    my $num = shift;
    my %a = (); 
    while ($num != 1)
    {
        for my $i(2..int(sqrt($num)+1), $num)
        {
            if( $num % $i==0)
            {
                $a{$i}=0 unless defined($a{$i});
                $a{$i}++;
                $num /= $i;
                last;
            }
        }
    }
    delete $a{1};
    return %a;
}

sub isFactor{
    my $num = shift;
    while ($num != 1)
    {
        for my $i(2..int(sqrt($num)+1), $num)
        {
            if( $num % $i==0)
            {
                return 1 if ( $num == $i);
                return 0;
            }
        }
    }
}
1;
