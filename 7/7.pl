#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $MAX = 10001;
my $num = 0;
my $i;
for ($i=1;$num<$MAX;$i++)
{
    $num++ if isfactor($i);
    say $num;
}
say ($i-1);

 
sub isfactor{
    my $num = shift;
    while ($num != 1)
    {
        for my $i(2..$num)
        {
            if( $num % $i==0)
            {
                return 1 if ( $num == $i);
                return 0;
            }
        }
    }
}
