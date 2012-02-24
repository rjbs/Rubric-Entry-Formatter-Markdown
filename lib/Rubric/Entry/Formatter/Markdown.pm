use strict;
use warnings;

package Rubric::Entry::Formatter::Markdown;
our $VERSION = '0.554';

=head1 NAME

Rubric::Entry::Formatter::Markdown - format entries with Markdown (duh!)

=head1 VERSION

version 0.554

=head1 DESCRIPTION

This formatter will use Markdown (specifically, Text::Markdown) to format
entries into HTML.

Configuration for the formatter is given to the Text::Markdown constructor,
with the exception of the C<multimarkdown> option.  If given and true, it will
cause the formatter to use L<Text::MultiMarkdown> instead of L<Text::Markdown>.

=cut

use Text::Markdown ();
use Text::MultiMarkdown ();

=head1 METHODS

=head2 C< as_html >

=head2 C< as_text >

=cut

sub as_html {
  my ($class, $arg, $config) = @_;
  my %config = %$config;
  my $md = (delete $config{multimarkdown})
         ? 'Text::MultiMarkdown'
         : 'Text::Markdown';

  return $md->new(%$config)->markdown($arg->{text});
}

sub as_text {
  my ($class, $arg) = @_;

  return $arg->{text};
}

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
