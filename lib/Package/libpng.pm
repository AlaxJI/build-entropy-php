package Package::libpng;

use strict;
use warnings;

use base qw(Package);

our $VERSION = '1.2.51';

sub base_url {
	return "https://master.dl.sourceforge.net/project/libpng/libpng12/older-releases/1.2.51/";
}

sub packagename {
	return "libpng-$VERSION";
}


sub subpath_for_check {
	return "lib/libpng.dylib";
}


sub configure_flags {
	my $self = shift @_;
	return $self->SUPER::configure_flags(@_) . " --without-x --disable-dependency-tracking";
}


sub php_extension_configure_flags {
	my $self = shift @_;
	my (%args) = @_;
	return "--with-png-dir=" . $self->config()->prefix();
}



1;
