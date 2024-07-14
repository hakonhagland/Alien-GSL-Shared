# NAME

Alien::GSL::Shared - Easy installation of the GSL library (shared version)

# SYNOPSIS

```perl
# Build.PL
use Alien::GSL::Shared;
use Module::Build 0.28; # need at least 0.28

my $builder = Module::Build->new(
  configure_requires => {
    'Alien::GSL::Shared' => '1.00', # first release
  },
  ...
  extra_compiler_flags => Alien::GSL::Shared->cflags,
  extra_linker_flags   => Alien::GSL::Shared->libs,
  ...
);

$builder->create_build_script;


# lib/MyLibrary/GSL.pm
package MyLibrary::GSL;

use Alien::GSL::Shared; # dynaload gsl

...
```

# DESCRIPTION

Provides the Gnu Scientific Library (GSL) for use by Perl modules, installing it if necessary.
This module relies heavily on the [Alien::Base](https://metacpan.org/pod/Alien%3A%3ABase) system to do so.
To avoid documentation skew, the author asks the reader to learn about the capabilities provided by that module rather than repeating them here.

The difference between this module and [Alien::GSL](https://metacpan.org/pod/Alien::GSL)
is that this module will download and install a shared version of the GSL library, whereas `Alien::GSL` will install a static version of the GSL library. The shared version is needed by `Math::GSL`, see [Alien::GSL-#17](https://github.com/PerlAlien/Alien-GSL/issues/17). It will also reduce the size of the generated Perl XS libraries (`.so`, `.xs.dll`).

# SEE ALSO

- [Alien::Base](https://metacpan.org/pod/Alien%3A%3ABase)
- ["GNU SCIENTIFIC LIBRARY" in PDL::Modules](https://metacpan.org/pod/PDL%3A%3AModules#GNU-SCIENTIFIC-LIBRARY)
- [PerlGSL](https://metacpan.org/pod/PerlGSL)
- [Math::GSL](https://metacpan.org/pod/Math%3A%3AGSL)

# AUTHORS

- Joel Berger, <joel.a.berger@gmail.com>
- Håkon Hægland, <hakon.hagland@gmail.com>

# COPYRIGHT AND LICENSE

Copyright (C) 2011-2015 by Joel Berger

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.
