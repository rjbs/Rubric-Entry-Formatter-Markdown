use strict;
use warnings;

package Rubric::Entry::Formatter::Markdown;
our $VERSION = '0.552';

=head1 NAME

Rubric::Entry::Formatter::Markdown - format entries with Markdown (duh!)

=head1 VERSION

 $Id$

version 0.552

=head1 DESCRIPTION

This formatter will use Markdown (specifically, Text::Markdown) to format
entries into HTML.

=cut

use Text::Markdown;

=head1 METHODS

=head2 C< as_html >

=head2 C< as_text >

=cut

sub as_html {
  my ($class, $arg, $config) = @_;
  return Text::Markdown::markdown($arg->{text}, $config);
}

sub as_text {
  my ($class, $arg) = @_;

  return $arg->{text};
}

=head1 TODO

=head1 AUTHOR

Ricardo SIGNES, C<< <rjbs@cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-rubric@rt.cpan.org>, or
through the web interface at L<http://rt.cpan.org>. I will be notified, and
then you'll automatically be notified of progress on your bug as I make
changes.

=head1 COPYRIGHT

Copyright 2005-2006 Ricardo SIGNES.  This program is free software;  you can
redistribute it and/or modify it under the same terms as Perl itself.

=cut

1;
