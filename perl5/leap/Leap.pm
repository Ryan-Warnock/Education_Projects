#!/usr/bin/env perl

package Leap;

use strict;
use warnings;

sub is_leap
{
	my $input = shift;

	my $return = 0;

	if( $input % 4 == 0 )
	{
		if( $input % 100 != 0 )
		{
			my $return = 1;		
		}
		elsif ( $input % 400 == 0 )
		{
			my $return = 1;
		}
	}
}

1;
