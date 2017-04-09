#!/usr/bin/env perl

package Hamming;

use strict;
use warnings;

sub compute
{
	my $first = shift;
	my $second = shift;
	my $count = 0;

	#exit if the strings aren't equal length
	if( length $first != length $second )
	{
		die "DNA strands must be of equal length";
	}

	#Using ^ returns a string made from the results of an exclusive or on each bit
	#of the numeric value each character.
	my $mask = $first ^ $second;

	#The ^ operator places a null character "\0" when the characters compared are
	#the same. So we do ^\0 to signal when the characted IS NOT a match.
	#The g at the end is so that it will move through the string and not repeat from
	#the start of the string again.
	while( $mask =~ /[^\0]/g )	
	{
		$count++;	
	}

	return $count
}

1;
