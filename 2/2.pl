#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $MAX = 4000000;

my @num = (2, 1);
my $sum = 0;

while($num[0]<$MAX)
{
    $sum += $num[0] if $num[0]%2==0;
    @num = ($num[0]+$num[1], $num[0]);
}
say $sum;

