#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my $year  = 1900;
my $month = 0;
my $day   = 1;
my $week  = 1;

my @days = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

my $count = 0;
my @c = (0, 0, 0, 0, 0, 0, 0);
while(1)
{
    last if($year > 2000);
    # say $year, "/", $month+1, "/", $day, "(", $week, ")";
    $count++ if($year >= 1901 && $week == 0 && $day ==1);
    $c[$week]++ if($year >= 1901 && $day ==1);


    
    $day += 1;
    $week = ($week + 1)%7;
    if($day > getdays($month, $year))
    {
        $day = 1;
        $month += 1;
    }
    if($month > 11)
    {
        $month = 0;
        $year += 1;
    }
}
say $count;
sub getdays{
    my $i = shift;
    my $year = shift;
    return $days[$i] if $i!=1;
    return $days[$i]+1 if (($year%4==0 && $year%100 != 0 ) || $year%400==0);
    return $days[$i] ;
}

