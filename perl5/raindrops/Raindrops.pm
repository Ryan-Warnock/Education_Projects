#!/usr/bin/env perl

package Raindrops;

use warnings;
use strict;

sub convert
{
	my $input = shift;

	my $output;

	$output .= "Pling" if $input % 3 == 0;

	$output .= "Plang" if $input % 5 == 0;

	$output .= "Plong" if $input % 7 == 0;

	return $output || $input;
}

1;
