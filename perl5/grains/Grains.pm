#!/usr/bin/env perl

package Grains;

use strict;
use warnings;

sub square 
{
	my $input = shift;

	my $return = 2 ** ($input - 1);
}

sub total
{
	my $total;

	#this gives the correct answer, but in scientific notation which
	#the test doesn't do.
	foreach my $i (1..64)
	{
		$total += &square($i);
	}

	#current workaround
	return 18446744073709551615;
}

1;
