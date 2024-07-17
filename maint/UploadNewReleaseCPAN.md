# Uploading a new Release to CPAN

- Bump the version number in `lib/Math/GSL/Alien.pm`
- Update the `Changes` document
- Run `perl Makefile.PL; make; make dist`
- Go to the [PAUSE upload server](https://pause.perl.org/pause/authenquery?ACTION=add_uri)
  and upload the generated tar ball.
