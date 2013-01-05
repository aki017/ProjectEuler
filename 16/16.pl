#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my @num = ( 0, 1);
for my $i(1..1000)
{
    my $l = $#num;
    for my $j(0..$l)
    {
        my $index = $l - $j;
        $num[$index]*=2;
        if ($num[$index]>=10)
        {
            $num[$index+1]+=int($num[$index]/10);
            $num[$index]%=10;
        }
    }
}
    my $sum;
    for my $i(1..$#num)
    {
        $sum += $num[$i];
    }
    say $sum;
