#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

my @l1 = qw/one    two    three    four     five    six     seven     eight    nine     ten/;
my @l2 = qw/eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen ten/;
my @l3 = qw/one    twenty thirty   forty   fifty   sixty   seventy   eighty   ninety   ten/;
unshift @l1, "";
unshift @l2, "";
unshift @l3, "";
my (@ll1, @ll2, @ll3);
for my $i(0..10)
{
    @ll1 = map{ length $_ }@l1;
    @ll2 = map{ length $_ }@l2;
    @ll3 = map{ length $_ }@l3;
}
my $sum = 0;
my $str = "";
for my $i(1..999)
{
    if($i >= 100)
    {
        my $t = int($i /100);
        $sum += $ll1[$t] + length("hundred");
        $sum += length("and") if ($i%100 != 0);
        $str .= $l1[$t] . " hundred ";
        $str .= "and" if ($i%100 != 0);
    }
    my $t = $i % 100;
    if($t == 0)
    {
    }elsif($t <= 10)
    { 
        $sum += $ll1[$t];
        $str .= $l1[$t];
    }elsif($t <= 19)
    {
        $sum += $ll2[$t%10];
        $str .= $l2[$t%10];
    }else
    {
        $sum += $ll3[int($t/10)] + $ll1[$t%10];
        $str .= $l3[int($t/10)] ."-" . $l1[$t%10];
    }
    $str .= "\n";
}
$sum += length("one") + length("thousand");
$str .= "one" . " thousand";
#say $str;
say $sum;
