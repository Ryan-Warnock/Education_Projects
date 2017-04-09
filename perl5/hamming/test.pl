#!/usr/bin/env perl

use warnings;
use strict;

my $s1 = "AbTCG";
my $s2 = "AaTGG";
my $counter;

my $mask = $s1 ^ $s2;

while ($mask =~ /[\0]/g)
{
	$counter++;
}

print $counter;
