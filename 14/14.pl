#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
no warnings 'recursion';
use bigint;

my %c;
my $max = 0;
my $maxi = 0;

for my $i (500_000..1_000_000)
{
    my $a = calc($i);
    if ($a > $max)
    {
        $max = $a;
        $maxi = $i;
    }
}
say $max;
say $maxi;

sub calc{
    my $num = shift;
    return 1 if $num==1;
    return $c{$num} if defined($c{$num});
    return calc(($num%2)?3*$num+1:$num/2) +1 if ($num > 1_000_000);
    $c{$num} = calc(($num%2)?3*$num+1:$num/2) +1;
    return $c{$num};
}
