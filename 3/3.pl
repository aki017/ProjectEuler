#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use lib '../lib';
use Factor;

my $max = 0;
my %factor = factor(600851475143);
foreach my $j ( keys %factor ) {
    $max = $j if ($j > $max);
}
say $max;
