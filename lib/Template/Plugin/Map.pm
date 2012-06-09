package Template::Plugin::Map;

# ABSTRACT: map VMethod for Template::Tookit

use strict;
use warnings;
use base 'Template::Plugin::VMethods';

our @LIST_OPS = (map => \&map_list);

sub map_list {
    my ($list, $method) = @_;

    [map { $_->$method } @$list];
}

1;

__END__

=begin Pod::Coverage

map_list

=end Pod::Coverage

=head1 SYNOPSIS

  [% USE Map %]
  [% list.map('method').join(', ') %]

=head1 DESCRIPTION

This module is a Template Tooklit plugin that provides a C<map> VMethod.  This
just provides a way to map a method call to a list of objects.

=head1 SEE ALSO

L<Template>
