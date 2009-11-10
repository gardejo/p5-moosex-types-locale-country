package Test::MooseX::Types::Locale::Country::Fast;


# ****************************************************************
# pragma(s)
# ****************************************************************

use strict;
use warnings;


# ****************************************************************
# superclass(es)
# ****************************************************************

use base qw(
    Test::MooseX::Types::Locale::Country::Base
);


# ****************************************************************
# general dependency(-ies)
# ****************************************************************

use Test::Exception;
use Test::More;


# ****************************************************************
# mock class(es)
# ****************************************************************

{
    package Foo;

    use Moose;
    use MooseX::Types::Locale::Country::Fast qw(
        CountryCode
        Alpha2Country
        Alpha3Country
        NumericCountry
        CountryName
    );

    use namespace::clean -except => 'meta';

    has 'code'
        => ( is => 'rw', isa => CountryCode);
    has 'alpha2'
        => ( is => 'rw', isa => Alpha2Country);
    has 'alpha3'
        => ( is => 'rw', isa => Alpha3Country);
    has 'numeric'
        => ( is => 'rw', isa => NumericCountry);
    has 'name'
        => ( is => 'rw', isa => CountryName);

    __PACKAGE__->meta->make_immutable;
}


# ****************************************************************
# test(s)
# ****************************************************************

sub test_use : Tests(1) {
    my $self = shift;

    use_ok 'MooseX::Types::Locale::Country::Fast';

    return;
}

sub test_coerce_code : Tests(5) {
    my $self = shift;

    my $mock_instance = $self->mock_instance;

    $self->test_coercion_for
        ('code',    $mock_instance, 'jp');
    $self->test_coercion_for
        ('alpha2',  $mock_instance, 'jp');
    $self->test_coercion_for
        ('alpha3',  $mock_instance, 'jpn');
    $self->test_coercion_for
        ('numeric', $mock_instance, 392);
    $self->test_coercion_for
        ('name',    $mock_instance, 'JAPAN');

    return;
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

Test::MooseX::Types::Locale::Country::Fast - Testing subclass for MooseX::Types::Locale::Country::Fast

=head1 SYNOPSIS

    use lib 't/lib';
    use Test::MooseX::Types::Locale::Country::Fast;

    Test::MooseX::Types::Locale::Country::Fast->runtests;

=head1 DESCRIPTION

This module tests L<MooseX::Types::Locale::Country::Fast>.

=head1 SEE ALSO

=over 4

=item * L<MooseX::Types::Locale::Country::Fast>

=item * L<Test::MooseX::Types::Locale::Country::Base>

=item * L<Test::MooseX::Types::Locale::Country>

=back

=head1 VERSION CONTROL

This module is maintained using git.
You can get the latest version from
L<git://github.com/gardejo/p5-moosex-types-locale-country.git>.

=head1 AUTHOR

=over 4

=item MORIYA Masaki ("Gardejo")

C<< <moriya@cpan.org> >>,
L<http://ttt.ermitejo.com/>

=back

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2009 by MORIYA Masaki ("Gardejo"),
L<http://ttt.ermitejo.com>.

This library is free software;
you can redistribute it and/or modify it under the same terms as Perl itself.
See L<perlgpl> and L<perlartistic>.

=cut
