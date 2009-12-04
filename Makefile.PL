use inc::Module::Install;

name     'Catalyst-TraitFor-Request-Params-Hashed';
all_from 'lib/Catalyst/TraitFor/Request/Params/Hashed.pm';
author   q{Oleg Kostyuk <cub@cpan.org>};
license  'perl';

build_requires 'Test::More';

auto_install;

WriteAll;

