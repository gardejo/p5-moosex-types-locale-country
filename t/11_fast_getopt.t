#!perl

use strict;
use warnings;

use lib 't/lib';

eval { require MooseX::Getopt; };
if ($@) {
    plan( skip_all => 'MooseX::Getopt required for testing type mapping' );
}

use Test::MooseX::Types::Locale::Country::Fast::Getopt;

Test::MooseX::Types::Locale::Country::Fast::Getopt->runtests;

__END__
