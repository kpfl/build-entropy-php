package Package::memcached;

use strict;
use warnings;

use base qw(Package::peclbase);

our $VERSION = '1.0.0';

sub init {
	my $self = shift;
	$self->SUPER::init(@_);
	$self->{PACKAGE_NAME} = 'memcached';
	$self->{VERSION} = $VERSION;
}

sub configure_flags {
	my $self = shift @_;
	return join " ", (
		$self->SUPER::configure_flags(@_),
        '--with-libmemcached-dir=' . $self->config()->prefix()
	);
}


return 1;