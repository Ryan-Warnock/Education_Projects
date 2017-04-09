#!/usr/bin/env perl

package ETL;

use warnings;
use strict;

sub transform
{
	my $input = shift;
	my %in = %$input;
	my %out;

	while( my($key, $value) = each(%in) )
	{
		$out{lc($_)} = $key for @$value;
	}

	return \%out;
}

1;
