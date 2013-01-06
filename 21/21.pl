#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use lib '../lib';
use Factor;

my $sum = 0;
for my $i(2..9999)
{
    $sum += $i if isAmicable($i);
}
say $sum;

sub isAmicable{
    my $i = shift;
    return $i==sumOfDivisor(sumOfDivisor($i)) && $i!=sumOfDivisor($i);
}
