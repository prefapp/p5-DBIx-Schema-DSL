package DBIx::Schema::DSL;
use 5.008_001;
use strict;
use warnings;

our $VERSION = '0.01';


1;
__END__

=head1 NAME

DBIx::Schema::DSL - Perl extention to do something

=head1 VERSION

This document describes DBIx::Schema::DSL version 0.01.

=head1 SYNOPSIS

    use parent 'DBIx::Schema::DSL';

    create_table user => sub {
        column  'id', 'integer';
        integer 'age', default => 0;
        string  'name', default => '', limit => 255, null => 0;
        text    'detail', default => 'ok';
        datetime 'created_at';
        date     'last_login_date';

        add_index        hoge => [qw/hoge fuga/];
        add_index        hoge => [qw/hoge fuga/];
        add_unique_index fuga => [qw/id updated_at/];

        set_primary_key 'id', 'created_at';

        add_options({
            ENGINE          => 'InnoDB',
            'CHARACTER SET' => 'utf8',
        });
    };

=head1 DESCRIPTION

# TODO

=head1 INTERFACE

=head2 Functions

=head3 C<< hello() >>

# TODO

=head1 DEPENDENCIES

Perl 5.8.1 or later.

=head1 BUGS

All complex software has bugs lurking in it, and this module is no
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 SEE ALSO

L<perl>

=head1 AUTHOR

Masayuki Matsuki E<lt>y.songmu@gmail.comE<gt>

=head1 LICENSE AND COPYRIGHT

Copyright (c) 2013, Masayuki Matsuki. All rights reserved.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
