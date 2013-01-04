#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use lib '../lib';
use Factor;

my $sum = 1;
my %a;
for my $i(1..20)
{
    say $i;
    my %r = factor($i);
    foreach my $j ( keys( %r ) ) {
        $a{$j}=0 unless defined($a{$j});
        $a{$j}=$r{$j} if ( $a{$j} < $r{$j});
    }
}
foreach my $j ( keys( %a ) ) {
    $sum *= $j**$a{$j};
}
say $sum;
