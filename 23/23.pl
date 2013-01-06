#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use lib '../lib';
use Factor;
use Term::ProgressBar;

my $MAX = 28123;
my @abundant = ();
for(1..$MAX)
{
    push(@abundant, $_) if ($_ < sumOfDivisor($_));
}
my %c;
for my $i(0..$#abundant)
{
    my $ix = $abundant[$i];
    for my $j($i..$#abundant)
    {
        my $jx = $abundant[$j];
        $c{$ix+$jx} = 1 if($ix+$jx<=$MAX);
    }
}
my $sum = 0;
$sum += $_ for (keys %c);
say $MAX*($MAX+1)/2-$sum;
