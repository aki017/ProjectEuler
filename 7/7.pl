#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;

use lib '../lib';
use Factor;

my $MAX = 10001;
my $num = 0;
my $i;
for ($i=1;$num<$MAX;$i++)
{
    $num++ if isFactor($i);
}
say ($i-1);
