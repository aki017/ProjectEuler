#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use lib '../lib';
use Factor;

my $num = 0;
for (my $i = 1;;$i++)
{
    $num += $i;
    my %factor = factor($num);

    my $n = 1;
    for my $j(keys %factor)
    {
        $n *= $factor{$j}+1;
    }
    if ($n >= 500)
    {
        say $num;
        last;
    }
}

