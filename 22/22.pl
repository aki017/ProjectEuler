#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

open(my $fh, "<", "names.txt") or die;
my $data = <$fh>;
close $fh;

my @name = map{ $_ =~s/"(.*)"/$1/g ; $_ } split(/,/, $data);

@name = sort { $a cmp $b } @name;

my $sum = 0;

my $count = 0;
for my $i(@name)
{
    $count++;
    $sum += $count * getval($i);
}
say $sum;

sub getval{
    my $str = shift;
    my $sum = 0;
    for my $c (split(//, $str))
    {
        $sum += ord($c) - ord("A") + 1;
    }
    $sum;
}
