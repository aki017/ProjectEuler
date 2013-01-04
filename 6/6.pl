#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my ($a, $b);
for my $i(1..100)
{
    $a += $i**2;
    $b += $i;
}
$b = $b**2;
say $b-$a;
