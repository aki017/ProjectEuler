#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my @max = (0, 0, 0);

for my $i(100..999)
{
    for my $j(100..999)
    {
        my $a = "".( $i * $j );
        @max = ($a, $i, $j) if (&isPalindromic($a) && $a > $max[0]);
    }
}
say $max[0];
say $max[1];
say $max[2];

sub isPalindromic{
    my $str = shift;
    return ($str ne reverse($str))? 0: 1;
}
