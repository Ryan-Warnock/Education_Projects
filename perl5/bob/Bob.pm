#
# This is a SKELETON file and has been provided to enable you to get working on the
# first exercise more quickly.
#

use 5.006;
use strict;
use warnings;

package Bob;

our $VERSION = '1.000';

use Exporter 5.57 qw(import);

our @EXPORT_OK = qw(hey);

sub hey
{
	my $input = shift;

	if( $input =~ /[A-Z]+/ && $input !~ /[a-z]/ )
	{
		my $return = "Whoa, chill out!";
	}
	elsif( $input =~ /\? *$/ )
	{
		my $return = "Sure.";
	}
	elsif( $input =~ /[a-z]/ || $input =~ /[A-Z]/ || $input =~ /[0-9]/ )
	{
		my $return = "Whatever.";
	}
	else
	{
		my $return = "Fine. Be that way!";
	}
}

1;
