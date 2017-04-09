#!/usr/bin/env perl

use warnings;
use strict;

package Word;

#Clever way of creating the hash, borrowed from RigrmRtis
my %scores;
$scores{$_} = 1 for qw(A E I O U L N R S T);
$scores{$_} = 2 for qw(D G);
$scores{$_} = 3 for qw(B C M P);
$scores{$_} = 4 for qw(F H V W Y);
$scores{$_} = 5 for qw(k);
$scores{$_} = 8 for qw(J X);
$scores{$_} = 10 for qw(Q Z);


sub new
{
	my ($self, $word) = @_;

	bless $word, $self;
}

sub score
{
	my $self = shift;
	my $word = shift;
	my $total;

	while( my($letter, $score) = each(%scores) )
	{
		while( $word =~ /$letter/g )
		{
			$total += $score;
		}
	}

	return $total;
}

1;
