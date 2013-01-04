#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $sum = 0;

# for (my $i=0; $i<1000; $i++)
for my $i(0..1000-1)
{
    $sum += $i if ( $i%3 == 0 || $i%5 == 0 )
}
say $sum;
