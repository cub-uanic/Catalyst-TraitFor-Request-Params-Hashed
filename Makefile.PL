use strict;
use warnings;
use inc::Module::Install;
use Module::Install::AuthorTests;
use Module::Install::AuthorRequires;

license 'perl';

name 'Catalyst-TraitFor-Request-Params-Hashed';
all_from 'lib/Catalyst/TraitFor/Request/Params/Hashed.pm';
author q{Oleg Kostyuk <cub@cpan.org>};

requires 'Catalyst' => '5.80';
requires 'Moose';
requires 'MooseX::Types';
requires 'MooseX::Types::Moose';
requires 'namespace::autoclean';

test_requires 'Test::More';

author_requires 'Test::EOL' => '0.3';
author_requires 'Test::NoTabs';
author_requires 'Test::Pod'           => '1.14';
author_requires 'Test::Pod::Coverage' => '1.08';

resources repository => 'http://github.com/cub-uanic/c-t-request-params-hashed/';

tests 't/*.t';
author_tests 't/author';

if ($Module::Install::AUTHOR) {
    system("pod2text lib/Catalyst/TraitFor/Request/Params/Hashed.pm > README") and die $!;
}

WriteAll;

