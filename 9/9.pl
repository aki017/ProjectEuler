#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

for my $a(1..997)
{
    for my $b(1..997)
    {
        next if ($a==$b);
        my $c = 1000 - $a - $b;
        next if ($a > $b || $b > $c);
        say $a, ", ", $b, ", ", $c, " = ", $a*$b*$c if ($a**2 + $b**2 == $c**2)
    }
}


