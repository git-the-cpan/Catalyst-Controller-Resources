package Catalyst::Helper::Controller::Resources;

use strict;
use warnings;

sub mk_compclass {
    my ($self, $helper, $belongs_to) = @_;

    $helper->{belongs_to} = $belongs_to if $belongs_to;
    $helper->render_file('compclass', $helper->{file});
};

sub mk_comptest {
    my ($self, $helper) = @_;

    $helper->render_file('test', $helper->{test});
};

=head1 NAME

Catalyst::Helper::Controller::Resources - Helper for Controller::Resources

=head1 SYNOPSIS

    script/create.pl controller <ControllerName> Resources [ BelongsToName ]

=head1 METHODS

=over 4

=item mk_complass

Makes a Resources Controller class.

=item mk_comptest

Makes a Resources Controller test.

=back

=head1 AUTHOR

NAKAGAWA Masaki E<lt>masaki@cpan.orgE<gt>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 SEE ALSO

L<Catalyst::Controller::Resources>

=begin pod_to_ignore

=cut

1;
__DATA__

__compclass__
package [% class %];

use strict;
use warnings;
use base 'Catalyst::Controller::Resources';

[% IF belongs_to -%]
__PACKAGE__->config(belongs_to => '[% belongs_to %]');
[% END -%]

=head1 NAME

[% class %] - Catalyst Collection Resource Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut

=head2 list

called by GET Collection Resource

=cut

sub list {
    my ($self, $c[% IF belongs_to %], $parent_id[% END %]) = @_;
}

=head2 create

called by POST Collection Resource

=cut

sub create {
    my ($self, $c[% IF belongs_to %], $parent_id[% END %]) = @_;
}

=head2 show

called by GET Member Resource

=cut

sub show {
    my ($self, $c[% IF belongs_to %], $parent_id[% END %], $id) = @_;
}

=head2 update

called by PUT Member Resource

=cut

sub update {
    my ($self, $c[% IF belongs_to %], $parent_id[% END %], $id) = @_;
}

=head2 destroy

called by DELETE Member Resource

=cut

sub destroy {
    my ($self, $c[% IF belongs_to %], $parent_id[% END %], $id) = @_;
}

=head2 post

called by GET form for describing a new Resource

=cut

sub post {
    my ($self, $c[% IF belongs_to %], $parent_id[% END %]) = @_;
}

=head2 edit

called by GET form for describing a Member Resource

=cut

sub edit {
    my ($self, $c[% IF belongs_to %], $parent_id[% END %], $id) = @_;
}

=head1 AUTHOR

[% author %]

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;

__test__
use strict;
use Test::More tests => 1;

use_ok('[% class %]');

__END__

