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

sub amicable{
    my $i = shift;
    my %factor = factor($i);

    my $a = 1;
    for my $j(keys %factor)
    {
        my $t = 0;
        $t += $j**$_ for(0..$factor{$j});
        $a *= $t;
    }
    $a-$i;
}
sub isAmicable{
    my $i = shift;
    return $i==amicable(amicable($i)) && $i!=amicable($i);
}
