#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $sum = 1;
my %a;
for my $i(1..20)
{
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



sub factor{
    my $num = shift;
    my %a = (); 
    while ($num != 1)
    {
        for my $i(2..$num)
        {
            if( $num % $i==0)
            {
                $a{$i}=0 unless defined($a{$i});
                $a{$i}++;
                $num /= $i;
                last;
            }
        }
    }
    delete $a{1};
    return %a;
}
