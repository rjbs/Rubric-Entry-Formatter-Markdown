use strict;
use warnings;

package Rubric::Entry::Formatter::Markdown;
# ABSTRACT: format entries with Markdown (duh!)

=head1 DESCRIPTION

This formatter will use Markdown (specifically, Text::Markdown) to format
entries into HTML.

Configuration for the formatter is given to the Text::Markdown constructor,
with the exception of the C<multimarkdown> option.  If given and true, it will
cause the formatter to use L<Text::MultiMarkdown> instead of L<Text::Markdown>.

=cut

use Text::Markdown ();
use Text::MultiMarkdown ();

=method as_html

=method as_text

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

1;
