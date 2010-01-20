package Test::MooseX::Types::Locale::Country::Getopt;


# ****************************************************************
# pragma(s)
# ****************************************************************

use strict;
use warnings;


# ****************************************************************
# superclass(es)
# ****************************************************************

use base qw(
    Test::MooseX::Types::Locale::Country::Base::Getopt
);


# ****************************************************************
# general dependency(-ies)
# ****************************************************************

use Test::More;


# ****************************************************************
# mock class(es)
# ****************************************************************

{
    package Foo;

    use Moose;
    use MooseX::Types::Locale::Country qw(
        NumericCountry
        CountryName
    );

    with qw(
        MooseX::Getopt
    );

    use namespace::clean -except => 'meta';

    has 'numeric'
        => ( is => 'rw', isa => NumericCountry);
    has 'name'
        => ( is => 'rw', isa => CountryName);

    __PACKAGE__->meta->make_immutable;
}


# ****************************************************************
# return true
# ****************************************************************

1;
__END__


# ****************************************************************
# POD
# ****************************************************************

=pod

=head1 NAME

Test::MooseX::Types::Locale::Country::Getopt - Testing subclass for MooseX::Types::Locale::Country

=head1 SYNOPSIS

    use lib 't/lib';
    use Test::MooseX::Types::Locale::Country::Getopt;

    Test::MooseX::Types::Locale::Country::Getopt->runtests;

=head1 DESCRIPTION

This module tests L<MooseX::Getopt|MooseX::Getopt>'s type mapping for
L<MooseX::Types::Locale::Country|MooseX::Types::Locale::Country>.

=head1 SEE ALSO

=over 4

=item * L<MooseX::Getopt|MooseX::Getopt>

=item * L<MooseX::Types::Locale::Country|MooseX::Types::Locale::Country>

=item * L<Test::MooseX::Types::Locale::Country::Fast::Getopt|Test::MooseX::Types::Locale::Country::Fast::Getopt>

=back

=head1 AUTHOR

=over 4

=item MORIYA Masaki (a.k.a. Gardejo)

C<< <moriya at cpan dot org> >>,
L<http://ttt.ermitejo.com/>

=back

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2009 by MORIYA Masaki (a.k.a. Gardejo),
L<http://ttt.ermitejo.com/>.

This library is free software;
you can redistribute it and/or modify it under the same terms as Perl itself.
See L<perlgpl|perlgpl> and L<perlartistic|perlartistic>.

The full text of the license can be found in the F<LICENSE> file
included with this distribution.

=cut
