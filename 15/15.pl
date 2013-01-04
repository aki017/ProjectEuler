#!/usr/bin/env perl

use 5.010;
use strict;
use warnings;
use bigint;

my ($a, $b) = (1, 1);
$a *= $_ for(21..40);
$b *= $_ for( 1..20);
say ($a/$b);
