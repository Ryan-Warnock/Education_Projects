#!/usr/bin/env perl

package Raindrops;

use warnings;
use strict;

sub convert
{
	my $input = shift;

	my $output;

	if( $input % 3 == 0 )
	{
		$output .= "Pling";
	}

	if( $input % 5 == 0 )
	{
		$output .= "Plang";
	}

	if( $input % 7 == 0 )
	{
		$output .= "Plong";
	}

	return $output || $input;
}

1;
