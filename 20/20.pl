#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
use bigint;

my $sum = 1;
my $a =0;

# for (my $i=0; $i<1000; $i++)
for my $i(1..100)
{
    $sum *= $i;
}

for my $i(split(//, "$sum"))
{
    $a += $i-0;
}
say $a;
