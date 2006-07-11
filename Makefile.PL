use strict;
use warnings;

use inc::Module::Install;

name          ('Rubric-Entry-Formatter-Markdown');
author        ('Ricardo SIGNES <rjbs@cpan.org>');
license       ('perl');
version_from  ('lib/Rubric/Entry/Formatter/Markdown.pm');

requires('Rubric'         => 0.13_02);
requires('Text::Markdown' => '1.0.3');

WriteAll();
