#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $MAX = 2_000_000;
my @prime = (0, 0);

for my $i(0..$MAX)
{
    next if defined($prime[$i]);
    $prime[$i] = 1;
    for my $j(2..int($MAX/$i))
    {
        $prime[$i*$j]=0;
    }
}

my $sum = 0;
for my $i(0..$MAX)
{
    $sum += $i if $prime[$i]==1
}

say $sum
