use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME          => 'Rubric::Entry::Formatter::Markdown',
  VERSION_FROM  => 'lib/Rubric/Entry/Formatter/Markdown.pm',
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM     => {
    'Rubric'         => 0.13_02,
    'Text::Markdown' => '1.0.3',
    'Text::MultiMarkdown' => 0,
  },
  (eval { ExtUtils::MakeMaker->VERSION(6.46) }
    ? (META_MERGE => {
        resources => {
          Repository => 'http://github.com/rjbs/rubric-entry-formatter-markdown'
        }
      })
    : ()
  ),
);
