use Test2::V0 -no_srand => 1;
use Alien::GSL::Shared;
use Test::Alien::Diag qw( alien_diag );

alien_diag 'Alien::GSL::Shared';
ok 1;

done_testing;
