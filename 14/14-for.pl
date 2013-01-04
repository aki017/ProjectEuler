#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
use bigint;

my $max = 0;

my @c = (0, 0);

for my $i (500_000..1_000_000)
{
    $c[$i] = calc($i);
    $max = $c[$i] if $c[$i] > $max;
}
say $max;

sub calc{
    my $num = shift;
    my $len = 0;
    while($num != 1)
    {
        if(defined($c[$num]))
        {
            $len += $c[$num];
            last;
        }
        $len += 1;
        $num = ($num %2)? $num *3 +1 : $num/2;
    }
    $len
}
